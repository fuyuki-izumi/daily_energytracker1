<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
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
                            <%--<pre>タグにより、改行を改行のまま表示できるようになる。 --%>
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

                        <tr>
                            <th>満足度（喜び）</th>
                            <td>
                                <c:out value="${report.satisfy}" />
                            </td>
                        </tr>
                        <tr>
                            <th>達成感</th>
                            <td>
                                <c:out value="${report.accomplishment}" />
                            </td>
                        </tr>

                    </tbody>
                </table>

         <%--日報の作成者以外の人が該当の日報を編集できないよう、直下のコードで、
         違う人の日報の場合はeditへのリンクを出さないようにしている。 --%>
                <c:if test="${sessionScope.login_employee.id == report.employee.id}">
                <%-- EditServetを呼び出し --%>
                    <p><a href="<c:url value="/reports/edit?id=${report.id}" />">この日報を編集する</a></p>
                </c:if>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>

        <%-- いいねボタン→YoineUpdateServlet(POST)呼び出し l14 3.6参照
        <p><a href="<c:url value='/yoine/update' />">いいね </a></p> --%>
        <form name="form_yoine" method="POST" action="<c:url value='/yoine/update?token=${_token}&report_id=${report.id}' />">
        <!-- CSRF -->
        <a href="javascript:form_yoine.submit()">いいね</a>
        </form>
      <!--     <input type="hidden" name="_token" value="${_token}" />
        </form> -->
        <p><a href="<c:url value="/reports/index" />">一覧に戻る</a></p>
    </c:param>
</c:import>