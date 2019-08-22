package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/23.
 */
public class Favoriteinfo implements Serializable{
    protected int fid;
    protected int qid;
    protected int uid;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
