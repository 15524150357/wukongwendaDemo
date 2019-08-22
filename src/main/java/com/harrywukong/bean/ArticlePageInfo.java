package com.harrywukong.bean;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Think on 2018/8/20.
 */
public class ArticlePageInfo implements Serializable{
    int total;
    List<QuestioninfoExtend> articles;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<QuestioninfoExtend> getArticles() {
        return articles;
    }

    public void setArticles(List<QuestioninfoExtend> articles) {
        this.articles = articles;
    }
}
