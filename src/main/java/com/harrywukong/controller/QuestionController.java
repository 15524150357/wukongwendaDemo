package com.harrywukong.controller;

import com.harrywukong.bean.AnswerinfoExtend;
import com.harrywukong.bean.FavoriteinfoExtend;
import com.harrywukong.bean.QuestioninfoExtend;
import com.harrywukong.bean.Userinfo;
import com.harrywukong.service.IQuestionService;
import com.harrywukong.service.JedisClient;
import org.apache.activemq.Message;
import org.apache.activemq.broker.region.Destination;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jms.JMSException;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Think on 2018/8/9.
 */
@Controller
@RequestMapping("question")
public class QuestionController {

    @Autowired
    IQuestionService iQuestionService;

    @Autowired
    SolrServer solrServer;

    @Autowired
    JedisClient jedisClient;

    @Autowired
    JmsTemplate jmsTemplate;
    //注入主题目的地（发布/订阅模式）
//    @Autowired
//    Destination queue;

    @RequestMapping("answerbox/{qidans}")
    public String answerbox(@PathVariable Integer qidans, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("qid",qidans);
//        System.out.println("哈哈"+qidans);
        return "answer";
//        request.getRequestDispatcher("answer.jsp").forward(request,response);
    }

    @RequestMapping("answer")
    public void answer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String answercontent = request.getParameter("answer_content");
        String answerqid = request.getParameter("answer_qid");

//        jedisClient.del("Article"+answerqid);

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        AnswerinfoExtend answerinfoExtend = new AnswerinfoExtend();
        answerinfoExtend.setContent(answercontent);
        answerinfoExtend.setUserid(userinfo.getId());

//        System.out.println(answerqid);

        answerinfoExtend.setQuestionid(Integer.parseInt(answerqid));

        iQuestionService.addAnswer(answerinfoExtend);

        List<Map<String,Object>> answerinfoList = iQuestionService.getAnswersByQuestionID(Integer.parseInt(answerqid));

        request.getSession().setAttribute("all_user_answers",answerinfoList);

        System.out.println(answerinfoList);

//        request.getRequestDispatcher("article.jsp").forward(request,response);
//        response.sendRedirect("article.jsp");
        //需要调整（重定向以及登录回答问题）
        response.getWriter().print("/questionNoLogin/viewarticle1/" + answerqid);
    }

    @RequestMapping("answerbuffer")
    public String answerbuffer() {

        return "article";
    }


    @RequestMapping("favorite/{qidans}")
    public String favorite(@PathVariable Integer qidans, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        FavoriteinfoExtend favoriteinfoExtend = new FavoriteinfoExtend();
        favoriteinfoExtend.setQid(qidans);
        favoriteinfoExtend.setUid(userinfo.getId());

        iQuestionService.addAsFavorite(favoriteinfoExtend);

        System.out.println("收藏完毕");

        List<Map<String,Object>> favoriteinfoExtendList = iQuestionService.checkFavoritesByUid(userinfo);
        System.out.println(favoriteinfoExtendList);

        request.getSession().setAttribute("favorites",favoriteinfoExtendList);

//        response.sendRedirect("favorite.jsp");
        return "favorite";
    }

    @RequestMapping("question1")
    public String question() {

        return "question";
    }

    @RequestMapping("doquestion")
    public void doquestion(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String qtitle = request.getParameter("q_title");
        String qcontent = request.getParameter("q_content");

        System.out.println("注意");
        System.out.println(qtitle);
        System.out.println(qcontent);
        System.out.println("注意");

        QuestioninfoExtend questioninfoExtend = new QuestioninfoExtend();

        Userinfo userinfo = (Userinfo)request.getSession().getAttribute("user_info");
        System.out.println(userinfo);

        questioninfoExtend.setTitle(qtitle);
        questioninfoExtend.setContent(qcontent);
        questioninfoExtend.setUserid(userinfo.getId());
        questioninfoExtend.setQid(questioninfoExtend.getQid());
        System.out.println(questioninfoExtend.getQid());

        System.out.println(userinfo.getId());

        iQuestionService.addQuestion(questioninfoExtend);
        System.out.println(questioninfoExtend.getQid());






        //往solr里面添加文章
//        SolrInputDocument inputDocument = new SolrInputDocument();
//        //向文档中添加域以及对应的值,注意：所有的域必须在schema.xml中定义过,前面已经给出过我定义的域。
//        UUID uuid = UUID.randomUUID();
//        inputDocument.addField("id", uuid);
//        inputDocument.addField("article_title", questioninfoExtend.getTitle());
//        inputDocument.addField("article_content", questioninfoExtend.getContent());
//        inputDocument.addField("article_id", questioninfoExtend.getQid());
//
//        try {
//            solrServer.add(inputDocument);
//        } catch (SolrServerException e) {
//            e.printStackTrace();
//        }
//        try {
//            solrServer.commit();
//        } catch (SolrServerException e) {
//            e.printStackTrace();
//        }
        //往solr里面添加文章


        request.getSession().setAttribute("question_info",questioninfoExtend);

        response.getWriter().print("/");

    }

    @RequestMapping("favoriteflush")
    public String favoriteflush(HttpServletRequest request) {

        Userinfo userinfo = (Userinfo) request.getSession().getAttribute("user_info");

        List<Map<String,Object>> favoriteinfoExtendList = iQuestionService.checkFavoritesByUid(userinfo);

        request.getSession().setAttribute("favorites",favoriteinfoExtendList);

//        response.sendRedirect("favorite.jsp");
        return "favorite";
    }


}
