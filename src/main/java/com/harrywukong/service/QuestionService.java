package com.harrywukong.service;

import com.alibaba.fastjson.JSON;
import com.harrywukong.bean.*;
import com.harrywukong.mapper.QuestionMapper;
import org.apache.activemq.Message;
import org.apache.activemq.broker.region.Destination;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.jms.JMSException;
import javax.jms.Session;
import javax.jms.TextMessage;
//import javax.jms.Destination;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/9.
 */
@Service
public class QuestionService implements IQuestionService {

    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    SolrServer solrServer;

    @Autowired
    JedisClient jedisClient;

    @Autowired
    JmsTemplate jmsTemplate;
    //注入主题目的地（发布/订阅模式）
    @Autowired
    javax.jms.Destination queue;

    @Override
    public int addQuestion(QuestioninfoExtend questioninfoExtend) {

        int result = questionMapper.addQuestion(questioninfoExtend);

        String questionJson = JSON.toJSONString(questioninfoExtend);
        //article加入到消息队列，回应客户端
        jmsTemplate.send(queue, new MessageCreator() {

            @Override
            public Message createMessage(Session session) throws JMSException {
                TextMessage message = session.createTextMessage(questionJson);
                return (Message) message;
            }
        });


          return result;
//        return questionMapper.addQuestion(questioninfoExtend);
    }

    @Override
    public List<Map<String, Object>> getAllQuestions() {
        return questionMapper.getAllQuestions();
    }

    @Override
    public QuestioninfoExtend getQuestionByQid(int qid) {
        return questionMapper.getQuestionByQid(qid);
    }

    @Override
    public int delQuestionByQid(int id) {
        return questionMapper.delQuestionByQid(id);
    }

    @Override
    public List<QuestioninfoExtend> checkAllQuestions() {
        return questionMapper.checkAllQuestions();
    }

    @Override
    public int addAnswer(AnswerinfoExtend answerinfoExtend) {
        return questionMapper.addAnswer(answerinfoExtend);
    }

    @Override
    public List<Map<String, Object>> getAnswersByQuestionID(int qid) {
        return questionMapper.getAnswersByQuestionID(qid);
    }

    @Override
    public int addAsFavorite(FavoriteinfoExtend favoriteinfoExtend) {
        return questionMapper.addAsFavorite(favoriteinfoExtend);
    }

    @Override
    public List<Map<String, Object>> checkFavoritesByUid(Userinfo userinfo) {
        return questionMapper.checkFavoritesByUid(userinfo);
    }

    @Override
    public List<QuestioninfoExtend> queryArticles(String keyword, SolrQueryPageInfo solrQueryPageInfo) {

        List<QuestioninfoExtend> articleList = new ArrayList<>();

        SolrQuery solrQuery = new SolrQuery();
        solrQuery.set("q",keyword);
        solrQuery.set("df","article_keywords");//df=>default field
        solrQuery.setSort("id", SolrQuery.ORDER.asc);

        solrQuery.setStart(solrQueryPageInfo.getPageIndex()*solrQueryPageInfo.getPageSize());
        solrQuery.setRows(solrQueryPageInfo.getPageSize());

//        solrQuery.setStart(0);
//        solrQuery.setRows(2);
        //开启高亮显示
        solrQuery.setHighlight(true);
        solrQuery.addHighlightField("article_title");
        solrQuery.addHighlightField("article_content");
        solrQuery.setHighlightSimplePre("<em>");
        solrQuery.setHighlightSimplePost("</em>");


        QueryResponse queryResponse = null;
        try {
            queryResponse = solrServer.query(solrQuery);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }

        SolrDocumentList solrDocumentList = queryResponse.getResults();
        int total = (int) solrDocumentList.getNumFound();
        solrQueryPageInfo.setTotal(total);
        Map<String, Map<String, List<String>>> mapMapHighlighting = queryResponse.getHighlighting();

        for(SolrDocument solrDocument : solrDocumentList)
        {
            QuestioninfoExtend article = new QuestioninfoExtend();
            String id = (String)solrDocument.get("id");
            String article_title = (String)solrDocument.get("article_title");
            String article_content = (String)solrDocument.get("article_content");
            int article_id = (int) solrDocument.get("article_id");
//            Long article_id = (Long)solrDocument.get("article_id");

            article.setTitle(article_title);
            article.setContent(article_content);
            article.setQid(article_id);
//            article.setAid(article_id.intValue());
            Map<String, List<String>> map = mapMapHighlighting.get(id);//一个商品，一个json对象

            for(Map.Entry<String, List<String>> entry : map.entrySet())
            {
                if(entry.getKey().equals("article_title"))
                {
                    article.setTitle(entry.getValue().get(0));
                }
                if(entry.getKey().equals("article_content"))
                {
                    article.setContent(entry.getValue().get(0));
                }

            }

            articleList.add(article);

        }

        return articleList;
    }
}
