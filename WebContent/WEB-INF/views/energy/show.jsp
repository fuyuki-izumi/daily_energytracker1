<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content"> <%--taglib prefix を入れるとエラー回避 --%>

<c:import url="/WEB-INF/views/energy/chart.jsp" />

<h3>${energy.tracker_date}日の日報一覧</h3>


        <table id="day_reports">
            <tbody>
                <tr>
                   <%--  <th class="report_name">氏名</th>
                    <th class="report_date">日付</th> --%>
                    <th class="report_title">タイトル</th>
                    <th class="created_at">登録日時</th>
                    <th class="report_satisfy">満足感</th>
                    <th class="report_accomplihment">達成感 </th>
                    <th class="report_action">操作</th>
                </tr>
                <c:forEach var="report" items="${day_reports}" varStatus="status">
                    <tr class="row${status.count % 2}">
                      <%--   <td class="report_name"><c:out value="${report.employee.name}" /></td>
                        <td class="report_date"><fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' /></td> --%>
                        <td class="report_title">${report.title}</td>
                        <td class="created_at"><fmt:formatDate value="${report.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        <td class="report_satisfy">${report.satisfy}</td>
                        <td class="report_accomplishment">${report.accomplishment}</td>
                        <td class="report_action"><a href="<c:url value='/reports/show?id=${report.id}' />">詳細を見る</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

       <%--  <div id="pagination">
            （全 ${reports_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((reports_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div> --%>

         <c:if test="${sessionScope.login_employee.id == energy.employee.id}">
                    <p><a href="<c:url value="/energy/edit?id=${energy.id}" />">このトラッカーを編集する</a></p>
                </c:if>

        <p><a href="<c:url value="/energy/index" />">一覧に戻る</a></p>
    </c:param>
</c:import>
