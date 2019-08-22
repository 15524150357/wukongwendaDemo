package com.harrywukong.mapper;

import com.harrywukong.bean.AnswerinfoExtend;
import com.harrywukong.bean.FavoriteinfoExtend;
import com.harrywukong.bean.QuestioninfoExtend;
import com.harrywukong.bean.Userinfo;

import java.util.List;
import java.util.Map;

/**
 * Created by Think on 2018/8/2.
 */
public interface QuestionMapper {
    int addQuestion(QuestioninfoExtend questioninfoExtend);
    List<Map<String,Object>> getAllQuestions();
    QuestioninfoExtend getQuestionByQid(int qid);
    int delQuestionByQid(int id);
    List<QuestioninfoExtend> checkAllQuestions();

    int addAnswer(AnswerinfoExtend answerinfoExtend);
    List<Map<String,Object>> getAnswersByQuestionID(int qid);

    int addAsFavorite(FavoriteinfoExtend favoriteinfoExtend);
    List<Map<String,Object>> checkFavoritesByUid(Userinfo userinfo);

    List<QuestioninfoExtend> queryArticles(String keyword);
}
