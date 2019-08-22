package com.harrywukong.bean;

import java.io.Serializable;

/**
 * Created by Think on 2018/8/4.
 */
public class SolrQueryPageInfo implements Serializable{
    protected int pageIndex;
    protected int pageSize;
    protected int total;

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
}
