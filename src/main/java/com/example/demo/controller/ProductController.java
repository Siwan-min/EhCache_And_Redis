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
import redis.clients.jedis.JedisPoolConfig;

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

    JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
    JedisPool jedisPool = new JedisPool();
    Jedis jedis = jedisPool.getResource();

    @RequestMapping("/login")
    public ModelAndView login(ModelAndView mv){
        mv.setViewName("login.jsp");

        return mv;
    }


    @RequestMapping("/search")
    public ModelAndView getInfo(ModelAndView mv){
        mv.setViewName("search.jsp");

        return mv;
    }

    //EhCache 삭제
    @RequestMapping("/")
    public void deleteCache(){

        cache = cacheManager.getCache("member");
        cache.clear();
        return;
        //return "redirect:/";
    }



   // @RequestMapping(value = "/product/{userid}/{pcode}", method = RequestMethod.GET) //요청 url에 대한 메소드 Mapping
   @GetMapping(value = "product", produces = "application/json")
   @ResponseBody
   public ModelAndView getProduct(@RequestParam(value = "userid") String userid, @RequestParam(value = "pcode") String pcode, ModelAndView mv) {
        mv.setViewName("index.jsp");
        String result;

        cache = cacheManager.getCache("member");

        ArrayList<String> param = new ArrayList<>();

        //Add Key
        param.add(userid);
        param.add(pcode);

        // System.out.println(param);

        boolean flag = false;
        //   cache.put(userid +"," +pcode , cache);

        long start = System.currentTimeMillis(); //수행시간 측정 시작

        Cache.ValueWrapper eh = cache.get(param);

        if (eh != null) {
            result = eh.get().toString();
            long ehCacheEnd = System.currentTimeMillis(); // 수행시간 측정 끝

            log.info("EhCache 조회: User ID: " + userid + "" + " | Product Code: " + pcode + " | 수행시간: " + (ehCacheEnd - start) + "ms");

            mv.addObject("EhCache", result);
            mv.addObject("Execution_time", (ehCacheEnd - start));
            return mv;
        }

        result = jedis.get("member::" + userid + "," + pcode);
        if (result != null) {
            long redisEnd = System.currentTimeMillis(); // 수행시간 측정 끝
            log.info("Redis 조회: User ID: " + userid + "" + " | Product Code: " + pcode + " | 수행시간: " + (redisEnd - start) + "ms");
            cache.put(param, result);
            mv.addObject("Redis", result);
            mv.addObject("Execution_time", (redisEnd - start));
            return mv;
        } else {
            //db 조회
            result = dao.selectTest(userid, pcode);
            long dbEnd = System.currentTimeMillis(); // db 수행시간 측정 끝
            jedis.set("member::" + userid + "," + pcode, result);
            log.info("DB 조회: User ID: " + userid + "" + " | Product Code: " + pcode + " | 수행시간: " + (dbEnd - start) + "ms");
            cache.put(param, result);
            mv.addObject("DB", result);
            mv.addObject("Execution_time", (dbEnd - start));
            return mv;
        }
        //return null;
    }
}
