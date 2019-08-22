package com.harrywukong.service;

import com.harrywukong.bean.*;

import java.util.List;
import java.util.Map;

/**
 * Created by ttc on 2018/8/9.
 */
public interface IQuestionService {
    int addQuestion(QuestioninfoExtend questioninfoExtend);
    List<Map<String,Object>> getAllQuestions();
    QuestioninfoExtend getQuestionByQid(int qid);
    int delQuestionByQid(int id);
    List<QuestioninfoExtend> checkAllQuestions();

    int addAnswer(AnswerinfoExtend answerinfoExtend);
    List<Map<String,Object>> getAnswersByQuestionID(int qid);

    int addAsFavorite(FavoriteinfoExtend favoriteinfoExtend);
    List<Map<String,Object>> checkFavoritesByUid(Userinfo userinfo);

    List<QuestioninfoExtend> queryArticles(String keyword, SolrQueryPageInfo solrQueryPageInfo);

}
