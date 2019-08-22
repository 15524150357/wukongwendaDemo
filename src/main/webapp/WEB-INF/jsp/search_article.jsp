<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- saved from url=(0066)https://www.wukong.com/search/?keyword=%E5%8C%BA%E5%9D%97%E9%93%BE -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="baidu-site-verification" content="6v2i5ZXAcT">
    <meta name="360-site-verification" content="d2d5af5afd7ab435d58bcb3decb28822">
    <meta name="google-site-verification" content="aGcHAsDaqk3chrC0a1ySOxLSc5oiqaV649yu7Xl7qjI">
    <meta name="sogou_site_verification" content="qpGA3ltIUV">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title>悟空问答 - 搜索</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search_c440f11.css">


    <link href="${pageContext.request.contextPath}/thirdpart/mricode.pagination.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/thirdpart/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/thirdpart/mricode.pagination.js"></script>
    <script src="${pageContext.request.contextPath}/thirdpart/arttemplate.min.js"></script>


    <script>
        window.onload = function () {

//            $('#btn11').click=function () {
                $('#page').pagination({
                    pageIndex:0,
                    pageSize:2,
                    showInfo: true,
                    showJump: true,
                    showPageSizes: true,
                    remote:{
                        url:'${pageContext.request.contextPath}/questionNoLogin/dosearch',
                        params: $('form').serialize(),
                        success:function (data) {
                            var html = template('test',data);
                            $('#content').html(html);
//                            document.getElementById('content').innerHTML = html;
                        }
                    }
                })
//            }

            $('#btn11').click(function () {

                $('#firstsearch').css('display','none');
                $('#page').pagination('setParams', $('form').serialize());
                $('#page').pagination('remote');

            })

        }
    </script>

    <style>
        em{
            color: red;
        }
    </style>

</head>
<body data-log-from="SearchPage">

<div id="wrapper" data-log-from="">
    <div class=""></div>
    <div id="paglet-index-header" data-log-from="!Nav" class="index-header">
        <div class="index-header-wrapper">
            <header id="pagelet-midbar" class="header-search">
                <div data-node="midbarInner" class="midbar-inner">
                    <div class="inner clearfix">
                        <div class="suspension-part">
                            <div class="logo-box"><a href="https://www.wukong.com/" data-log="Visit_Index|From_logo"
                                                     title="悟空问答" class="logo-link"><img
                                    src="${pageContext.request.contextPath}/upload/logo_5df43ca.png" alt="悟空问答" class="logo"></a></div>
                            <div class="search-box">
                                <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                                    <form action="#" data-node="searchForm">
                                        <%--<form action="#" method="get" data-node="searchForm" target="_blank">--%>
                                        <div class="input-group clearfix"><input autocomplete="off"
                                                                                 ga_event="nav_search_input"
                                                                                 data-node="searchInput" name="keyword" value="${keyword}"
                                                                                 type="text" placeholder="搜索你感兴趣的问题">
                                            <div class="btn-submit">
                                                <button ga_event="nav_search"
                                                        type="submit"
                                                        href="javascript:;" id="btn11"><i
                                                        class="iconfont icon-ask_search"></i></button>
                                            </div>
                                        </div>
                                    </form> <!----></div>
                            </div>
                        </div>
                        <a href="javascript:;" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask">提问</a>
                        <div class="nav logined"><a href="https://www.wukong.com/" data-log="Visit_Index|From_Link"
                                                    title="首页" class="">首页</a> <a href="https://www.wukong.com/myquest/"
                                                                                  data-log="Visit_QuestionInvited|From_"
                                                                                  title="等我来答" class="">等我来答</a> <a
                                href="https://www.wukong.com/notebook/" target="_blank" data-log="Visit_NoteBook|From_">回答秘籍</a>
                            <div class="new-msg-btn"><span class="w-new-msg-btn"><span>消息</span><!----><!----> <div
                                    class="w-new-layer layer-wrapper"><i class="triangle"></i> <a class="notice"><span>通知</span>
                                <!----></a> <a class="invite"><span>邀请</span> <!----></a> <a
                                    class="digg"><span>点赞</span> <!----></a> <a class="comment"><span>评论</span> <!----></a> <a
                                    class="follow"><span>关注</span> <!----></a></div> <!----></span></div>
                            <div class="nav-account">
                                <div data-node="user-account" class="nav-account-wrapper dropdown"><a
                                        href="https://www.wukong.com/user/" target="_blank"
                                        data-log="Visit_Profile|From_" class="nav-account-user line"><img
                                        src="./悟空问答 - 搜索_files/3044413937" alt="" class="nav-account-user-avatar"></a>
                                    <div class="dropdown-menu"><i class="triangle"></i>
                                        <div><a href="https://www.wukong.com/user/" target="_blank"
                                                class="layer-item"><i class="iconfont icon-ask_write"></i>我的问答</a></div>
                                        <div><a class="layer-item"><i
                                                class="iconfont icon-ask_profile_exit"></i>退  出</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        </div>
    </div>
    <div class="answer-wrapper"></div>
    <main class="main-container page-search tag-0">
        <div id="main-index-question-list" class="index-question-list">
            <div class="search-tab"><a href="javascript:;" data-log="Visit_synthsizeTab|From_"
                                       class="search-tab-item active">全部</a> <a href="javascript:;"
                                                                                data-log="Visit_answerquestionTab|From_"
                                                                                class="search-tab-item">答题</a> <a
                    href="javascript:;" data-log="Visit_userSearchTab|From_" class="search-tab-item">用户</a></div>
            <div class="w-feed search-all" enterfrom="search-all" data-log-from="synthesizeTab" style="">




                <div class="w-feed-container" id="firstsearch"><!---->

                    <%--<c:forEach items="${queryarticles}" var="queryarticle">--%>

                    <%--<div data-log-from="Feed" class="question-v3"><!---->--%>
                        <%--<div class="question-title"><h2><a href="${pageContext.request.contextPath}/questionNoLogin/viewarticle1/${queryarticle.qid}"--%>
                                                           <%--target="_blank" data-log="Visit_Question|From_Link"><span--%>
                                <%--style="color:black">${queryarticle.title}</span></a></h2>--%>
                            <%--<div class="question-info"><span class="question-answer-num">88回答</span><span--%>
                                    <%--class="question-follow-num">98人收藏</span></div>--%>
                        <%--</div> <!---->--%>
                        <%--<div class="question-answers">--%>
                            <%--<div class="answer-item-v3"><!----> <!---->--%>
                                <%--<div class="answer-info">--%>
                                    <%--<div class="answer-info-user"><a target="_blank"--%>
                                                                     <%--href="https://www.wukong.com/user/?uid=85240068459"--%>
                                                                     <%--data-log="Visit_Profile|From_ProfilePic"--%>
                                                                     <%--class="answer-info-user-avatar"><img alt=""--%>
                                                                                                          <%--src="./悟空问答 - 搜索_files/58720010845fb37de4e9">--%>
                                        <%--<span class="answer-info-user-name">冯一名--%>
                    <%--<i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>--%>
                                        <%--<span class="answer-info-user-title">原子创投合伙人</span></div>--%>
                                <%--</div>--%>
                                <%--<div class="answer-item-content"><p><a--%>
                                        <%--href="${pageContext.request.contextPath}/questionNoLogin/viewarticle1/${queryarticle.qid}"--%>
                                        <%--data-log="PopUp_AnswerContent|From_">${queryarticle.content}<span--%>
                                        <%--class="answer-item-whole"></span></a></p></div>--%>
                                <%--<div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">--%>
                                    <%--<!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">141</span>--%>
                                    <%--<span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i--%>
                                        <%--class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>--%>
                                    <%--<span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i--%>
                                        <%--class="iconfont icon-ask_close"></i></a> <a href="javascript:"--%>
                                                                                    <%--data-log="Visit_Comment|From_"--%>
                                                                                    <%--class="answer-oper-comments"><i--%>
                                        <%--class="iconfont icon-ask_comment"></i> <span class="comment-count">5</span>--%>
                                    <%--<span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i--%>
                                        <%--class="iconfont icon-share-home"></i> <span>分享</span></a></div>--%>
                            <%--</div>--%>
                        <%--</div> <!----></div> <!----> <!----> <!----><!---->--%>

                    <%--</c:forEach>--%>

                </div>




                <div id="content"></div>
                <div id="page" class="m-pagination"></div>
                <div class="w-feed-loadmore"><span class="w-feed-loadmore-w"></span></div>




            </div>
            <div class="w-feed search-invite" data-log-from="!answerquestion" enterfrom="search-answer"
                 style="display: none;">
                <div class="w-feed-container"><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6542665957767119112/"
                                                           target="_blank" data-log="Visit_Question|From_Link"><span
                                style="color:#FF6534">区块链</span>入门，如何理解<span style="color:#FF6534">区块链</span>新商业？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">6回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6558687517938286861/"
                                                           target="_blank" data-log="Visit_Question|From_Link"><span
                                style="color:#FF6534">区块链</span>到底是什么？如何做<span style="color:#FF6534">区块链</span>？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">8回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6576427238042894605/"
                                                           target="_blank" data-log="Visit_Question|From_Link"><span
                                style="color:#FF6534">区块链</span>有什么意义？</a></h2>
                            <div class="question-info"><span class="question-answer-num">8回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6529805763425075470/"
                                                           target="_blank" data-log="Visit_Question|From_Link">什么是<span
                                style="color:#FF6534">区块链</span>公有链？什么是<span
                                style="color:#FF6534">区块链</span>私有链？什么是<span style="color:#FF6534">区块链</span>联盟链？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">4回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6515612671432196355/"
                                                           target="_blank" data-log="Visit_Question|From_Link">现在<span
                                style="color:#FF6534">区块链</span>那么流行，如何学习<span
                                style="color:#FF6534">区块链</span>技术，找到<span style="color:#FF6534">区块链</span>相关工作？</a>
                        </h2>
                            <div class="question-info"><span class="question-answer-num">1回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6509773850937393422/"
                                                           target="_blank" data-log="Visit_Question|From_Link">最近<span
                                style="color:#FF6534">区块链</span>这么火，<span style="color:#FF6534">区块链</span>是什么样的技术，<span
                                style="color:#FF6534">区块链</span>以后的应用场景是哪些？</a></h2>
                            <div class="question-info"><span class="question-answer-num">5回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3"><!---->
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6509703615802769677/"
                                                           target="_blank"
                                                           data-log="Visit_Question|From_Link">LINE入局<span
                                style="color:#FF6534">区块链</span>，通讯结合<span style="color:#FF6534">区块链</span>技术，<span
                                style="color:#FF6534">区块链</span>的风口来了吗？</a></h2>
                            <div class="question-info"><span class="question-answer-num">2回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3 has-pic">
                        <div class="question-pic"><a href="https://www.wukong.com/question/6556805034804248835/"
                                                     target="_blank" data-log="Visit_Question|From_QuestionPic"><img
                                src="./悟空问答 - 搜索_files/834e0015af99e88a4643"></a></div>
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6556805034804248835/"
                                                           target="_blank" data-log="Visit_Question|From_Link">什么是<span
                                style="color:#FF6534">区块链</span>，如何把握好<span
                                style="color:#FF6534">区块链</span>的投资机会，投资<span
                                style="color:#FF6534">区块链</span>风险如何把控？</a></h2>
                            <div class="question-info"><span class="question-answer-num">1回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----><!---->
                    <div data-log-from="Feed" class="question-v3 has-pic">
                        <div class="question-pic"><a href="https://www.wukong.com/question/6528583416495997187/"
                                                     target="_blank" data-log="Visit_Question|From_QuestionPic"><img
                                src="./悟空问答 - 搜索_files/6595000f1723120e0c1a"></a></div>
                        <div class="question-title"><h2><a href="https://www.wukong.com/question/6528583416495997187/"
                                                           target="_blank" data-log="Visit_Question|From_Link"><span
                                style="color:#FF6534">区块链</span>岗位的薪水很高，如何成为<span
                                style="color:#FF6534">区块链</span>的人才？</a></h2>
                            <div class="question-info"><span class="question-answer-num">1回答</span><span
                                    class="question-follow-num">暂无收藏</span></div>
                        </div> <!----> <!---->
                        <div class="question-oper"><a href="javascript:" class="w-question-nointerest-btn"><i
                                class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                            data-log="PopUp_Answer|From_"
                                                                            popup_answer=""
                                                                            class="question-oper-answer"><i
                                class="iconfont icon-ask_write"></i>回答</a> <a href="javascript:"
                                                                              class="question-oper-share"><i
                                class="iconfont icon-share-home"></i>分享</a></div>
                    </div> <!----> <!----> <!----></div>
                <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
            </div>
            <div class="w-feed search-user" enterfrom="search-user" data-log-from="userTab" style="display: none;">
                <div class="w-feed-container"><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=55801779469"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/16ab00080cfbac0ce3c3"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=55801779469"
                                                                               class="user-info"><span class="uname">区块链技术谢大炮</span>
                            <i class="iconfont icon-all_newv"></i> <span class="intro">IT达人</span></a> <a
                                target="_blank" href="https://www.wukong.com/user/?uid=55801779469" class="answer-info"><span>29回答 <i> · </i></span>111.3k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=5871568045"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/1a6a000ae139f09fe5a4"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=5871568045"
                                                                               class="user-info"><span class="uname">田云区块链</span>
                            <i class="iconfont icon-all_newv"></i> <span class="intro">职场达人 营销顾问</span></a> <a
                                target="_blank" href="https://www.wukong.com/user/?uid=5871568045"
                                class="answer-info"><span>104回答 <i> · </i></span>10.4k粉丝</a></div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=5736895201"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/5e7f000427e4099e3141"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=5736895201"
                                                                               class="user-info"><span class="uname">第一区块链</span>
                            <!----> <span class="intro">上海硬雪智能科技有限公司创始合伙人</span></a> <a target="_blank"
                                                                                        href="https://www.wukong.com/user/?uid=5736895201"
                                                                                        class="answer-info"><!---->
                            16.9k粉丝</a></div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=5553096926"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/2c68001c7c10cc9d73c6"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=5553096926"
                                                                               class="user-info"><span class="uname">疯狂区块链</span>
                            <!----> <span class="intro">思维工坊编辑</span></a> <a target="_blank"
                                                                             href="https://www.wukong.com/user/?uid=5553096926"
                                                                             class="answer-info"><span>58回答 <i> · </i></span>14.9k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=3808710373"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/5d410010186d8c461b55"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=3808710373"
                                                                               class="user-info"><span class="uname">天天区块链</span>
                            <!----> <span class="intro">上海海待实业有限公司CEO</span></a> <a target="_blank"
                                                                                    href="https://www.wukong.com/user/?uid=3808710373"
                                                                                    class="answer-info"><span>1回答 <i> · </i></span>14.1k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=4220372764"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/5acc000ddff6e2e9dd87"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=4220372764"
                                                                               class="user-info"><span class="uname">区块链传奇</span>
                            <!----> <span class="intro">上饶市骏轩网络科技有限公司技术总监</span></a> <a target="_blank"
                                                                                        href="https://www.wukong.com/user/?uid=4220372764"
                                                                                        class="answer-info"><span>67回答 <i> · </i></span>15.1k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=3246420492"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/18a400118b0305bdf842"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=3246420492"
                                                                               class="user-info"><span class="uname">柴潇区块链</span>
                            <i class="iconfont icon-all_newv"></i> <span class="intro">科技达人</span></a> <a
                                target="_blank" href="https://www.wukong.com/user/?uid=3246420492"
                                class="answer-info"><span>107回答 <i> · </i></span>13.7k粉丝</a></div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=99021459816"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/986a0005641bb224ff38"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=99021459816"
                                                                               class="user-info"><span class="uname">区块链天天说</span>
                            <i class="iconfont icon-all_newv"></i> <span class="intro">头条财经视频原创作者</span></a> <a
                                target="_blank" href="https://www.wukong.com/user/?uid=99021459816" class="answer-info"><span>8回答 <i> · </i></span>11.6k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=5528396929"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/50a7000443f49e67a49b"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=5528396929"
                                                                               class="user-info"><span class="uname">区块链之家</span>
                            <!----> <span class="intro">南京路嘉企业管理咨询有限公司投资顾问</span></a> <a target="_blank"
                                                                                         href="https://www.wukong.com/user/?uid=5528396929"
                                                                                         class="answer-info"><span>20回答 <i> · </i></span>29.7k粉丝</a>
                        </div>
                    </div><!----> <!----> <!----> <!---->
                    <div class="w-search-user"><a target="_blank" href="https://www.wukong.com/user/?uid=5488447312"
                                                  data-log="Visit_Profile|From_" class="avatar"><img
                            src="./悟空问答 - 搜索_files/59350005f3fe83fd2ffe"></a>
                        <div class="follow-user"><a data-log="Follow_User|From_" class="w-follow-btn"><i
                                class="iconfont icon-details_add_icon"></i> <i
                                class="iconfont icon-details_attention_icon"></i> <span>
        关注
    </span></a></div>
                        <div data-log="Visit_Profile|From_" class="content"><a target="_blank"
                                                                               href="https://www.wukong.com/user/?uid=5488447312"
                                                                               class="user-info"><span class="uname">区块链风云社</span>
                            <!----> <span class="intro">广西一度网络科技有限公司执行董事</span></a> <a target="_blank"
                                                                                       href="https://www.wukong.com/user/?uid=5488447312"
                                                                                       class="answer-info"><span>13回答 <i> · </i></span>10.9k粉丝</a>
                        </div>
                    </div>
                </div>
                <div class="w-feed-loadmore"><span class="w-feed-loadmore-w">滚动加载更多</span></div>
            </div>
        </div>
        <div class="sub-contianer"></div>
        <div class="detail"></div>
        <div data-node="loadmore" class="index-question-loadmore">
            <div class="index-question-loadmore-w"></div>
        </div>
    </main>
    <div data-log-from="FloatingBtn" class="assist"><!----> <a href="javascript:;" data-node="static-feedback"
                                                               data-log="PopUp_CreateFeedback|From_" class="j-feedback"><span>反馈</span></a>
        <a href="javascript:;" class="j-go-top" style="height: 0px; margin-bottom: 0px;"><i
                class="iconfont icon-icon_top"></i></a></div>
</div>
<script async="" src="./悟空问答 - 搜索_files/analytics.js.下载"></script>
<script>window.__INITIAL_STATE__ = {
    "userData": {
        "is_followed": 0,
        "is_verify": 0,
        "wenda_profit_amount": "0",
        "user_auth_info_dict": {},
        "uname": "小猪HarryZhu",
        "is_following": 0,
        "user_auth_info": "",
        "user_id": 101243966007,
        "wenda_profit_user": 0,
        "avatar_url": "http:\u002F\u002Fp1.pstatp.com\u002Fthumb\u002F3795\u002F3044413937",
        "user_intro": "",
        "is_login": 1,
        "cookie_tt_page": "1e7e290030e2936a0faa459c2a4401a6"
    }
}</script>
<script>window.editPathMap = {
    "static/umeditor_static/dialogs/image/image.css": {
        "uri": "//s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/umeditor_static/dialogs/image/image_27f4753.css",
        "type": "css"
    },
    "static/umeditor_static/dialogs/image/image.js": {
        "uri": "//s3b.pstatp.com/toutiao/resource/wenda/wenda_web/static/umeditor_static/dialogs/image/image_e055c1f.js",
        "type": "js"
    },
    "static/umeditor_static/dialogs/link/link.js": {
        "uri": "//s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/umeditor_static/dialogs/link/link_e1ce38d.js",
        "type": "js"
    },
    "static/umeditor_static/lang/zh-cn.js": {
        "uri": "//s3b.pstatp.com/toutiao/resource/wenda/wenda_web/static/umeditor_static/lang/zh-cn_e3c7412.js",
        "type": "js"
    }
}</script>
<footer class="copyright">
    <p>©2017 wukongwenda.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
    <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<!-- <script src="//s3a.pstatp.com/site/tt_mfsroot/js/umeditor/lang/zh-cn.js"></script>-->


<script src="./悟空问答 - 搜索_files/slardar.js.下载"></script>
<script crossorigin="anonymous">
    window.Slardar && window.Slardar.install({
        sampleRate: 1,     // 采样率 (0, 1]
        bid: 'wenda_pc', // 业务标识
        pid: 'search',  // 页面标识
        ignoreAjax: [],    // 无需监控的ajax url规则集
        ignoreStatic: []   // 无需监控的静态资源 url规则集
    });

    tac = 'i)69hyqjphvs!i#1g0s"0,<8~z|\x7f@QGNCJF[\\^D\\KFYSk~^WSZhg,(lfi~ah`{md"inb|1d<,%Dscafgd"in,8[xtm}nLzNEGQMKAdGG^NTY\x1ckgd"inb<b|1d<g,&TboLr{m,(\x02)!jx-2n&vr$testxg,%@tug{mn ,%vrfkbm[!cb|'

    window.wenda = __INITIAL_STATE__;
</script>
<script crossorigin="anonymous" src="./悟空问答 - 搜索_files/raven.js.下载"></script>
<script>
    window.Raven && Raven.config('//key@m.toutiao.com/log/sentry/v2/113', {
        tags: {
            bid: 'wenda_pc',
            pid: 'search'
        }
    }).install();
    window.Raven && Raven.setUserContext({
        id: window.wenda.userData && window.wenda.userData.user_id
    });
</script>
<script src="./悟空问答 - 搜索_files/lib_374dc5e.js.下载"></script>
<script>
    function errorimg() {
    }
    $.ajaxSettings['beforeSend'] = function (xhr, settings) {
        if (!(/^http:.*/.test(settings.url) || /^https:.*/.test(settings.url))) {
            // Only send the token to relative URLs i.e. locally.
            xhr.setRequestHeader("wendacsrftoken", $.cookie('wendacsrftoken'));
        }
    };


    var reload_count = {};
    var switchDomainArr = [
        's3.pstatp.com',
        's0.pstatp.com',
        's3a.pstatp.com',
        's3b.pstatp.com',
        's2.pstatp.com'
    ];
    function scriptReloaded(target) {
        var src = target.src;
        var index = parseInt(Math.random() * 5);
        var domain = switchDomainArr[index];
        var obj = src.match(/(http|https)\:\/\/([^\/]*)(\/.*)/);
        if (obj[0] === src && $.inArray(obj[2], switchDomainArr) > -1) {
            var path = obj[3];
            if (!reload_count[path]) {
                reload_count[path] = 0;
            }
            reload_count[path]++;
            if (reload_count[path] > 8) {
                return; //重试10次
            }
            var newSrc = obj[1] + "://" + domain + path;
            var s = document.createElement("script");
            s.onerror = function () {
                scriptReloaded(s);
            }
            s.src = newSrc;
            setTimeout(function () {
                document.head.appendChild(s);
            }, 200);
        }
    }
</script>
<script src="./悟空问答 - 搜索_files/page_search_e2b9c94.js.下载"></script>
<script src="./悟空问答 - 搜索_files/umeditor.lib_c8719a6.js.下载"></script>


<div data-node="widget-share-group" class="widget-share-group">
    <div class="share-group-content clearfix">
        <div class="qr"></div>
        <div data-node="weixin" data-url="" data-desc="" data-log="Share_Weixin|From_" class="share-link weixin"><i
                class="iconfont icon-wechat_share"></i></div>
        <div data-node="weibo" data-url="" data-desc="" data-log="Share_Weibo|From_" class="share-link weibo"><i
                class="iconfont icon-weibo_share"></i></div>
        <div data-node="qzone" data-url="" data-desc="" data-log="Share_Qzone|From_" class="share-link qq"><i
                class="iconfont icon-qzone_share"></i></div>
    </div>
    <div class="share-group-arrow"><i></i></div>
</div>
</body>


<script id="test" type="text/html">
    <div class="w-feed-container"><!---->

        <%--<c:forEach items="${queryarticles}" var="queryarticle">--%>
        {{each articles as article}}
        <div data-log-from="Feed" class="question-v3"><!---->
            <div class="question-title"><h2><a href="${pageContext.request.contextPath}/questionNoLogin/viewarticle1/{{article.qid}}"
                                               target="_blank" data-log="Visit_Question|From_Link"><span
                    style="color:black">{{#article.title}}</span></a></h2>
                <div class="question-info"><span class="question-answer-num">88回答</span><span
                        class="question-follow-num">98人收藏</span></div>
            </div> <!---->
            <div class="question-answers">
                <div class="answer-item-v3"><!----> <!---->
                    <div class="answer-info">
                        <div class="answer-info-user"><a target="_blank"
                                                         href="https://www.wukong.com/user/?uid=85240068459"
                                                         data-log="Visit_Profile|From_ProfilePic"
                                                         class="answer-info-user-avatar"><img alt=""
                                                                                              src="./悟空问答 - 搜索_files/58720010845fb37de4e9">
                            <span class="answer-info-user-name">冯一名
                    <i class="iconfont icon-all_newv" style="font-size: 12px; color: rgb(255, 196, 28);"></i></span></a>
                            <span class="answer-info-user-title">原子创投合伙人</span></div>
                    </div>
                    <div class="answer-item-content"><p><a
                            href="${pageContext.request.contextPath}/questionNoLogin/viewarticle1/{{article.qid}}"
                            data-log="PopUp_AnswerContent|From_">{{#article.content}}<span
                            class="answer-item-whole"></span></a></p></div>
                    <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                        <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">141</span>
                        <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                            class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                        <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                            class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                        data-log="Visit_Comment|From_"
                                                                        class="answer-oper-comments"><i
                            class="iconfont icon-ask_comment"></i> <span class="comment-count">5</span>
                        <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                            class="iconfont icon-share-home"></i> <span>分享</span></a></div>
                </div>
            </div> <!----></div> <!----> <!----> <!----><!---->
        {{/each}}
        <%--</c:forEach>--%>

    </div>
</script>

</html>