package com.baizhi.dao;

import com.baizhi.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User getOne(@Param("name") String name, @Param("password") String password);
    void regiser(User user);
}
