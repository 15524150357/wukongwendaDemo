<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/19
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0095)https://sso.toutiao.com/login/?service=https%3A%2F%2Fwww.wukong.com%2Fwenda%2Fwelcome%2F#type=0 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="https://s3.pstatp.com/">
    <link rel="dns-prefetch" href="https://s3a.pstatp.com/">
    <link rel="dns-prefetch" href="https://s3b.pstatp.com/">
    <link rel="dns-prefetch" href="https://p1.pstatp.com/">
    <link rel="dns-prefetch" href="https://p3.pstatp.com/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui">
    <meta name="baidu-site-verification" content="T239HZAbh7">
    <meta name="360-site-verification" content="b96e1758dfc9156a410a4fb9520c5956">
    <meta name="360_ssp_verify" content="2ae4ad39552c45425bddb738efda3dbb">
    <meta name="google-site-verification" content="3PYTTW0s7IAfkReV8wAECfjIdKY-bQeSkVTyJNZpBKE">
    <meta name="shenma-site-verification" content="34c05607e2a9430ad4249ed48faaf7cb_1432711730">
    <meta name="baidu_union_verify" content="b88dd3920f970845bad8ad9f90d687f7">
    <meta name="domain_verify"
          content="pmrgi33nmfuw4ir2ej2g65lunfqw6ltdn5wselbcm52wszbchirdqyztge3tenrsgq3dknjume2tayrvmqytemlfmiydimddgu4gcnzcfqrhi2lnmvjwc5tfei5dcnbwhazdcobuhe2dqobrpu">
    <title>悟空问答</title>
    <meta name="keywords" content="今日头条，头条，头条网，头条新闻，今日头条官网">
    <meta name="description"
          content="《今日头条》(www.toutiao.com)是一款基于数据挖掘的推荐引擎产品，它为用户推荐有价值的、个性化的信息，提供连接人与信息的新型服务，是国内移动互联网领域成长最快的产品服务之一。">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon"
          href="https://s3a.pstatp.com/toutiao/resource/ntoutiao_web/static/image/favicon_8e9c9c7.ico"
          type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout_5fcc025.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_40bd3f7.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_wenda_3ccaeb0.css">
    <link rel="shortcut icon"
          href="https://s3.pstatp.com/toutiao/resource/wenda/wenda_web/static/style/image/favicon_3690b36.ico"
          type="image/x-icon">

    <script>
        window.onload = function () {
            var v = document.getElementById("verifycodechange");
            v.onclick = function () {
                var time = new Date().getTime();
                v.src = "${pageContext.request.contextPath}/user/generatecode?time="+time;
            }
        }
    </script>

</head>
<body style="min-width: 1220px; overflow-x: hidden;"><a href="https://sso.toutiao.com/articles_news_society/"
                                                        style="display:none;"></a>
<div class="y-wrap">
    <div class="content"><a class="logo-wrap" href="http://www.wukong.com/"><img
            src="./悟空问答注册_files/logo_new_2c7582f.png" alt=""></a>
        <div riot-tag="wendaLoginBox" class="wendaLoginBox">
            <div class="y-box login-header">
                <div class="y-left item "><span><a href="${pageContext.request.contextPath}/user/login" style="color: gray">登录</a></span></div>
                <div class="y-left item active"><span>注册</span></div><!--riot placeholder--> </div>
            <div class="login-type">
                <div riot-tag="wendaFadeRegister" service="https://www.wukong.com/wenda/welcome/"
                     captcha="R0lGODdheAAeAIQAAP////j4//b2//Pz/9/f/97e/9ra/83N/56e/5qa/5iY/5aW/5GR/4eH/4CA/3h4/2lp/2Nj/2Fh/1pa/1ZW/1RU/0tL/y0t/wgI/wAA/wAAAAAAAAAAAAAAAAAAAAAAACwAAAAAeAAeAEAI/wABCBxIsKDBgwgTKlzIsKHDhxAjSpxIsaJFiBkAAMgAAEAGACAzAMgAAECGkygzAMiQAQCADBIyyKwAAEAGADgzAMgAgAGABBkAZMgAIAOAo0iTKl3KtKnTp1CTZpg6FYDVqxkAAMgAoKvXrhnCAhg7NkMGABkAqM0AwAGADAAyAJibAUAGAHjz6t3Lt6/fv4ADCx5MuLDhw4gPZ8gAIEMGABkyAJicAYDly5YzAACQAQCADKBDZwCQAYDpDBkAqAaQAUAGAAAyAJhNu7bt27hz697N23aG38ABRMgAIAOA4xkAKF8OIINzAA0AAMgAoHqGDAAAZMgAIAOADAAAZP8AkAFAhgwA0qtfz769+/fw48ufT7++/fv48+vfz7+/f4AABA4kWNDgQYQJFS5k2NDhQ4gPBwDIULEiAIwZNW7k2NHjR5AhRY4k6TEDAAAZAADIACADgAwAMgAAkAHATZwAMgDgmQHAT6AAMgAgmgFABgBJAWQAkAEAgAwApE6lWtXqVaxZtW6dmmECgAwZACgAACADgAwA1K5VmyEDAAAQMgCgayEDgAwAMmQAACBDBgAAMgDIAABAhgwAMgBg3NjxY8iRJU+mXNlxBswZAADIkAEAgAwZAADIAMD0aQAZAKzOACBABgCxM2QAUDsDgAwAMmQAkAFAhgwAMgAgXtz/+HHkyZUvZ97c+XPoyDNMB1A9w/UMALRv597d+3fw4cWPJ1/e/Hn06dWvZ9/e/Xv48eXPp1/f/n38+fXv5789A8AMAgEQJJjhIMKEAABkaOjQIQAAGSZSBGDRYoaMGQFw7OjxI8iQIkeSLMkxA0oAGQAAyAAgA4AMADIAAJDhJs4MADJkAAAgA4CgQgFkAGDUaAYASgFkIAAAQIYMAKZSrWr1KtasWrdynZoBAIAMAABkAGA2A4AMAABkAOD2LYAMGQAMyGD3LgAAGQDwzQAgA4DAADIAyJABQAYAihczbuz4MeTIkicrzoABAIAMGQBQAAAgA4AMAEZnKG0aAIAM/6pXZwCQIQOADBkAAMiQAYCBDAAyAMgAIAOADACGEy9u/Djy5MqXMyeeAQB06BkAAMgAIAOA7Bm2c88A4Dv47xkAAMhgHgCADAIyAMjgHgCABxkAZMgA4D7+/Pr38+/vHyAAgQMJFjR4MAMAABkAAMiQAQCADAAoVgSQAUAGjQAuZABgAUCGDAAAZMgAIAOADBkAZACQAQCADABo1rR5E2dOnTt59qyZAUBQABkyADAKIAMAABkANHUKIAMABAAyVAVwNQOADAC4ZgCQAcACAAUyAMiQAUAGAGvZtnX7Fm5cuXPpss1w9+4BAHv3ZvCbAUBgwYMzFDacAQCADIsXAyZwnAEyAMkZKGcAcBlzZs2bOXf2/Bl0aNGjSZc2fRp1atWrWQMICAA7"
                     hidesns="" mode="1">
                    <div class="baseLogin fadeRegister">
                        <form action="${pageContext.request.contextPath}/user/doreg" method="POST">
                            <div class="input-field"><input id="mobile" type="text" name="username" autocomplete="off"
                                                            spellcheck="false" placeholder="用户名"></div>
                            <div class="input-field phone-code"><input id="code" type="password" name="password"
                                                                       autocomplete="off" spellcheck="false"
                                                                       placeholder="密码">
                            </div>
                            <div class="input-field verification"><input id="captcha1" type="text" name="verify"
                                                                         autocomplete="off" spellcheck="false"
                                                                         placeholder="验证码">
                                <div class="captcha-wrap"><img id="verifycodechange" class="y-right captcha" alt=""
                                                               src="${pageContext.request.contextPath}/user/generatecode">
                                    <span class="tips-bubble">看不清楚？换一张</span></div>
                            </div>

                            <div class="y-box action"><input id="agreement" class="agreement" type="checkbox"
                                                             name="agreement" checked="checked"> <label for="agreement">我已阅读并同意<a
                                    class="licence" href="http://www.toutiao.com/user_agreement/" target="_blank">《今日头条用户协议和隐私条款》</a>
                                <span class="wukong_licence">及<a class="licence"
                                                                 href="https://s2.pstatp.com/toutiao/static-assets/wenda/wukong_licence.html"
                                                                 target="_blank">《悟空问答用户协议和隐私条款》</a></span> </label>
                            </div>
                            <input type="submit" name="submitBtn" class="action-btn" value="注册"></form>
                        <ul class="sns-login">
                            <li class="sns weixin-login" data-pid="weixin"><span>微信</span></li>
                            <li class="sns qq-login" data-pid="qzone_sns"><span>QQ</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<a href="http://www.cnzz.com/stat/website.php?web_id=1259612802" target="_blank" title="站长统计">站长统计</a>
</body>
</html>