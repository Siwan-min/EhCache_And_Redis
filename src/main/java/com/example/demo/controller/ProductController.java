package com.example.demo.controller;

import com.example.demo.dao.CommonDAO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.ArrayList;

@EnableCaching
@RestController //(@Controller + @ResponseBocy )
public class ProductController {

    private final static Logger log = LoggerFactory.getLogger(ProductController.class);

    @Autowired
    private CommonDAO dao;

    @Autowired
    CacheManager cacheManager;

    Cache cache;

    JedisPool jedisPool = new JedisPool();
    Jedis jedis = jedisPool.getResource();

    //메인 화면 mapping
    @RequestMapping("/main")
    public ModelAndView login(ModelAndView mv){
        mv.setViewName("main.jsp");
        return mv;
    }

    //EhCache 삭제
    @RequestMapping("/")
    public void deleteCache(){

        //EhCache 캐시 삭제
        cache = cacheManager.getCache("member");
        cache.clear();

        //레디스 캐시 삭제
        jedis.flushAll();
        return;
        //return "redirect:/";
    }

    //option: web or mobile
    @GetMapping(value = "product", produces = "application/json")
    @ResponseBody
    public ModelAndView getProduct(@RequestParam(value = "option") String option,
                                   @RequestParam(value = "userid") String userid,
                                   @RequestParam(value = "pcode") String pcode,
                                   ModelAndView mv) {
        // Model and View
        mv.setViewName("result.jsp");

        // Get EhCache Data from member
        cache = cacheManager.getCache("member");

        // 파라미터를 저장하기 위한 리스트
        ArrayList<String> param = new ArrayList<>();

        //Add Key
        param.add(userid);
        param.add(pcode);

        long start = System.currentTimeMillis(); //수행시간 측정 시작

        Cache.ValueWrapper ehData = cache.get(param); // Get Parameter value

        if (isData(ehData)) { // To check whether the value is null or not
            String ehResult;
            ehResult = ehData.get().toString(); // Convert ehData to String
            long ehCacheEnd = System.currentTimeMillis(); // 수행시간 측정 끝
            log.info("EhCache 조회: User ID: " + userid + " | Product Code: " + pcode + " | 수행시간: " + (ehCacheEnd - start) + "ms");
            mv = AddMvData(mv,"EhCache", ehResult, ehCacheEnd-start);
            return mv;
        }

        //Redis 조회
        String redisData;
        redisData = jedis.get("member::" + userid + "," + pcode);
        if (isData(redisData)) {
            long redisEnd = System.currentTimeMillis(); //레디스 수행시간 측정 끝
            log.info("Redis 조회: User ID: " + userid + " | Product Code: " + pcode + " | 수행시간: " + (redisEnd - start) + "ms");
            cache.put(param, redisData);
            mv = AddMvData(mv,"Redis", redisData, redisEnd-start);
            return mv;
        }
        else { //db 조회
            String dbResult;
            dbResult = dao.selectTest(option,userid, pcode);
            long dbEnd = System.currentTimeMillis(); // db 수행시간 측정 끝
            jedis.set("member::" + userid + "," + pcode, dbResult); // Update Data on Redis
            log.info("DB 조회: User ID: " + userid + "" + " | Product Code: " + pcode + " | 수행시간: " + (dbEnd - start) + "ms");
            cache.put(param, dbResult); // Updata Data on EhCache
            mv = AddMvData(mv,"DB", dbResult, dbEnd-start);
            return mv;
        }
    }

    // Add Object Data with Model And View
    public ModelAndView AddMvData(ModelAndView mv, String DataStorage, String DataResult, long ExecutionTime){
        mv.setViewName("result.jsp");

        mv.addObject(DataStorage, DataResult);
        mv.addObject("Execution_time", ExecutionTime);
        return mv;
    }

    //Return True or False depending on Data
    public boolean isData(Object productData){

        if(productData == null){
            return false;
        }
        return true;
    }

}