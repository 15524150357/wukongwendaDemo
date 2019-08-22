<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/19
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0023)https://www.wukong.com/ -->
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="applicable-device" content="pc,mobile">
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
  <meta name="baidu-site-verification" content="KbXG9YmVWW">
  <meta name="360-site-verification" content="d2d5af5afd7ab435d58bcb3decb28822">
  <meta name="google-site-verification" content="aGcHAsDaqk3chrC0a1ySOxLSc5oiqaV649yu7Xl7qjI">
  <meta name="sogou_site_verification" content="BxZ5It8zZM">
  <meta name="shenma-site-verification" content="4fbe336d62bfe25d0eea203e2e4fe1c4_1503629253">
  <link rel="shortcut icon"
        href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
        type="image/x-icon">
  <!--360浏览器支持启动webkit内核-->
  <meta name="renderer" content="webkit">
  <meta name="description" content="悟空问答，一款靠谱的问答社区，专注分享知识、经验、观念。在这里，所有人都能找到答案、参与讨论。">
  <meta name="keywords" content="悟空问答,头条问答,问答">
  <title>悟空问答</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">

  <style>
    #head1{
      width: 50px;
      height: 50px;
      border-radius: 50%;
    }
  </style>

</head>
<body data-log-from="Index" style="overflow: auto;">
<div id="wrapper" data-log-from="">
  <div id="paglet-index-header" data-log-from="!Nav" class="index-header">
    <div class="index-header-wrapper">
      <header id="pagelet-midbar" class="notlogin header-index">
        <div data-node="midbarInner" class="midbar-inner">
          <div class="inner clearfix">
            <div class="suspension-part">
              <div class="logo-box"><a href="https://www.wukong.com/" data-log="Visit_Index|From_logo"
                                       title="悟空问答" class="logo-link"><img
                      src="${pageContext.request.contextPath}/upload/logo_5df43ca.png" alt="悟空问答" class="logo"></a></div>
              <div class="search-box">
                <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                  <form action="${pageContext.request.contextPath}/questionNoLogin/search" method="get" data-node="searchForm"
                        target="_blank">
                    <div class="input-group clearfix"><input autocomplete="off"
                                                             ga_event="nav_search_input"
                                                             data-node="searchInput" name="keyword"
                                                             type="text" placeholder="搜索你感兴趣的问题">
                      <div class="btn-submit">
                        <button ga_event="nav_search" type="submit" href="javascript:;"><i
                                class="iconfont icon-ask_search"></i></button>
                      </div>
                    </div>
                  </form> <!----></div>
              </div>
            </div>
            <a href="${pageContext.request.contextPath}/question/question1" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask">提问</a>
            <div class="nav"><a href="javascript:;" data-log="Visit_Index|From_Link" title="首页"
                                class="selected">首页</a> <a href="https://www.wukong.com/myquest/"
                                                           data-log="Visit_QuestionInvited|From_"
                                                           title="等我来答" class="">等我来答</a> <a
                    href="https://www.wukong.com/notebook/" target="_blank" data-log="Visit_NoteBook|From_">回答秘籍</a>
              <div class="new-msg-btn"><!----></div>
              <div class="nav-account">
                  <c:choose>
                    <c:when test="${empty user_info}">
                      <div data-node="user-account" class="nav-account-wrapper">
                        <div class="loginBox"><a data-node="login" href="${pageContext.request.contextPath}/user/login"
                                                 class="nav-account-user line login"><span>登录</span></a> <i
                                class="iconfont icon-Details_page_line"></i> <a data-node="register"
                                                                                href="${pageContext.request.contextPath}/user/reg"
                                                                                class="nav-account-user line register"><span>注册</span></a>
                        </div>
                        <div class="dropdown-menu"><i class="triangle"></i>
                          <div><a href="https://www.wukong.com/user/" target="_blank"
                                  class="layer-item"><i class="iconfont icon-ask_write"></i>我的问答</a></div>
                          <div><a class="layer-item"><i
                                  class="iconfont icon-ask_profile_exit"></i>退  出</a></div>
                        </div>
                      </div>
                    </c:when>
                    <c:otherwise>
                      <div class="new-msg-btn"><span class="w-new-msg-btn"><span>消息</span><!----><!----> <div
                              class="w-new-layer layer-wrapper"><i class="triangle"></i> <a class="notice"><span>通知</span>
                        <!----></a> <a class="invite"><span>邀请</span> <!----></a> <a
                              class="digg"><span>点赞</span> <!----></a> <a class="comment"><span>评论</span> <!----></a> <a
                              class="follow"><span>关注</span> <!----></a></div> <!----></span></div>
                      <div data-node="user-account" class="nav-account-wrapper dropdown"><a
                              href="${pageContext.request.contextPath}/follow/profileflush" target="_blank"
                              data-log="Visit_Profile|From_" class="nav-account-user line">

                        <%--<img src="./upload/touxiang.jpg" alt="" class="nav-account-user-avatar">--%>

                            <img src="${user_info.picpath}" id="head1">

                      </a>
                        <div class="dropdown-menu"><i class="triangle"></i>
                          <div><a href="${backpageaddress}" target="_blank"
                                  class="layer-item"><i class="iconfont icon-ask_write"></i>${backstage}</a></div>
                          <div><a class="layer-item" href="${pageContext.request.contextPath}/user/logout"><i
                                  class="iconfont icon-ask_profile_exit"></i>退  出</a></div>
                        </div>
                      </div>
                    </c:otherwise>
                  </c:choose>
              </div>
            </div>
          </div>
        </div>
      </header>
    </div>
  </div>
  <div class="answer-wrapper"></div>
  <main class="main-container page-index tag-0">
    <div id="pagelet-sidebar" class="right-part">
      <div id="placeholver_sidebar">
        <div>
          <div id="user-card" class="user-card"><!----></div>
          <div data-node="hot-board" data-log-from="!Campaign" class="hot-board">
            <div class="unslider">
              <div class="banner unslider-horizontal" style="overflow: hidden;">
                <ul class="unslider-wrap unslider-carousel"
                    style="width: 500%; margin-left: -100%; left: -200%;">
                  <li class="unslider-clone" data-index="4" style="width: 20%;">
                    <div class="anno-content">
                      有奖问答｜零基础玩转财务自由
                    </div>
                    <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                       target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                       class="wenda-board"><img src="./悟空问答未登录主页_files/8e1f0009c8f8dc6bade0" alt=""></a>
                  </li>
                  <li data-index="0" class="" style="width: 20%;">
                    <div class="anno-content">
                      今日头条x勺子课堂：解码大食代
                    </div>
                    <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                       target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                       class="wenda-board"><img src="./悟空问答未登录主页_files/9b23000b3afd0b741a27" alt=""></a>
                  </li>
                  <li data-index="1" class="" style="width: 20%;">
                    <div class="anno-content">
                      我在 2018 世界杯现场
                    </div>
                    <a href="https://www.wukong.com/question/6566860373691990275/" target="_blank"
                       title="我在 2018 世界杯现场" data-log="Visit_Campaign|From_"
                       class="wenda-board"><img src="./悟空问答未登录主页_files/98a3000f4c6f021778dc" alt=""></a>
                  </li>
                  <li data-index="2" class="unslider-active" style="width: 20%;">
                    <div class="anno-content">
                      有奖问答｜零基础玩转财务自由
                    </div>
                    <a href="https://www.wukong.com/wendawap/topic/6566146388508279048"
                       target="_blank" title="有奖问答｜零基础玩转财务自由" data-log="Visit_Campaign|From_"
                       class="wenda-board"><img src="./悟空问答未登录主页_files/8e1f0009c8f8dc6bade0" alt=""></a>
                  </li>
                  <li class="unslider-clone" data-index="3" style="width: 20%;">
                    <div class="anno-content">
                      今日头条x勺子课堂：解码大食代
                    </div>
                    <a href="https://www.wukong.com/wendawap/topic/6578798455391518979/"
                       target="_blank" title="今日头条x勺子课堂：解码大食代" data-log="Visit_Campaign|From_"
                       class="wenda-board"><img src="./悟空问答未登录主页_files/9b23000b3afd0b741a27" alt=""></a>
                  </li>
                </ul>
              </div>
              <nav class="unslider-nav">
                <ol>
                  <li data-slide="0" class="">1</li>
                  <li data-slide="1" class="">2</li>
                  <li data-slide="2" class="unslider-active">3</li>
                </ol>
              </nav>
            </div>
          </div>
          <div data-node="hot-wenda" class="hot-wenda">
            <div data-log-from="Recommended" class="hot-qa"><h4><span>精选回答</span> <a
                    href="https://www.wukong.com/" data-node="recommand-feed" target="_blank">更多
              <i class="iconfont icon-ask_arrow_right"></i></a></h4>
              <div class="hot-qa-list">
                <div class="hot-item hottest"><a
                        href="https://www.wukong.com/answer/6579473024049742083/" target="_blank"
                        data-log="Visit_Question|From_"><h2 class="title">
                  周立波首曝“某某”照片，他可能是谁？这涉及侵犯他人隐私吗？</h2></a>
                  <div class="answer-user">
                    <div class="user-info">
                      <div data-node="like" data-log="Like|From_" class="answer-like"><span
                              data-node="like-count">1836赞</span> <i class="answer-like-icon"></i>
                      </div>
                      <span class="arrow"></span>
                      <div class="user-link"><a
                              href="https://www.wukong.com/user/?uid=72464095424" target="_blank"
                              data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                              src="./悟空问答未登录主页_files/400e0004bb37c3c473e6" alt=""></a> <a
                              href="https://www.wukong.com/user/?uid=72464095424" target="_blank"
                              data-log="Visit_Profile|From_" class="answer-user-name"><span
                              class="uname" style="color: rgb(51, 51, 51);"> 顾颖琼博士说天下
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                              title="物理学博士 美国易贝西雅图分公司软件工程师" style="color: rgb(119, 119, 119);">物理学博士 美国易贝西雅图分公司软件工程师</span></a>
                      </div>
                    </div>
                  </div>
                  <a href="https://www.wukong.com/answer/6579473024049742083/" target="_blank"
                     data-log="Visit_Question|From_">
                    <div class="preview">
                      <div class="preview-image"><img src="./悟空问答未登录主页_files/912500095ab005b0392c"
                                                      alt=""></div>
                      <p class="content">@周立波
                        找到周立波说的"某某"家的豪宅了,简直就是神殿啊！最近周立波被美国法院无罪释放，回到国内的周立波频繁参加各种访谈节目，大谈在美国被中国人中的“某某”所陷害，他口中的“某某”在中国背景深厚，在美国也是家财万贯！住在纽约长岛的顶级豪宅中。近日，周立波老婆在微博上又放出了那个</p>
                    </div>
                  </a></div>
                <div class="hot-item hottest"><a
                        href="https://www.wukong.com/answer/6579466617330073869/" target="_blank"
                        data-log="Visit_Question|From_"><h2 class="title">法国队夺冠后华帝被曝退款难，这涉嫌消费欺诈吗？</h2>
                </a>
                  <div class="answer-user">
                    <div class="user-info">
                      <div data-node="like" data-log="Like|From_" class="answer-like"><span
                              data-node="like-count">85赞</span> <i class="answer-like-icon"></i>
                      </div>
                      <span class="arrow"></span>
                      <div class="user-link"><a
                              href="https://www.wukong.com/user/?uid=101789872124" target="_blank"
                              data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                              src="./悟空问答未登录主页_files/9b24000ee773b872d67e" alt=""></a> <a
                              href="https://www.wukong.com/user/?uid=101789872124" target="_blank"
                              data-log="Visit_Profile|From_"
                              class="answer-user-name no-title"><span class="uname"
                                                                      style="color: rgb(51, 51, 51);">Seventeen</span></a>
                      </div>
                    </div>
                  </div>
                  <a href="https://www.wukong.com/answer/6579466617330073869/" target="_blank"
                     data-log="Visit_Question|From_">
                    <div class="preview">
                      <div class="preview-image"><img src="./悟空问答未登录主页_files/9b8c00018d04e26c6dc6"
                                                      alt=""></div>
                      <p class="content">
                        我是华帝天猫旗舰店的消费者，也是因为“延迟发货致发票逾期”没有享受到华帝“退全款”的客户之一，我可以倾诉一下我的经历。华帝的这波营销是很厉害的，在此之前，我仅仅是听过华帝这个名字，卖什么的都不知道。但我是一个球迷，华帝利用世界杯很好的吸引像我这类消费者的关注；并且正在装修新居期间</p>
                    </div>
                  </a></div>
                <div class="hot-item hottest"><a
                        href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                        data-log="Visit_Question|From_"><h2 class="title">
                  永利宝官方App弹窗提醒投资人报警维权，这类P2P网络理财平台的风险性有多大？</h2></a>
                  <div class="answer-user">
                    <div class="user-info">
                      <div data-node="like" data-log="Like|From_" class="answer-like"><span
                              data-node="like-count">62赞</span> <i class="answer-like-icon"></i>
                      </div>
                      <span class="arrow"></span>
                      <div class="user-link"><a
                              href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                              data-log="Visit_Profile|From_" class="answer-user-avatar"><img
                              src="./悟空问答未登录主页_files/1bf4000f689edff0d528" alt=""></a> <a
                              href="https://www.wukong.com/user/?uid=59202459070" target="_blank"
                              data-log="Visit_Profile|From_" class="answer-user-name"><span
                              class="uname" style="color: rgb(51, 51, 51);"> 朋礼松律师
                                    <i class="iconfont icon-all_newv"
                                       style="font-size: 12px; color: rgb(255, 196, 28);"></i></span> <em>|</em> <span
                              title="刑辩律师" style="color: rgb(119, 119, 119);">刑辩律师</span></a>
                      </div>
                    </div>
                  </div>
                  <a href="https://www.wukong.com/answer/6579056032587186439/" target="_blank"
                     data-log="Visit_Question|From_">
                    <div class="preview">
                      <div class="preview-image"><img src="./悟空问答未登录主页_files/9b8d0000e4c2645e6086"
                                                      alt=""></div>
                      <p class="content">
                        永利宝网贷平台的“爆雷”，只不过是6、7月份“爆雷潮”中的浪花一朵。江浙沪广四地中，除广东地区未见“雷声”外，其余三地的网贷平台，都是前赴后继，雷声频频。
                        P2P网贷平台，到底是个什么鬼？ P2P网贷平台是互联网金融的一种新形态，是指个体网络借贷，即个体和个体之间通过互联网平台实</p></div>
                  </a></div><!----><!----><!----><!----><!----><!----><!----></div>
            </div>
          </div> <!----> <!---->
          <div class="w-contact"><h4><span class="no-text"></span></h4>
            <div class="contact-info"><p>
              © 2017 今日头条
            </p>
              <p class="cooperate">
                悟空问答合作邮箱：wendahz@toutiao.com
              </p>
              <p>
                悟空问答侵权投诉通道：ask@bytedance.com
              </p>
              <p>
                京ICP备12025439号-14
              </p>
              <p>
                京公网安备11000002002030号
              </p>
              <p>
                网络文化经营许可证
              </p>
              <p>
                跟帖评论自律管理承诺书
              </p>
              <p>
                违法和不良信息举报电话：010-83434121
              </p>
              <p>
                公司名称：北京字节跳动科技有限公司/北京字
              </p>
              <p>
                节跳动网络技术有限公司
              </p></div>
          </div>
        </div>
      </div>
    </div>
    <div id="main-header" data-log-from="Feed" class="header">
      <nav class="widget-tag-nav clearfix"><a href="javascript:;" data-node="tag-item"
                                              data-id="6300775428692904450"
                                              class="tag-item current"><span>热门</span></a> <a href="javascript:; "
                                                                                              data-node="tag-item"
                                                                                              data-log="Visit_Feed_Wonderful_Tab|From_"
                                                                                              class="tag-item"><span>精选</span></a>
        <a href="https://www.wukong.com/tag/6215497899397089794/" target="_blank" data-node="tag-item"
           data-log="Visit_FeedSecondTab|From_" class="tag-item"><span>社会</span></a><a
                href="https://www.wukong.com/tag/6215497896830175745/" target="_blank" data-node="tag-item"
                data-log="Visit_FeedThirdTab|From_" class="tag-item"><span>娱乐</span></a><a
                href="https://www.wukong.com/tag/6215497726554016258/" target="_blank" data-node="tag-item"
                data-log="Visit_FeedFourthTab|From_" class="tag-item"><span>体育</span></a><a
                href="https://www.wukong.com/tag/6215497898671475202/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed5thTab|From_" class="tag-item"><span>汽车</span></a><a
                href="https://www.wukong.com/tag/6215497900357585410/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed6thTab|From_" class="tag-item"><span>财经</span></a><a
                href="https://www.wukong.com/tag/6215497899594222081/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed7thTab|From_" class="tag-item"><span>科技</span></a><a
                href="https://www.wukong.com/tag/6215497900164647426/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed8thTab|From_" class="tag-item"><span>育儿</span></a><a
                href="https://www.wukong.com/tag/6215497901590710786/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed9thTab|From_" class="tag-item"><span>历史</span></a><a
                href="https://www.wukong.com/tag/6215497899774577154/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed10thTab|From_" class="tag-item"><span>美食与烹饪</span></a><a
                href="https://www.wukong.com/tag/6215497897518041601/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed11thTab|From_" class="tag-item"><span>数码</span></a><a
                href="https://www.wukong.com/tag/6215497898084272641/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed12thTab|From_" class="tag-item"><span>时尚</span></a><a
                href="https://www.wukong.com/tag/6215847700051528193/" target="_blank" data-node="tag-item"
                data-log="Visit_Feed13thTab|From_" class="tag-item"><span>宠物</span></a>
        <div class="toogle"><span class="text">
        更多<i class="iconfont icon-ask_arrow_down"></i></span>
          <div class="hide-list"><a href="https://www.wukong.com/tag/6215847700907166210/" target="_blank"
                                    data-node="tag-item" data-log="Visit_Feed14thTab|From_"
                                    class="tag-item"><span>收藏</span></a><a
                  href="https://www.wukong.com/tag/6215497901804620289/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed15thTab|From_" class="tag-item"><span>家居</span></a><a
                  href="https://www.wukong.com/tag/6281512530493835777/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed16thTab|From_" class="tag-item"><span>心理</span></a><a
                  href="https://www.wukong.com/tag/6215497897710979586/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed17thTab|From_" class="tag-item"><span>文化</span></a><a
                  href="https://www.wukong.com/tag/6215847700454181377/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed18thTab|From_" class="tag-item"><span>三农</span></a><a
                  href="https://www.wukong.com/tag/6215497895248923137/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed19thTab|From_" class="tag-item"><span>健康</span></a><a
                  href="https://www.wukong.com/tag/6215848044378720770/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed20thTab|From_" class="tag-item"><span>科学</span></a><a
                  href="https://www.wukong.com/tag/6215497899027991042/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed21thTab|From_" class="tag-item"><span>游戏</span></a><a
                  href="https://www.wukong.com/tag/6215497895852902913/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed22thTab|From_" class="tag-item"><span>动漫</span></a><a
                  href="https://www.wukong.com/tag/6215497897312520705/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed23thTab|From_" class="tag-item"><span>教育</span></a><a
                  href="https://www.wukong.com/tag/6215497899963320834/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed24thTab|From_" class="tag-item"><span>职场</span></a><a
                  href="https://www.wukong.com/tag/6215497897899723265/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed25thTab|From_" class="tag-item"><span>旅游</span></a><a
                  href="https://www.wukong.com/tag/6215497900554717698/" target="_blank" data-node="tag-item"
                  data-log="Visit_Feed26thTab|From_" class="tag-item"><span>电影</span></a></div>
        </div>
      </nav>
    </div>
    <div id="main-index-question-list" data-log-from="Feed" class="index-question-list">
      <div class="w-feed">
        <div class="w-feed-container"><!---->
          <c:forEach items="${questions}" var="question">
          <div data-log-from="Feed" class="question-v3"><!---->
            <div class="question-title"><h2><a href="${pageContext.request.contextPath}/questionNoLogin/viewarticle1/${question.qid}"
                                               target="_blank" data-log="Visit_Question|From_Link">${question.title}</a>
            </h2>
              <div class="question-info"><span class="question-answer-num">1028回答</span><span
                      class="question-follow-num">285人收藏</span></div>
            </div> <!---->
            <div class="question-answers">
              <div class="answer-item-v3 has-pic">
                <div class="answer-item-pic">
                    <%--<a href="javascript:"><img src="./悟空问答未登录主页_files/756e0002dfafb60741dd"></a>--%>
                </div> <!---->
                <div class="answer-info">
                  <div class="answer-info-user"><a target="_blank"
                                                   href="${pageContext.request.contextPath}/user/profile/${question.userid}"
                                                   data-log="Visit_Profile|From_ProfilePic"
                                                   class="answer-info-user-avatar"><img alt=""
                                                                                        src="../../upload/touxiang.jpg">
                    <span class="answer-info-user-name">${question.username}
                      <!----></span></a> <!----></div>
                </div>

                <div class="answer-item-content"><p><a
                        href="https://www.wukong.com/answer/6538368528838295811/"
                        data-log="PopUp_AnswerContent|From_">${question.content}<span
                        class="answer-item-whole"></span></a></p></div>

                <div class="answer-oper"><a href="javascript:" data-log="Like|From_" class="w-like">
                  <!----> <i class="iconfont icon-digg_clicked"></i> <span class="like-num">288</span>
                  <span>赞</span></a> <a href="javascript:" data-log="Downvote|From_" class="w-unlike"><i
                        class="iconfont icon-ask_stamp"></i> <span class="unlike-count"></span>
                  <span>踩</span></a> <a href="javascript:" class="w-answer-nointerest-btn"><i
                        class="iconfont icon-ask_close"></i></a> <a href="javascript:"
                                                                    data-log="Visit_Comment|From_"
                                                                    class="answer-oper-comments"><i
                        class="iconfont icon-ask_comment"></i> <span class="comment-count">375</span>
                  <span>评论</span></a> <a href="javascript:" class="w-shareBtn"><i
                        class="iconfont icon-share-home"></i> <span>分享</span></a></div>
              </div>
            </div> <!---->
          </div>
          </c:forEach><!----> <!----> <!---->
        </div>



        <div class="w-feed-loadmore"><span class="w-feed-loadmore-w"></span></div>
      </div>
    </div>
    <div class="sub-contianer"></div>
    <div class="detail"></div>
    <div data-node="loadmore" class="index-question-loadmore">
      <div class="index-question-loadmore-w"></div>
    </div>
  </main>
  <div data-log-from="FloatingBtn" class="assist"><a href="javascript:;" data-node="static-refresh"
                                                     data-log="ActiveRefresh|From_" class="j-refresh"><i
          class="iconfont icon-refresh"></i></a> <a href="javascript:;" data-node="static-feedback"
                                                    data-log="PopUp_CreateFeedback|From_"
                                                    class="j-feedback"><span>反馈</span></a> <a href="javascript:;"
                                                                                              class="j-go-top"><i
          class="iconfont icon-icon_top"></i></a></div>
</div>
<script async="" src="./悟空问答未登录主页_files/analytics.js.下载"></script>
<script>window.__INITIAL_STATE__ = {
    "tag_list": [{
        "concern_id": "6215497899397089794",
        "name": "社会",
        "avatar_uri": "2174\u002F4381636985"
    }, {
        "concern_id": "6215497896830175745",
        "name": "娱乐",
        "avatar_uri": "4254\u002F18263954"
    }, {
        "concern_id": "6215497726554016258",
        "name": "体育",
        "avatar_uri": "3943\u002F8207405904"
    }, {
        "concern_id": "6215497898671475202",
        "name": "汽车",
        "avatar_uri": "4337\u002F5591671038"
    }, {
        "concern_id": "6215497900357585410",
        "name": "财经",
        "avatar_uri": "3967\u002F1870025750"
    }, {
        "concern_id": "6215497899594222081",
        "name": "科技",
        "avatar_uri": "6505\u002F1535952385"
    }, {
        "concern_id": "6215497900164647426",
        "name": "育儿",
        "avatar_uri": "2171\u002F5264744303"
    }, {
        "concern_id": "6215497901590710786",
        "name": "历史",
        "avatar_uri": "2168\u002F6722798100"
    }, {
        "concern_id": "6215497899774577154",
        "name": "美食与烹饪",
        "avatar_uri": "4724\u002F7144721154"
    }, {
        "concern_id": "6215497897518041601",
        "name": "数码",
        "avatar_uri": "2169\u002F5559958157"
    }, {
        "concern_id": "6215497898084272641",
        "name": "时尚",
        "avatar_uri": "6500\u002F6879385816"
    }, {
        "concern_id": "6215847700051528193",
        "name": "宠物",
        "avatar_uri": "6869\u002F1498044864"
    }, {
        "concern_id": "6215847700907166210",
        "name": "收藏",
        "avatar_uri": "5671\u002F2128665155"
    }, {
        "concern_id": "6215497901804620289",
        "name": "家居",
        "avatar_uri": "2173\u002F4877673067"
    }, {
        "concern_id": "6281512530493835777",
        "name": "心理",
        "avatar_uri": "5d70003484147c7c943"
    }, {
        "concern_id": "6215497897710979586",
        "name": "文化",
        "avatar_uri": "2172\u002F5316734714"
    }, {
        "concern_id": "6215847700454181377",
        "name": "三农",
        "avatar_uri": "334000155dd8ec660be"
    }, {
        "concern_id": "6215497895248923137",
        "name": "健康",
        "avatar_uri": "2175\u002F4042563952"
    }, {
        "concern_id": "6215848044378720770",
        "name": "科学",
        "avatar_uri": "6899\u002F7550832423"
    }, {
        "concern_id": "6215497899027991042",
        "name": "游戏",
        "avatar_uri": "6503\u002F2185928320"
    }, {
        "concern_id": "6215497895852902913",
        "name": "动漫",
        "avatar_uri": "6501\u002F4295278399"
    }, {
        "concern_id": "6215497897312520705",
        "name": "教育",
        "avatar_uri": "6425\u002F3433838525"
    }, {
        "concern_id": "6215497899963320834",
        "name": "职场",
        "avatar_uri": "10563\u002F6370695472"
    }, {
        "concern_id": "6215497897899723265",
        "name": "旅游",
        "avatar_uri": "2172\u002F5316156072"
    }, {"concern_id": "6215497900554717698", "name": "电影", "avatar_uri": "3109\u002F8391155993"}],
    "userData": {"is_login": 0, "cookie_tt_page": "53063a5c2cf1c10a54c3f7e6da16bf8b"},
    "_isSpider": false,
    "url": "http:\u002F\u002Fwww.wukong.com\u002F"
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
  <p>©2017 www.wukong.com 京ICP备12025439号-14 京公网安备11000002002030号</p>
  <p>网络文化经营许可证 跟帖评论自律管理承诺书 违法和不良信息举报电话：010-58733394 公司名称：北京字节跳动科技有限公司/北京字节跳动网络技术有限公司</p>
</footer>
<div id="modal-layer" style="display: none;"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<!-- <script src="//s3a.pstatp.com/site/tt_mfsroot/js/umeditor/lang/zh-cn.js"></script>-->

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
</html>