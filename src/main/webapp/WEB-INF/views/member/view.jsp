<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-12-27
  Time: 오후 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="p-5 mb-4 bg-light rounded-3">
    <div class="d-flex justify-content-center">
        <h1 class="display-5 fw-bold">회원정보 보기</h1>
    </div>
</div>

<div class="container d-flex justify-content-around mb-5 mt-5">
    <!--  1st box -->
    <div>
        <div>
            <div>
            </div>
            <div>
                <div>
                    <label>회원번호</label><input type="text" class="form-control"
                                              name="mNo" id ="mNo" value="${view.MNo}" readonly>
                </div>
                <div>
                    <label>아이디</label><input type="text" class="form-control"
                                              name="id" value="${view.id}" readonly>
                </div>
                <div>
                    <label>이름</label> <input type="text" class="form-control"
                                             name="userName" value="${view.userName}" readonly>
                </div>
                <div>
                    <label>비밀번호</label><input type="text" class="form-control"
                                              name="pw" value="${view.pw}" readonly>
                </div>
                <div>
                    <label>이메일</label> <input type="text" class="form-control"
                                              name="email" value="${view.email}" readonly>
                </div>
                <div>
                    <label>가입일</label>
                    <input type="text" class="form-control" name="joinDate" value="${view.joinDate}" readonly>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="d-flex justify-content-center">
  <form id="getForm">
    <div>
        <button class="btn btn-warning modify">수정</button>
        <button class="btn btn-info remove">삭제</button>
        <button class="btn btn-secondary list">목록</button>
    </div>
  </form>
</div>




<script>

  $(function (){
    let getForm = $('#getForm');

    $('#getForm  .list').on('click', function(e) {
      e.preventDefault();
      getForm.attr("action", "${contextPath}/member/list");
      getForm.attr("method", "get");
      getForm.submit();
    })

    $('#getForm .remove').on('click', function(e) {
      e.preventDefault();
      if(deleteList() == true){
        getForm.append($('#mNo'));
        getForm.attr("action", "${contextPath}/member/delete");
        getForm.attr("method", "post");
        getForm.submit();
      }
    })

    $('#getForm .modify').on('click', function(e) {
      e.preventDefault();
      getForm.append($('#mNo'));
      getForm.attr("action", "${contextPath}/member/update");
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