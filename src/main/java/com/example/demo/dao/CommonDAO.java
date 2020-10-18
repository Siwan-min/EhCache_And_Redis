package com.example.demo.dao;

import com.example.demo.controller.ProductController;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
@EnableCaching
public class CommonDAO {

    @Autowired
    private SqlSession sqlSession;

    private final static Logger log = LoggerFactory.getLogger(ProductController.class);

    @Cacheable(cacheNames = "member", key = "{#userid,#pcode}", unless = "#result == null")
    public String selectTest(String option, String userid, String pcode) {

        //데이터 테이블 선택
        String dataTable;
        dataTable = selectTable(option);

        try{

            Map<String, String> param = new HashMap<>();
            param.put("userid", userid);
            param.put("pcode", pcode);
            List<Object> result = sqlSession.selectList(dataTable, param);

            return result.toString();
        }
        catch (Exception e){
            log.info(e.toString());
            return "Error!!!";
        }

    }

    public String selectTable(String option){
        String str;
        if(option.equals("web")){
            str = "web";
        }
        else{
            str = "mobile";
        }
        return str;
    }

}