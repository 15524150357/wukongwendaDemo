package com.harrywukong.bean;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Think on 2018/7/22.
 */
public class Userlist implements Serializable{
    List<Userinfo> userlist;
    private int total;

    public List<Userinfo> getUserlist() {
        return userlist;
    }

    public void setUserlist(List<Userinfo> userlist) {
        this.userlist = userlist;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
