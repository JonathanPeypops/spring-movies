<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Films</title>
    <style>
        td:last-child{background-color: aliceblue; color: darkgreen;}
        td:first-child{background-color: black; color: aliceblue;}
    </style>
</head>
<body>
<h1>Films</h1>
<table border="2"; bgcolor="#00bfff">
    <tr>
        <th>ID</th>
        <th>Title</th>
    </tr>

    <c:forEach var="films" items="${films}">
        <c:choose>
            <c:when test="${films ==null or empty films}">
                <div> no films found</div>
            </c:when>
            <c:otherwise>
                <tr>
                    <td> ${films.id} </td>
                    <td> ${films.title} </td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>

</table>
</body>
</html>
