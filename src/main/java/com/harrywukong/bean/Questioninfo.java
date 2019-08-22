package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/19.
 */
public class Questioninfo implements Serializable{
    protected int qid;
    protected String title;
    protected String content;
    protected int userid;

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Questioninfo{" +
                "qid=" + qid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", userid=" + userid +
                '}';
    }
}
