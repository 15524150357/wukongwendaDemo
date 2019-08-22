package com.harrywukong.service;

import com.harrywukong.bean.FollowerFolloweeInfo;
import com.harrywukong.bean.Userinfo;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/9.
 */
public interface IFollowerFolloweeService {
    List<Map<String,Object>> getAllFansByStarID(Userinfo userinfo);
    List<Map<String,Object>> getAllStarsByFansID(Userinfo userinfo);
    public int addAsMyStar(FollowerFolloweeInfo followerFolloweeInfo);
    public int getFansNumByUserID(Userinfo userinfo);
    public int getStarNumByUserID(Userinfo userinfo);
}
