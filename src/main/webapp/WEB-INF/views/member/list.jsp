<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-12-19
  Time: 오후 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<div class="container">

    <table class="table">
        <tr>
            <th>mNo</th>
            <th>Name</th>
            <th>Email</th>
            <th>JoinDate</th>
        </tr>
        <c:forEach items="${list}" var="b">
            <tr>
                <td>${b.MNo}</td>
                <td><a href="view?mNo=${b.MNo}">${b.userName}</a></td>
                <td>${b.email}</td>
                <td>${b.joinDate}</td>
            </tr>
        </c:forEach>
    </table>

    <form action="insert" class="d-flex justify-content-end">
        <button class="btn btn-primary">회원가입하기</button>
    </form>

</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>