<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="report_date">日付</label><br />
<input type="date" name="report_date" value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">タイトル</label><br /><%--L13 9.3 --%>
<input type="text" name="title" value="${report.title}" />
<br /><br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50">${report.content}</textarea>
<br /><br />



<form method ="post" action="#">
<label for="satisfy">満足度（喜び）</label><br />
<select name="satisfy" <%--value="${report.satisfy}"この記載はいらない、select属性にはvalue無し--%>>
    <option value="1"<c:if test="${report.satisfy == '1' }">selected </c:if>>1</option>
    <option value="2"<c:if test="${report.satisfy == '2' }">selected </c:if>>2</option>
    <option value="3"<c:if test="${report.satisfy == '3' }">selected </c:if>>3</option>
    <option value="4"<c:if test="${report.satisfy == '4' }">selected </c:if>>4</option>
    <option value="5"<c:if test="${report.satisfy == '5' }">selected </c:if>>5</option>
    <option value="6"<c:if test="${report.satisfy == '6' }">selected </c:if>>6</option>
    <option value="7"<c:if test="${report.satisfy == '7' }">selected </c:if>>7</option>
    <option value="8"<c:if test="${report.satisfy == '8' }">selected </c:if>>8</option>
    <option value="9"<c:if test="${report.satisfy == '9' }">selected </c:if>>9</option>
    <option value="10"<c:if test="${report.satisfy == '10' }">selected </c:if>>10</option>
</select>
<br /><br />

<label for="accomplishment">達成感</label><br />
<select name="accomplishment" >
    <option value="1"<c:if test="${report.accomplishment == '1' }">selected </c:if>>1</option>
    <option value="2"<c:if test="${report.accomplishment == '2' }">selected </c:if>>2</option>
    <option value="3"<c:if test="${report.accomplishment == '3' }">selected </c:if>>3</option>
    <option value="4"<c:if test="${report.accomplishment == '4' }">selected </c:if>>4</option>
    <option value="5"<c:if test="${report.accomplishment == '5' }">selected </c:if>>5</option>
    <option value="6"<c:if test="${report.accomplishment == '6' }">selected </c:if>>6</option>
    <option value="7"<c:if test="${report.accomplishment == '7' }">selected </c:if>>7</option>
    <option value="8"<c:if test="${report.accomplishment == '8' }">selected </c:if>>8</option>
    <option value="9"<c:if test="${report.accomplishment == '9' }">selected </c:if>>9</option>
    <option value="10"<c:if test="${report.accomplishment == '10' }">selected </c:if>>10</option>
</select>
<br /><br />


<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>

</form>

<script>

</script>