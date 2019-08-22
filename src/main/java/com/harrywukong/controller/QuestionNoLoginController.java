package com.harrywukong.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.harrywukong.bean.ArticlePageInfo;
import com.harrywukong.bean.QuestioninfoExtend;
import com.harrywukong.bean.SolrQueryPageInfo;
import com.harrywukong.service.IQuestionService;
import com.harrywukong.service.JedisClient;
import com.sun.tools.internal.ws.processor.model.Model;
import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by Think on 2018/8/11.
 */
@Controller
@RequestMapping("questionNoLogin")
public class QuestionNoLoginController {
    @Autowired
    IQuestionService iQuestionService;

    @Autowired
    JedisClient jedisClient;

//    @Value("${REDIS_ITEM_PRE}")
//    private String REDIS_ITEM_PRE;
//    @Value("${ITEM_CACHE_EXPIRE}")
//    private Integer ITEM_CACHE_EXPIRE;

    @RequestMapping("viewarticle1/{qid}")
    public String viewarticle1(@PathVariable Integer qid, HttpServletRequest request, HttpServletResponse response) throws IOException {

        jedisClient.del("Article"+qid);
        String jsonArticle = jedisClient.hget("Article" + qid,"article");
        QuestioninfoExtend questioninfoExtend = null;
        if(jsonArticle != null && !jsonArticle.isEmpty())
        {
            questioninfoExtend = JSON.parseObject(jsonArticle,new TypeReference<QuestioninfoExtend>(){});
            jedisClient.expire("Article" + qid,600);
        }
        else
        {
            questioninfoExtend = iQuestionService.getQuestionByQid(qid);
            jedisClient.hset("Article" + qid,"article", JSON.toJSONString(questioninfoExtend));
            jedisClient.expire("Article" + qid,600);
        }

        request.getSession().setAttribute("question_article",questioninfoExtend);



        String jsonComments = jedisClient.hget("Article" + qid,"comments");
        List<Map<String,Object>> answerinfoExtendList = null;
        if(jsonComments != null && !jsonComments.isEmpty())
        {
            answerinfoExtendList = JSON.parseObject(jsonComments,new TypeReference<List<Map<String,Object>>>(){});
        }
        else
        {
            answerinfoExtendList = iQuestionService.getAnswersByQuestionID(qid);
            jedisClient.hset("Article" + qid,"comments", JSON.toJSONString(answerinfoExtendList));
        }

        request.getSession().setAttribute("all_user_answers",answerinfoExtendList);



//        List<Map<String,Object>> answerinfoExtendList = iQuestionService.getAnswersByQuestionID(qid);
//        System.out.println("注意这里"+qid);

//        System.out.println(answerinfoExtendList);
//        request.getSession().setAttribute("all_user_answers",answerinfoExtendList);

//        QuestioninfoExtend questioninfoExtend = iQuestionService.getQuestionByQid(qid);


        request.getSession().setAttribute("qidans",qid);

        return "article";
//        response.sendRedirect("article.jsp?qidf="+qid);
    }


    @RequestMapping("search")
    public String search(String keyword, HttpServletRequest request) {

        request.setAttribute("keyword",keyword);
        return "search_article";

        //重定向不能直接到受保护的jsp，得先到controller，再转发，这样的效果等于重定向
//        return "redirect:search_article";
    }

    @RequestMapping("dosearch")
    public void search_article(String keyword, SolrQueryPageInfo solrQueryPageInfo, HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println(keyword);
//        response.setContentType("text/html;charset=utf-8");

        ArticlePageInfo articlePageInfo = new ArticlePageInfo();
//        SolrQueryPageInfo solrQueryPageInfo = new SolrQueryPageInfo();
        List<QuestioninfoExtend> articleList = iQuestionService.queryArticles(keyword, solrQueryPageInfo);

        System.out.println(solrQueryPageInfo.getTotal());
        articlePageInfo.setTotal(solrQueryPageInfo.getTotal());
        articlePageInfo.setArticles(articleList);

//        System.out.println();
//        model.addAttribute("queryarticles",articleList);
//        request.setAttribute("queryarticles",articleList);

        String jsonString = JSON.toJSONString(articlePageInfo);
        response.getWriter().println(jsonString);
//        return "search_article";

    }
}
