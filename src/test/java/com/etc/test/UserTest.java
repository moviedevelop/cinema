package com.etc.test;

import com.etc.dao.UsersMapper;
import com.etc.pojo.Users;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserTest {
    private ApplicationContext context;
    private UsersMapper mapper;

    @Before
    public void setUp(){
        context = new ClassPathXmlApplicationContext(new String[]{"spring-dao.xml","spring-service.xml"});
        mapper = context.getBean("usersMapper",UsersMapper.class);
    }

    @Test
    public void testInsert(){
        Users users = new Users();
        users.setUserName("殇");
        users.setUserPass("123456");
        users.setUserTel("15387900663");
        users.setUserAbout("牛的一批");
        mapper.insert(users);
    }

    @Test
    public void testCheckTelExist(){
        Users users = mapper.checkTelExist("18179037768");
        System.out.println(users.toString());
    }
}
