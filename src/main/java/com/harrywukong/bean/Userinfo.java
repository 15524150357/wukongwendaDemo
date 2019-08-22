package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/19.
 */
public class Userinfo implements Serializable{
    private int id;
    private String username;
    private String password;
    private String picpath;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }

    @Override
    public String toString() {
        return "Userinfo{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", picpath='" + picpath + '\'' +
                '}';
    }
}
