package com.service;

import com.pojo.User;

public interface UserService {
    User queryByUserName(User user);
    User queryByUserId(int uid);
}
