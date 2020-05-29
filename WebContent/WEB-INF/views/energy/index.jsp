<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h1>エナジートラッカーとは</h1>
        <p>自身の1日を通した集中力、体力、精神力の波がどうなっているかを可視化する記録である。（要編集）</p>
        <h2>エナジートラッカー　一覧</h2>
        <table id="tracker_list">
            <tbody>
                <tr>
                    <th class="tracker_name">氏名</th>
                    <th class="tracker_date">日付</th>
                    <th class="tracker_action">操作</th>
                </tr>
                <c:forEach var="report" items="${reports}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="tracker_name"><c:out value="${energy.employee.name}" /></td>
                        <td class="tracker_date"><fmt:formatDate value='${energy.tracker_date}' pattern='yyyy-MM-dd' /></td>
                        <td class="tracker_action"><a href="<c:url value='/energy/show?id=${energy.id}' />">詳細を見る</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div id="pagination">
            （全 ${trackers_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((trackers_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/energy/index?page=${i}' />"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p><a href="<c:url value='/reports/new' />">新規トラッカーの登録</a></p>

    </c:param>
</c:import>