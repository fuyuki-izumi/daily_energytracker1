<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>エナジートラッカー</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.min.js"></script>
</head>
<body>

<canvas id="myChart"></canvas>
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['1時', '２時', '３時', '４時', '５時', '６時', '７時','８時','９時','１０時','１１時','１２時','１３時','１４時','１５時','１６時','１７時','１８時','１９時','２０時','２１時','２２時','２３時','２４時'],
    datasets: [{

      label: 'エナジートラッカー（？日のエナジートラッカーにしたい）',
      data: [energy.am01, energy.am02, energy.am03, energy.am05, energy.am06, energy.am07, energy.am08, energy.am09, energy.am10, energy.am11, energy.am12, energy.pm01, energy.pm02, energy.pm03, energy.pm04, energy.pm05, energy.pm06, energy.pm07, energy.pm08, energy.pm09, energy.pm10, energy.pm11, energy.pm12],
      backgroundColor: "rgba(255,153,0,0.4)"
    }]
  }
});
</script>

</body>
</html> --%>


<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content"> <%--taglib prefix を入れるとエラー回避 --%>

<c:import url="/WEB-INF/views/energy/chart.jsp" />
<%--
<h3>${energy.tracker_date}日の日報一覧</h3>
<table id="report_list">
            <tbody>
                <tr>
                    <th class="report_name">氏名</th>
                    <th class="report_date">日付</th>
                    <th class="report_title">タイトル</th>
                    <th class="report_satisfy">満足度</th>
                    <th class="report_accomplishment">達成感</th>
                    <th class="report_action">操作</th>
                </tr>
                <c:forEach var="report" items="${reports}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="report_name"><c:out value="${report.employee.name}" /></td>
                        <td class="report_date"><fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' /></td>
                        <td class="report_title">${report.title}</td>
                        <td class="report_satisfy">${report.satisfy}</td>
                        <td class="report_accomplishment">${report.accomplishment}</td>
                        <td class="report_action"><a href="<c:url value='/reports/show?id=${report.id}' />">詳細を見る</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table> --%>

        <table id="day_reports">
            <tbody>
                <tr>
                    <th class="report_name">氏名</th>
                    <th class="report_date">日付</th>
                    <th class="report_title">タイトル</th>
                    <th class="report_action">操作</th>
                </tr>
                <c:forEach var="report" items="${day_reports}" varStatus="status">
                    <tr class="row${status.count % 2}">
                        <td class="report_name"><c:out value="${report.employee.name}" /></td>
                        <td class="report_date"><fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' /></td>
                        <td class="report_title">${report.title}</td>
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
