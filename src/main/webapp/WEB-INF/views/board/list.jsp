<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-11-26
  Time: 오후 5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<div class="p-5 mb-4 bg-light rounded-3">
    <div class="d-flex justify-content-center">
        <h1 class="display-5 fw-bold">자유게시판</h1>
    </div>
</div>


<div class="container">
    <table class="table">
        <tr>
            <th>No</th>
            <th>Title</th>
            <th>Writer</th>
            <th>WriteDate</th>
        </tr>
        <c:forEach items="${list}" var="b">
            <tr>
                <td>${b.BNo}</td>
                <td><a href="get?bNo=${b.BNo}">${b.title}</a></td>
                <td>${b.id}</td>
                <td>${b.writeDate}</td>
            </tr>
        </c:forEach>
    </table>

    <form action="register" class="d-flex justify-content-end">
        <button class="btn btn-primary">글쓰기</button>
    </form>

</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>