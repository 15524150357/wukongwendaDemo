package com.harrywukong.activemq.listener;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.harrywukong.bean.QuestioninfoExtend;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by Think on 2018/8/24.
 */
public class MyMessageListener implements MessageListener {

    @Autowired
    SolrServer solrServer;

    @Override
    public void onMessage(Message message) {
        TextMessage textMessage = (TextMessage)message;
        try {
            //获取消息信息内容
            String questionJson = textMessage.getText();

            QuestioninfoExtend questioninfoExtend = JSON.parseObject(questionJson,new TypeReference<QuestioninfoExtend>(){});

//            往solr里面添加文章
            SolrInputDocument inputDocument = new SolrInputDocument();
            //向文档中添加域以及对应的值,注意：所有的域必须在schema.xml中定义过,前面已经给出过我定义的域。
            UUID uuid = UUID.randomUUID();
            inputDocument.addField("id", uuid);
            inputDocument.addField("article_title", questioninfoExtend.getTitle());
            inputDocument.addField("article_content", questioninfoExtend.getContent());
            inputDocument.addField("article_id", questioninfoExtend.getQid());


            try {
                solrServer.add(inputDocument);
            } catch (SolrServerException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

            try {
                solrServer.commit();
            } catch (SolrServerException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

//            往solr里面添加文章
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
