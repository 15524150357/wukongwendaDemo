package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by Think on 2018/7/21.
 */
public class AnswerinfoExtend extends Answerinfo implements Serializable{
    private String username;
    private String picpath;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}
