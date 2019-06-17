package com.service.impl;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public User queryByUserName(User user) {
        return userDao.queryByUserName(user);
    }
    @Override
    public User queryByUserId(int uid) {
        return userDao.queryByUserId(uid);
    }
}

