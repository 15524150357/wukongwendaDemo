package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/20.
 */
public class FollowerFolloweeInfo implements Serializable{
    private int id;
    private int fansid;
    private int starid;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFansid() {
        return fansid;
    }

    public void setFansid(int fansid) {
        this.fansid = fansid;
    }

    public int getStarid() {
        return starid;
    }

    public void setStarid(int starid) {
        this.starid = starid;
    }
}
