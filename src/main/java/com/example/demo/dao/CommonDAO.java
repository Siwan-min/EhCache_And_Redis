package com.example.demo.dao;

import org.apache.ibatis.session.SqlSession;
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

   @Cacheable(cacheNames = "member", key = "{#userid,#number}", unless = "#result == null")
    public String selectTest(String option, String userid, String number) {

       //데이터 테이블 선택
       String dataTable;
       if(option.equals("web")){
           dataTable = "web";
       }
       else{
           dataTable = "mobile";
       }

        try{

            Map<String, String> param = new HashMap<>();
            param.put("userid", userid);
            param.put("pcode", number);
            List<Object> result = sqlSession.selectList(dataTable, param);
            return result.toString();
        }
        catch (Exception e){
            System.out.println(e);
            return "Error!!!";
        }

    }
}