package com.harrywukong.controller;

import com.harrywukong.bean.FollowerFolloweeInfo;
import com.harrywukong.bean.Userinfo;
import com.harrywukong.service.IFollowerFolloweeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by Think on 2018/8/9.
 */
@Controller
@RequestMapping("follow")
public class FollowerFolloweeController {

    @Autowired
    IFollowerFolloweeService iFollowerFolloweeService;

    @RequestMapping("profileflush")
    public String profileflush(HttpServletRequest request)
    {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        System.out.println("页面登录者"+userinfo);

        int fansnum = iFollowerFolloweeService.getFansNumByUserID(userinfo);
        int starnum = iFollowerFolloweeService.getStarNumByUserID(userinfo);

        request.getSession().setAttribute("fans_num",fansnum);
        request.getSession().setAttribute("star_num",starnum);

//        request.getRequestDispatcher("profile.jsp").forward(request,response);
        return "profile";
    }

    @RequestMapping("star_info")
    public String starinfo(HttpServletRequest request)
    {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        List<Map<String,Object>> userinfoList = iFollowerFolloweeService.getAllStarsByFansID(userinfo);

        request.setAttribute("starlist",userinfoList);
//        request.getRequestDispatcher("star_info.jsp").forward(request,response);
        return "star_info";
    }

    @RequestMapping("fans_info")
    public String fansinfo(HttpServletRequest request)
    {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        List<Map<String,Object>> userinfoList = iFollowerFolloweeService.getAllFansByStarID(userinfo);

        request.setAttribute("fanslist",userinfoList);
//        request.getRequestDispatcher("fans_info.jsp").forward(request,response);
        return "fans_info";
    }

    @RequestMapping("follower_followee_info")
    public String followerfolloweeinfo(HttpServletRequest request)
    {
        System.out.println("关注粉丝");

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");
        Userinfo userinfo1 = (Userinfo) request.getSession().getAttribute("user_info1");

        FollowerFolloweeInfo followerFolloweeInfo = new FollowerFolloweeInfo();
        followerFolloweeInfo.setFansid(userinfo.getId());
        followerFolloweeInfo.setStarid(userinfo1.getId());

        iFollowerFolloweeService.addAsMyStar(followerFolloweeInfo);

        System.out.println("关注成功");

        request.setAttribute("follow_result","关注成功！");
//        request.getRequestDispatcher("profile1.jsp").forward(request,response);
        return "profile1";
    }
}
