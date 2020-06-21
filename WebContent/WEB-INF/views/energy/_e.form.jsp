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
<form method ="post" action="#" >
<label for="tracker_date">日付</label><br />
<%--以下の奴が怪しい --%>
<input type="date" name="tracker_date" value="<fmt:formatDate value='${tracker.tracker_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />
<%--
<c:forEach var="colNm" begin="1" end="24" varStatus="status">
  <label for="time${status.index}">${status.index}時</label><br />
<select name="time${status.index}">
    <option value="0" >0%</option>
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
</c:forEach>  --%>
<div id ="wrapper">
    <div style="float: left;
                width: 50%">


<label for="am01">1時</label><br />
<select name="am01" >
    <option value="0" <c:if test="${energy.am01 == '0' }">selected </c:if>>0%</option>
    <option value="10" <c:if test="${energy.am01 == '10' }">selected </c:if>>10%</option>
    <option value="20" <c:if test="${energy.am01 == '20' }">selected </c:if>>20%</option>
    <option value="30" <c:if test="${energy.am01 == '30' }">selected </c:if>>30%</option>
    <option value="40" <c:if test="${energy.am01 == '40' }">selected </c:if>>40%</option>
    <option value="50" <c:if test="${energy.am01 == '50' }">selected </c:if>>50%</option>
    <option value="60" <c:if test="${energy.am01 == '60' }">selected </c:if>>60%</option>
    <option value="70" <c:if test="${energy.am01 == '70' }">selected </c:if>>70%</option>
    <option value="80" <c:if test="${energy.am01 == '80' }">selected </c:if>>80%</option>
    <option value="90" <c:if test="${energy.am01 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am01 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am02">2時</label><br />
<select name="am02"  >
    <option value="0" <c:if test="${energy.am02 == '0' }">selected </c:if>>0%</option>
    <option value="10" <c:if test="${energy.am02 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am02 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am02 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am02 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am02 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am02 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am02 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am02 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am02 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am02 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am03">03時</label><br />
<select name="am03"  >
    <option value="0" <c:if test="${energy.am03 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am03 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am03 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am03 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am03 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am03 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am03 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am03 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am03 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am03 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am03 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am04">04時</label><br />
<select name="am04"  >
    <option value="0" <c:if test="${energy.am04 == '0' }">selected </c:if> >0%</option>
    <option value="10"<c:if test="${energy.am04 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am04 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am04 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am04 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am04 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am04 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am04 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am04 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am04 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am04 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am05">05時</label><br />
<select name="am05"  >
    <option value="0" <c:if test="${energy.am05 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am05 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am05 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am05 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am05 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am05 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am05 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am05 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am05 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am05 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am05 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am06">06時</label><br />
<select name="am06"  >
    <option value="0" <c:if test="${energy.am06 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am06 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am06 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am06 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am06 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am06 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am06 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am06 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am06 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am06 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am06 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am07">07時</label><br />
<select name="am07"  >
    <option value="0" <c:if test="${energy.am07 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am07 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am07 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am07 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am07 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am07 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am07 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am07 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am07 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am07 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am07 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am08">08時</label><br />
<select name="am08"  >
    <option value="0" <c:if test="${energy.am08 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am08 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am08 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am08 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am08 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am08 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am08 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am08 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am08 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am08 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am08 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am09">09時</label><br />
<select name="am09"  >
    <option value="0" <c:if test="${energy.am09 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am09 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am09 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am09 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am09 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am09 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am09 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am09 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am09 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am09 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am09 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am10">10時</label><br />
<select name="am10"  >
    <option value="0" <c:if test="${energy.am10 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am10 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am10 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am10 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am10 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am10 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am10 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am10 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am10 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am10 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am10 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am11">11時</label><br />
<select name="am11"  >
    <option value="0" <c:if test="${energy.am11 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am11 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am11 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am11 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am11 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am11 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am11 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am11 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am11 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am11 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am11 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="am12">12時</label><br />
<select name="am12"  >
    <option value="0"<c:if test="${energy.am12 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.am12 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.am12 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.am12 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.am12 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.am12 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.am12 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.am12 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.am12 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.am12 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.am12 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

</div>
<div style="float: right;
            width: 50%">

<label for="pm01">13時</label><br />
<select name="pm01" >
    <option value="0"<c:if test="${energy.pm01 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm01 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm01 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm01 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm01 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm01 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm01 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm01 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm01 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm01 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm01 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm02">14時</label><br />
<select name="pm02" >
    <option value="0"<c:if test="${energy.pm02 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm02 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm02 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm02 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm02 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm02 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm02 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm02 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm02 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm02 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm02 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm03">15時</label><br />
<select name="pm03"  >
    <option value="0" <c:if test="${energy.pm03 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm03 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm03 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm03 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm03 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm03 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm03 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm03 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm03 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm03 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm03 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm04">16時</label><br />
<select name="pm04"  >
    <option value="0" <c:if test="${energy.pm04 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm04 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm04 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm04 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm04 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm04 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm04 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm04 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm04 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm04 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm04 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm05">17時</label><br />
<select name="pm05"  >
    <option value="0" <c:if test="${energy.pm05 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm05 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm05 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm05 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm05 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm05 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm05 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm05 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm05 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm05 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm05 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm06">18時</label><br />
<select name="pm06"  >
    <option value="0" <c:if test="${energy.pm06 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm06 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm06 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm06 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm06 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm06 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm06 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm06 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm06 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm06 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm06 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm07">19時</label><br />
<select name="pm07" >
    <option value="0"<c:if test="${energy.pm07 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm07 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm07 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm07 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm07 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm07 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm07 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm07 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm07 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm07 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm07 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm08">20時</label><br />
<select name="pm08"  >
    <option value="0"<c:if test="${energy.pm08 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm08 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm08 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm08 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm08 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm08 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm08 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm08 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm08 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm08 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm08 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm09">21時</label><br />
<select name="pm09" >
    <option value="0"<c:if test="${energy.pm09 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm09 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm09 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm09 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm09 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm09 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm09 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm09 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm09 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm09 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm09 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm10">22時</label><br />
<select name="pm10"  >
    <option value="0"<c:if test="${energy.pm10 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm10 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm10 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm10 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm10 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm10 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm10 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm10 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm10 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm10 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm10 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm11">23時</label><br />
<select name="pm11" >
    <option value="0"<c:if test="${energy.pm11 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm11 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm11 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm11 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm11 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm11 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm11 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm11 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm11 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm11 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm11 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

<label for="pm12">24時</label><br />
<select name="pm12"  >
    <option value="0"<c:if test="${energy.pm12 == '0' }">selected </c:if>>0%</option>
    <option value="10"<c:if test="${energy.pm12 == '10' }">selected </c:if>>10%</option>
    <option value="20"<c:if test="${energy.pm12 == '20' }">selected </c:if>>20%</option>
    <option value="30"<c:if test="${energy.pm12 == '30' }">selected </c:if>>30%</option>
    <option value="40"<c:if test="${energy.pm12 == '40' }">selected </c:if>>40%</option>
    <option value="50"<c:if test="${energy.pm12 == '50' }">selected </c:if>>50%</option>
    <option value="60"<c:if test="${energy.pm12 == '60' }">selected </c:if>>60%</option>
    <option value="70"<c:if test="${energy.pm12 == '70' }">selected </c:if>>70%</option>
    <option value="80"<c:if test="${energy.pm12 == '80' }">selected </c:if>>80%</option>
    <option value="90"<c:if test="${energy.pm12 == '90' }">selected </c:if>>90%</option>
    <option value="100"<c:if test="${energy.pm12 == '100' }">selected </c:if>>100%</option>
</select>
<br /><br />

</div>
</div>

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>

</form>