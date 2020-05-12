<%-- 
    Document   : addTrainer
    Created on : May 9, 2020, 6:12:25 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/style.css' />"/>
        <title>Trainers</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </head>
    <body class="bg-light" style="cursor: default;">
        <div class="container">

            <div id="header" class="py-5 text-center text">
                <img src="https://image.flaticon.com/icons/svg/2825/2825449.svg"
                     class="img-fluid \${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}"
                     alt="System logo" width="150" length="150">

                <h1>Private School</h1>

                <h5>The best School Management System</h5>
            </div>
            <div>
                <%
                    String updateUrlFINAL = request.getContextPath() + "/" + request.getAttribute("updateurl");
                    session.setAttribute("updateUrlFINAL", updateUrlFINAL);
                %>
                <form:form method="POST" action="${updateUrlFINAL}" modelAttribute="trainer" class="col-md-6 mt-5 mb-5 mx-auto">
                    <form:input type="hidden" path="id" id="id" class="form-control"/>
                    First Name: <form:input path="firstname" class="form-control" /><br />
                    Last Name: <form:input path="lastname" class="form-control"/><br />
                    Subject : <form:input path="subject" class="form-control"/><br />
                    <input type="submit" class="btn btn-primary btn-md active">
                </form:form>
                <div id="msg">${message}</div>
            </div>
            <div class="col-sm-4-6 text-center btn btn-outline-primary">
                <a href="<c:url value='/' />">Back to the List</a>
            </div>
        </div>

        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p>&copy 2020 Christos Ponirakos Ltd.</p>
            <script src="/validations.js"></script>
        </footer>
    </body>
</html>
