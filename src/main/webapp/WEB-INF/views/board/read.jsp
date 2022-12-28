<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-11-27
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<input type="hidden" name="bNo" id="bNo" value="${read.BNo}">
<input type="hidden" name="id" id="id" value="${read.id}">

<div class="p-5 mb-4 bg-light rounded-3">
    <div class="d-flex justify-content-center">
        <h1 class="display-5 fw-bold">자유게시판</h1>
    </div>
</div>

<div class="container">
    <form id="getForm">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-1">${read.BNo}</div>
                    <div class="col-sm-10">${read.title}</div>
                    <div class="col-sm-1">${read.id }</div>
                </div>
            </div>
            <div class="card-body">
                <div class="fixedimg">
                    ${read.content}
                </div>
            </div>
            <div class="card-footer d-flex justify-content-between">
                <div>
                        <button class="btn btn-warning modify">수정</button>
                        <button class="btn btn-info remove">삭제</button>
                        <button class="btn btn-secondary list">목록</button>
                </div>
                <div>
                    <fmt:parseDate var="regDate" value="${read.writeDate}"	 pattern="yyyy-MM-dd'T'HH:mm" type="both" />
                    등록일 :	<fmt:formatDate value="${regDate}" pattern="yyyy년 MM월 dd일" />
                    <br>
                    <fmt:parseDate var="updateDate" value="${read.changeDate}" pattern="yyyy-MM-dd'T'HH:mm" type="both" />
                    수정일 :	<fmt:formatDate value="${updateDate}" pattern="yyyy년 MM월 dd일" />
                    <br>
                </div>
            </div>
        </div>
    </form>
</div>


<script>
    $(function (){
        let getForm = $('#getForm');

        $('#getForm  .list').on('click', function(e) {
            e.preventDefault();
            getForm.attr("action", "${contextPath}/board/list");
            getForm.attr("method", "get");
            getForm.submit();
        })

        $('#getForm .remove').on('click', function(e) {
            e.preventDefault();
            if(deleteList() == true){
                getForm.append($('#bNo'));
                getForm.attr("action", "${contextPath}/board/delete");
                getForm.attr("method", "post");
                getForm.submit();
            }
        })

        $('#getForm .modify').on('click', function(e) {
            e.preventDefault();
            getForm.append($('#bNo'));
            getForm.append($('#id'));
            getForm.attr("action", "${contextPath}/board/modify");
            getForm.attr("method", "get");
            getForm.submit();
        })

        })

        function deleteList() {
            if (confirm("정말 삭제하시겠습니까??") == true){    //확인
                return true;
            }else{   //취소
                return false;
            }
        }
</script>
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>