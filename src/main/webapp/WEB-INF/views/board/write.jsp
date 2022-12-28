<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-11-27
  Time: 오후 6:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="p-5 mb-4 bg-light rounded-3">
    <div class="d-flex justify-content-center">
        <h1 class="display-5 fw-bold">게시글 작성</h1>
    </div>
</div>

<div class="container">
    <form action="register" method="post">
        ID : <input type="text" value="" name="id" style="width:300px; height:35px;margin-left: 17px; margin-bottom: 10px"><br>
        제목 :   <input type="text" value="" name="title" style="width:1000px; height:35px; margin-bottom: 10px "><br>
        내용 :   <input type="text" value="" name="content" style="width:1000px; height:800px; margin-bottom: 10px"><br>
        <button class="btn btn-danger" style="margin-left: 950px">작성완료</button>
    </form>
</div>


<%@ include file="/WEB-INF/views/layout/footer.jsp" %>