package com.etc.test;

import com.etc.dao.RegionsMapper;
import com.etc.pojo.Regions;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class RegionTest {
    private ApplicationContext context;
    private RegionsMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("regionsMapper", RegionsMapper.class);
    }

    @Test
    public void selectAllCity(){
        List<Regions> regions = mapper.selectAllCity();
        for (Regions region : regions){
            System.out.println(region.toString());
        }
    }
}
