package com.etc.service.impl;

import com.etc.dao.UsersMapper;
import com.etc.pojo.Users;
import com.etc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("usersService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UsersMapper mapper;

    @Override
    public int insertSelective(Users record) {
        return mapper.insertSelective(record);
    }

    @Override
    public boolean checkTelExist(String tel) {
        Users users = mapper.checkTelExist(tel);
        if (users != null){
            return false;
        }
        return true;
    }

    @Override
    public Users selectByPrimaryKey(Integer userId) {
        return mapper.selectByPrimaryKey(userId);
    }

    @Override
    public Users selectUserByUsernameAndPass(Users users) {
        return mapper.selectUserByUsernameAndPass(users);
    }
}
