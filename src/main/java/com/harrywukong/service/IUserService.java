package com.harrywukong.service;

import com.harrywukong.bean.SolrQueryPageInfo;
import com.harrywukong.bean.Userinfo;

import java.util.List;

/**
 * Created by ttc on 2018/8/9.
 */
public interface IUserService {
    public int addUser(Userinfo userinfo);
    public Userinfo userLogin(Userinfo userinfo);
    public int saveUser(Userinfo userinfo);
    public List<Userinfo> showUsers();
    public int isUserExist(Userinfo userinfo);

    int getUserCount();
//    List<Userinfo> getPagedUsers(SolrQueryPageInfo pageinfo);
    public int deleteUserByID(int id);
    public Userinfo getUserInfoByID(int id);
    public int editUser(Userinfo userinfo);
}
