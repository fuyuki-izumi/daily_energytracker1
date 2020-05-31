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

     <%--   <c:choose>
            <c:when test="${report != null}">
                <h2>日報　詳細ページ</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>氏名</th>
                            <td><c:out value="${report.employee.name}" /></td>
                        </tr>
                        <tr>
                            <th>日付</th>
                            <td><fmt:formatDate value="${report.report_date}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                        <tr>
                            <th>内容</th>
                            <td>
                                <pre><c:out value="${report.content}" /></pre>
                            </td>
                        </tr>
                        <tr>
                            <th>登録日時</th>
                            <td>
                                <fmt:formatDate value="${report.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td>
                                <fmt:formatDate value="${report.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                    </tbody>
                </table>

                <c:if test="${sessionScope.login_employee.id == report.employee.id}">
                    <p><a href="<c:url value="/reports/edit?id=${report.id}" />">この日報を編集する</a></p>
                </c:if>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>　--%>

        <p><a href="<c:url value="/reports/index" />">一覧に戻る</a></p>
    </c:param>
</c:import>
