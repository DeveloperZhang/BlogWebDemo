<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/6
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>

<html>
<head>
    <title>Paper列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="col-md-12 column">
            <div class="page-header" style="text-align: center">
                <h1>
                    论文CRUD
                </h1>
            </div>
        <div class="row">
            <div class="col-md-4 column">
                <%--"<%=basePath %>paper/updatePaper"--%>
                <a class="btn btn-primary" href="<%=path%>/paper/toAddPaper">新增</a>
                    <button type="button" class="btn btn-primary btn-default" onclick="logout()">登出</button>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>论文编号</th>
                        <th>论文名字</th>
                        <th>论文数量</th>
                        <th>论文详情</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="paper" items="${requestScope.get('list')}" varStatus="status">
                        <tr>
                            <td>${paper.paperId}</td>
                            <td>${paper.paperName}</td>
                            <td>${paper.paperNum}</td>
                            <td>${paper.paperDetail}</td>
                            <td>
                                <a href="<%=path%>/paper/toUpdatePaper?id=${paper.paperId}">更改</a> |
                                <a href="<%=path%>/paper/del/${paper.paperId}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="../js/jquery.js"></script>

    <!--  plugins  -->

    <script src="../js/bootstrap.min.js"></script>

    <script>
        function logout() {
            window.location = "<%=path%>/user/logout.do";
        }
    </script>
</body>
</html>