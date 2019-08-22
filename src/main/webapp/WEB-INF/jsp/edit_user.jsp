<%--
  Created by IntelliJ IDEA.
  User: Think
  Date: 2018/8/16
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0049)https://www.wukong.com/editUser/?uid=101243966007 -->
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
    <meta name="sogou_site_verification" content="qpGA3ltIUV">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">
    <!--360浏览器支持启动webkit内核-->
    <meta name="renderer" content="webkit">
    <title> 悟空问答</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common_1b698e6.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/widget_6bdd57b.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_4c95c68.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/edit_static_c32574b.css">

    <%--<style>--%>
        <%--.changeMarginTop{--%>
            <%--display: none;--%>
        <%--}--%>
    <%--</style>--%>

    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script>

            $(function(){
                $('#name-wrapper-hide').hide();

                $('#ebtn1').click(function(){

                        $('#name-wrapper-show').hide();
                        $('#name-wrapper-hide').show();

                });
            })

            $(function(){

                $('#cbtn1').click(function(){

                        $('#name-wrapper-show').show();
                        $('#name-wrapper-hide').hide();

                });
            })

            $(function(){
                $('#introduce-wrapper-hide').hide();

                $('#ebtn2').click(function(){

                    $('#introduce-wrapper-show').hide();
                    $('#introduce-wrapper-hide').show();

                });
            })

            $(function(){

                $('#cbtn2').click(function(){

                    $('#introduce-wrapper-show').show();
                    $('#introduce-wrapper-hide').hide();

                });
            })



            function upload() {
                var username1 =  document.getElementById("username1");
                var namewrappershow = document.getElementById("name-wrapper-show");
                var namewrapperhide = document.getElementById("name-wrapper-hide");

                var req1 = new XMLHttpRequest();
                req1.open("get", "${pageContext.request.contextPath}/user/editname/"+username1.value, true);
                req1.send();
                req1.onload = function () {
                    document.getElementById('namechanged').innerHTML = req1.responseText;
                    namewrappershow.style.display = 'block';
                    namewrapperhide.style.display = 'none';
                    window.location.reload();
                }
            }


            function upload1() {
                var introduce1 =  document.getElementById("introduce1");
                var introducewrappershow = document.getElementById("introduce-wrapper-show");
                var introducewrapperhide = document.getElementById("introduce-wrapper-hide");

                var req1 = new XMLHttpRequest();
                req1.open("post", "${pageContext.request.contextPath}/user/editintroduce/", true);
                req1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                req1.send('introduce1=' + introduce1.value);
                req1.onload = function () {
                    document.getElementById('introducechanged').innerHTML = req1.responseText;
                    introducewrappershow.style.display = 'block';
                    introducewrapperhide.style.display = 'none';

                }
            }

            function upfile() {
                var formobj1 =  document.getElementById("upfile1");
                var form1 = new FormData(formobj1);

                var req1 = new XMLHttpRequest();
                req1.open("post", "${pageContext.request.contextPath}/user/upload", true);
                req1.send(form1);
                req1.onload = function () {
                    <%--document.getElementById('head1').src = '${pageContext.request.contextPath}/upload/'+ req1.responseText;--%>
                    document.getElementById('head1').src = req1.responseText;

                    window.location.reload();
                }
            }

    </script>


</head>
<body class="page-edit-static" data-log-from="Edit">
<div id="wrapper">
    <div id="paglet-index-header" class="index-header">
        <div class="index-header-wrapper">
            <header id="pagelet-midbar" class="header-undefined">
                <div data-node="midbarInner" class="midbar-inner">
                    <div class="inner clearfix">
                        <div class="suspension-part">
                            <div class="logo-box"><a href="https://www.wukong.com/" data-log="Visit_Index|From_logo"
                                                     title="悟空问答" class="logo-link"><img
                                    src="${pageContext.request.contextPath}/upload/logo_5df43ca.png" alt="悟空问答" class="logo"></a></div>
                            <div class="search-box">
                                <div data-node="searchBox" data-log-from="SearchBox" class="widget-search-input">
                                    <form action="https://www.wukong.com/search/" method="get" data-node="searchForm"
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
                        <a href="javascript:;" data-node="ask" data-log="PopUp_CreateQuestion|From_" class="ask">提问</a>
                        <div class="nav logined"><a href="${pageContext.request.contextPath}/" data-log="Visit_Index|From_Link"
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
                                        src="./悟空问答_files/3044413937" alt="" class="nav-account-user-avatar"></a>
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
    <main class="main-container page-user">
        <div class="sub-contianer">
            <div class="widget-user-feed">
                <div class="left-part">
                    <div id="large-user-card" class="large-user-card">
                        <div id="widget-usercard-left" data-log-from="ProfileCard" class="w-usercard-left">
                            <div itemscope="itemscope" itemtype="http://schema.org/Person" class="userinfo clearfix"><a
                                    target="_blank" href="https://www.wukong.com/user/?uid=101243966007">
                                <meta itemprop="name" content="小猪HarryZhu">
                                <div class="avatar"><img src="${user_info.picpath}" alt="" itemprop="image"></div>
                                <div class="user-desc"><h1 class="user-name"><span id="namechanged">${user_info.username}</span> <span
                                        class="last-name-letter"><!----></span></h1>
                                    <div itemprop="description" class="user-intro">

                                    </div>
                                    <div class="user-title" id="introducechanged">
                                        我很懒什么都不留下
                                    </div>
                                    <div><a href="javascript:;"><!----></a> <!----> <!----></div>
                                </div>
                            </a></div>
                            <div class="user-data clearfix"><a
                                    href="https://www.wukong.com/attention/?uid=101243966007&amp;type=1"
                                    data-log="Visit_FollowerTab|From_" target="_blank" class="user-data-left"><h3>
                                3
                            </h3> <span>关注</span></a> <a
                                    href="https://www.wukong.com/attention/?uid=101243966007&amp;type=2"
                                    data-log="Visit_FansTab|From_" target="_blank" class="user-data-right"><h3>
                                4
                            </h3> <span>粉丝</span> <!----></a>
                                <div class="vertiacl-line"></div>
                            </div>
                            <div class="achievement-container" uid="101243966007"><!---->
                                <div class="achievement-reading-data">
                                    <div class="first-line"><i class="iconfont icon-reading"></i> <span>回答获 0人阅读</span>
                                    </div>
                                    <div class="other-line"><span>本月获 0人阅读</span></div>
                                </div>
                                <div class="achievement-digg-data">
                                    <div class="first-line"><i class="iconfont icon-praise"></i> <span>回答获 0人点赞</span>
                                    </div>
                                    <div class="other-line"><span>本月共 0人点赞</span></div>
                                </div> <!----> <!----></div>
                        </div>
                    </div>
                </div>
                <div class="main-list">
                    <div class="edit-card-wrapper">
                        <div class="title-wrapper"><span class="title">
                                个人信息
                            </span> <a href="${pageContext.request.contextPath}/follow/profileflush" class="back-user"><span
                                class="back-text">返回个人主页</span> <i class="iconfont icon-forward"></i></a></div>

                        <form id="upfile1" enctype="multipart/form-data">
                        <div class="avatar-wrapper"><span class="labelCol">
                                用户头像
                            </span>

                            <img src="${user_info.picpath}" id="head1">

                            <div data-log="Click_Edit_Avantar|From_" class="layer">
                                编辑
                                <div class="upload-img" onchange="upfile()"><input type="file" name="upfile"></div>
                            </div>
                        </div>
                        </form>

                        <div class="name-wrapper" id="name-wrapper-show"><span class="labelCol">
                                用户名
                            </span> <span class="user-name">
                            ${user_info.username}
                                </span> <span class="edit-name"><i class="iconfont icon-pen"></i><span id="ebtn1">编辑</span></span>
                        </div>

                        <%--展开--%>
                        <div class="name-wrapper changeMarginTop" id="name-wrapper-hide"><span class="labelCol">
                                用户名
                            </span> <input type="text" class="input" id="username1" name="username1"> <!---->
                            <div class="btn-wrapper"><a class="btn btn-save" onclick="upload()" >保存</a> <a class="btn btn-cancel" id="cbtn1">取消</a>
                            </div>
                        </div>
                        <%--展开--%>

                        <div class="introduce-wrapper" id="introduce-wrapper-show"><span class="labelCol">
                                个人介绍
                            </span> <span class="edit-introduce"><i
                                class="iconfont icon-add_icon"></i> <span id="ebtn2">添加一句话介绍自己</span></span></div>

                        <%--展开--%>
                        <div class="introduce-wrapper margin36" id="introduce-wrapper-hide"><span class="labelCol">
                                个人介绍
                            </span> <textarea class="" id="introduce1" name="introduce1"></textarea> <!---->
                            <div class="btn-wrapper"><a class="btn btn-save" onclick="upload1()">保存</a> <a class="btn btn-cancel" id="cbtn2">取消</a>
                            </div>
                        </div>
                        <%--展开--%>

                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<script async="" src="./悟空问答_files/analytics.js.下载"></script>
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
        "cookie_tt_page": "5adc7dc9ef19ff90bac27065eec483d2",
        "description": ""
    }, "is_verify": 0
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
<div id="modal-layer"></div>
<div id="modal-gallery-layer"></div>
<div id="modal-outside-link-layer"></div>
<script crossorigin="anonymous">tac = 'i)69f5em2xes!i#znls"0,<8~z|\x7f@QGNCJF[\\^D\\KFYSk~^WSZhg,(lfi~ah`{md"inb|1d<,%Dscafgd"in,8[xtm}nLzNEGQMKAdGG^NTY\x1ckgd"inb<b|1d<g,&TboLr{m,(\x02)!jx-2n&vr$testxg,%@tug{mn ,%vrfkbm[!cb|'

window.wenda = __INITIAL_STATE__;
</script>
<script crossorigin="anonymous" src="./悟空问答_files/raven.js.下载"></script>
<script src="./悟空问答_files/lib_374dc5e.js.下载"></script>
<script>
    function errorimg() {
    }
    window.Raven && Raven.config('//key@m.toutiao.com/log/sentry/v2/113').install();
    window.Raven && Raven.setUserContext({
        id: window.wenda.userData && window.wenda.userData.user_id
    });
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
<script src="./悟空问答_files/page_edit_d198004.js.下载"></script>
<div class="cropper-layer"></div>


</body>
</html>