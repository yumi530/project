
<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-11-26
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
  <title>KakaO & NiNiz</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" ></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<body>


<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">
    <img src="https://st.kakaocdn.net/commerce_ui/front-friendsshop/real/20221123/103416/assets/images/m960/logo_christmas_1st.gif" class="logo"></a>
    <h2>KANIF(가제)</h2>- kakao friends & niniz fanpage
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/board/list">자유게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/member/list">회원목록</a>
        </li>


      </ul>

      <form class="d-flex">
        <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MDhfMjE4%2FMDAxNjQ5MzcyNDUxNDEw.ZkPIhaW7R3INWSGTcdxsfzBt0fusNoQS2Da4ViWPBhIg.eVZ0fShpVFyRd34QrLKlEUAFllsPvkOnoDUzzK23WGUg.JPEG.newtokid%2F1649332240369.jpg" alt="" width="200" height="200" style="margin-right: 150px">
      </form>
    </div>
  </div>
</nav>
