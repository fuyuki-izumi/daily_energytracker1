<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if> --%>
<label for="tracker_date">日付</label><br />
<input type="date" name="tracker_date" value="<fmt:formatDate value='${energy.tracker_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<form method ="post" action="#">
<label for="am01">1時</label><br />
<select name="am01"  value="${energy.am01}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am02">2時</label><br />
<select name="am02"  value="${energy.am02}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am03">03時</label><br />
<select name="am03"  value="${energy.am03}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am04">04時</label><br />
<select name="am04"  value="${energy.am04}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am05">05時</label><br />
<select name="am05"  value="${energy.am05}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am06">06時</label><br />
<select name="am06"  value="${energy.am06}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am07">07時</label><br />
<select name="am07"  value="${energy.am07}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am08">08時</label><br />
<select name="am08"  value="${energy.am08}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am09">09時</label><br />
<select name="am09"  value="${energy.am09}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am10">10時</label><br />
<select name="am10"  value="${energy.am10}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am11">11時</label><br />
<select name="am11"  value="${energy.am11}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="am12">12時</label><br />
<select name="am12"  value="${energy.am12}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm01">13時</label><br />
<select name="pm01"  value="${energy.pm01}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm02">14時</label><br />
<select name="pm02"  value="${energy.pm02}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm03">15時</label><br />
<select name="pm03"  value="${energy.pm03}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm04">16時</label><br />
<select name="pm04"  value="${energy.pm04}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm05">17時</label><br />
<select name="pm05"  value="${energy.pm05}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm06">18時</label><br />
<select name="pm06"  value="${energy.pm06}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm07">19時</label><br />
<select name="pm07"  value="${energy.pm07}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm08">20時</label><br />
<select name="pm08"  value="${energy.pm08}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm09">21時</label><br />
<select name="pm09"  value="${energy.pm09}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm10">22時</label><br />
<select name="pm10"  value="${energy.pm10}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm11">23時</label><br />
<select name="pm11"  value="${energy.pm11}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<label for="pm12">24時</label><br />
<select name="pm12"  value="${energy.pm12}">
    <option value="0" selected>0%</option>
    <option value="10">10%</option>
    <option value="20">20%</option>
    <option value="30">30%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="60">60%</option>
    <option value="70">70%</option>
    <option value="80">80%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
</select>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>

</form>