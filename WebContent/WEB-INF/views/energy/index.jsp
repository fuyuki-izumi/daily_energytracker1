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
        <p><nobr>自身の1日を通した集中力、体力、精神力の波がどうなっているかを可視化する記録である。</nobr>
        <br><nobr>やり方は主観で％を振っていくだけ。ボーッとしているから20%、最高に冴えているから90%など</nobr>
        <br><nobr>＊なお以下の％帯の割り当ては目安であり個人差による。</nobr>
        </p>
        <br />

        <p class="explanation"><nobr>100~80%帯<span class="bold">＜High-Energy＞</span>アウトプットに関わるエネルギー(集中力、意思決定力)を必要とするワーク</nobr><br>
        <nobr>80~50%<span class="bold">＜High-Concentration＞</span>インプットに関わる集中力を必要とするワーク</nobr><br>
        <nobr>50~30%帯<span class="bold">＜Creative＞</span>思考を必要とするアイデアワーク</nobr><br>
        <nobr>30~0%帯<span class="bold">＜Routine></span>集中力、意思決定を必要としないルーティンワーク</nobr></p><br />


        <h2>エナジートラッカー　一覧</h2>
        <p class="btn"><a href="<c:url value='/energy/new' />">新規トラッカーの登録</a></p>
        <table id="tracker_list">
            <tbody>
                <tr>
                    <th class="tracker_name">氏名</th>
                    <th class="tracker_date">日付</th>
                    <th class="tracker_action">操作</th>
                </tr>
                <c:forEach var="energy" items="${trackers}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="tracker_name"><c:out value="${energy.employee.name}" /></td>
                        <td class="tracker_date"><fmt:formatDate value='${energy.tracker_date}' pattern='yyyy-MM-dd' /></td>
                        <td class="tracker_action"><a href="<c:url value='/energy/show?id=${energy.id}&tracker_date=${energy.tracker_date}' />">詳細を見る</a></td>
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


    </c:param>
</c:import>