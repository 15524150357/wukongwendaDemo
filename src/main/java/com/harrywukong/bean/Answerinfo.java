package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/20.
 */
public class Answerinfo implements Serializable{
    protected int ansid;
    protected String content;
    protected int userid;
    protected int questionid;

    public int getQuestionid() {
        return questionid;
    }

    public void setQuestionid(int questionid) {
        this.questionid = questionid;
    }

    public int getAnsid() {
        return ansid;
    }

    public void setAnsid(int ansid) {
        this.ansid = ansid;
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

    @Override
    public String toString() {
        return "Answerinfo{" +
                "ansid=" + ansid +
                ", content='" + content + '\'' +
                ", userid=" + userid +
                '}';
    }
}
