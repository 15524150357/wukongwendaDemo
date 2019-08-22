package com.harrywukong.service;

import com.harrywukong.bean.FollowerFolloweeInfo;
import com.harrywukong.bean.Userinfo;
import com.harrywukong.mapper.FollowerFolloweeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/9.
 */
@Service
public class FollowerFolloweeService implements IFollowerFolloweeService {

    @Autowired
    FollowerFolloweeMapper followerFolloweeMapper;

    @Override
    public List<Map<String, Object>> getAllFansByStarID(Userinfo userinfo) {
        return followerFolloweeMapper.getAllFansByStarID(userinfo);
    }

    @Override
    public List<Map<String, Object>> getAllStarsByFansID(Userinfo userinfo) {
        return followerFolloweeMapper.getAllStarsByFansID(userinfo);
    }

    @Override
    public int addAsMyStar(FollowerFolloweeInfo followerFolloweeInfo) {
        return followerFolloweeMapper.addAsMyStar(followerFolloweeInfo);
    }

    @Override
    public int getFansNumByUserID(Userinfo userinfo) {
        return followerFolloweeMapper.getFansNumByUserID(userinfo);
    }

    @Override
    public int getStarNumByUserID(Userinfo userinfo) {
        return followerFolloweeMapper.getStarNumByUserID(userinfo);
    }
}
