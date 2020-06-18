<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--レイアウトファイル --%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>作業報告システム</title>

        <%--レイアウトを追加、フロントエンド --%>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
              <div id="header_menu">
                    <h1><a href="<c:url value='/' />">作業報告システム</a></h1>&nbsp;
                    <c:if test="${sessionScope.login_employee != null}">
                        <c:if test="${sessionScope.login_employee.admin_flag == 1}">
                            <a href="<c:url value='/employees/index' />">従業員管理</a>&nbsp;
                        </c:if>
                        <a href="<c:url value='/reports/index' />">作業報告管理</a>&nbsp;
                        <a href="<c:url value='/energy/index' />">エナジートラッカー</a> &nbsp;
                    </c:if>
                </div>
                <c:if test="${sessionScope.login_employee != null}">
                    <div id="employee_name">
                        <c:out value="${sessionScope.login_employee.name}" />&nbsp;
                        <a href="<c:url value='/logout' />">ログアウト</a>
                    </div>
                </c:if>
            </div>
            <div id="content">  <%--index.jspの内容が入っている --%>
                ${param.content}
            </div>
            <div id="footer">
                by Fuyuki Izumi
            </div>
         </div>

    </body>
</html>