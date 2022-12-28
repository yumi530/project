<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2022-12-27
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="p-5 mb-4 bg-light rounded-3">
    <div class="d-flex justify-content-center">
        <h1 class="display-5 fw-bold">회원가입</h1>
    </div>
</div>

<div class="container d-flex justify-content-around mb-5 mt-5">
    <!--  1st box -->
    <div>
        <form id="getForm">
        <div>
            <div>
                <div>
                    <label>아이디</label>
                    <input type="text" class="form-control"  name="id" id="id" value="" >
                </div>
                <div>
                    <label>이름</label>
                    <input type="text" class="form-control"  name="userName" id="userName" value="" >
                </div>
                <div>
                    <label>비밀번호</label>
                    <input type="text" class="form-control" name="pw" id="pw" value="" >
                </div>
                <div>
                    <label>이메일</label>
                    <input type="text" class="form-control"  name="email" id="email" value="" >
                </div>
                <div>
                    <label>가입일</label>
                    <input type="text" class="form-control" name="joinDate" value="" readonly>
                </div>
            </div>
            <div style="margin-top: 10px">
                <button class="btn btn-warning register">회원가입</button>
                <button class="btn btn-secondary list">뒤로가기</button>
            </div>
        </div>
        </form>
    </div>
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

        $('#getForm .register').on('click', function(e) {
            e.preventDefault();
            if(insertList() == true){
            getForm.attr("action", "${contextPath}/member/register");
            getForm.attr("method", "post");
            getForm.submit();
            }
        })
    })

    function insertList() {
        if (confirm("정말 가입하시겠습니까??") == true){    //확인
            return true;
        }else{   //취소
            return false;
        }
    }

</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>