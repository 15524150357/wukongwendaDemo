package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by ttc on 2018/7/23.
 */
public class FavoriteinfoExtend extends Favoriteinfo implements Serializable{
    private String title;
    private String content;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "FavoriteinfoExtend{" +
                "fid=" + fid +
                ", qid=" + qid +
                ", title='" + title + '\'' +
                ", uid=" + uid +
                ", content='" + content + '\'' +
                '}';
    }
}
