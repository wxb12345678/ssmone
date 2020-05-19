<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<style>
    .d {
        width: 100%;
        text-align: center;
        margin-top: 100px;
    }
    .t td {
        text-align: center;
    }
    form {
        display: inline-block;
    }
</style>
<body>
<div class="d">

    <form action="all" method="get">
        <input type="text" name="stuName" placeholder="请输入查询名称">
        <input type="submit" value="查询">
    </form>
    <form action="add.jsp" method="post">
        <input type="submit" value="新增" style="width: 70px;
        background-color: green;
        color: white;
        border: 0;height: 30px">
    </form>

    <c:if test="${user!=null}">
        <table border="1" width="300" align="center">

            <tr>
                <th colspan="4">显示界面</th>
            </tr>
            <tr class="t">
                <td>用户id:</td>
                <td>用户名:</td>
                <td>年龄:</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${user}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.stuName}</td>
                    <td>${u.stuAge}</td>
                    <td>
                        <a href="del?id=${u.id}">删除</a>
                        <a href="update?id=${u.id}">修改</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>
</body>
</html>
