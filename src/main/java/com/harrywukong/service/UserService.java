package com.harrywukong.service;

import com.harrywukong.bean.SolrQueryPageInfo;
import com.harrywukong.bean.Userinfo;
import com.harrywukong.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ttc on 2018/8/9.
 */
@Service
public class UserService implements IUserService{

    @Autowired
    UserMapper userMapper;

    @Override
    public int addUser(Userinfo userinfo) {
        return userMapper.addUser(userinfo);
    }

    @Override
    public Userinfo userLogin(Userinfo userinfo) {
        return userMapper.userLogin(userinfo);
    }

    @Override
    public int saveUser(Userinfo userinfo) {
        return userMapper.saveUser(userinfo);
    }

    @Override
    public List<Userinfo> showUsers() {
        return userMapper.showUsers();
    }

    @Override
    public int isUserExist(Userinfo userinfo) {
        return userMapper.isUserExist(userinfo);
    }

    @Override
    public int getUserCount() {
        return userMapper.getUserCount();
    }

    @Override
    public int deleteUserByID(int id) {
        return userMapper.deleteUserByID(id);
    }

    @Override
    public Userinfo getUserInfoByID(int id) {
        return userMapper.getUserInfoByID(id);
    }

    @Override
    public int editUser(Userinfo userinfo) {
        return userMapper.editUser(userinfo);
    }
}
