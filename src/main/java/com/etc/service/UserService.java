package com.etc.service;

import com.etc.pojo.Users;

public interface UserService {
    int insertSelective(Users record);

    boolean checkTelExist(String tel);

    Users selectByPrimaryKey(Integer userId);

    Users selectUserByUsernameAndPass(Users users);
}
