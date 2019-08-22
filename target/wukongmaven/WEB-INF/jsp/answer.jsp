<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 2018/7/20
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/editor-md-master/css/editormd.css" />
    <script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/editor-md-master/editormd.min.js"></script>
    <script>
        window.onload = function () {

            var testEditor = editormd({
                id: "test-editormd",
                height: 640,
                width: "90%",
                placeholder: "文明社会，理性评论，支持Markdown",
                path: "${pageContext.request.contextPath}/editor-md-master/lib/",
                toolbarIcons: function () {
                    return editormd.toolbarModes['simple'];
                }
            });

            var btn = document.getElementById("submit");
            btn.onclick = function () {
                var param = $("#md").serialize();
                var textarea = document.getElementById('topic_markdown_content');

                var req = new XMLHttpRequest();
                req.open('post','${pageContext.request.contextPath}/question/answer',true);
                req.setRequestHeader("Content-type","application/x-www-form-urlencoded")

                req.send(param);
                req.onload = function () {
                    window.location.href = "${pageContext.request.contextPath}" + req.responseText;
                }
            }
        }
    </script>

    <style>
        form{
            margin-left: 400px;
        }

        #md{
            margin-left: 0px;
        }
    </style>
</head>
<body>

<form id="md">
    <div class="editormd" id="test-editormd">
        <textarea class="editormd-markdown-textarea" name="answer_content"
                  id="topic_markdown_content">${topic_markdown_content}</textarea>
    </div>
    <div><input type="hidden" name="answer_qid" value="${qid}"></div>
    <input type="button" value="保存博文" id="submit">
</form>

</body>
</html>
