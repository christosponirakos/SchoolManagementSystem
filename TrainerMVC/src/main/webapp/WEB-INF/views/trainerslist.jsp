<%-- 
    Document   : index
    Created on : May 9, 2020, 9:42:48 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <title>Welcome Page</title>
    </head>
    <body class="bg-light" style="cursor: default;">
        <div class="container">

            <div id="header" class="py-5 text-center text">
                <img src="https://image.flaticon.com/icons/svg/2825/2825449.svg"
                     class="img-fluid \${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}"
                     alt="System logo" width="150" length="150">

                <h1>Private School</h1>
                <div>
                    <h3 class="text-left">List of all Trainers</h3>
                    <table class="table table-hover ">
                        <thead>
                            <tr>
                                <th scope="col">ΙD</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Subject</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${trainers}" var="trainer">
                                <tr>
                                    <th scope="row">${trainer.id}</th>
                                    <th scope="row">${trainer.firstname}</th>
                                    <th scope="row">${trainer.lastname}</th>
                                    <th scope="row">${trainer.subject}</th>
                                    <td><a href="<c:url value='${editurl}/${trainer.id}' />" class="btn btn-success custom-width">edit</a>
                                        <a href="<c:url value='${deleteurl}/${trainer.id}' />" class="btn btn-danger custom-width">delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                <div class="btn btn-outline-primary">
                    <a href="<c:url value='/new' />">Add Trainer</a>
        </div>
            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p>&copy 2020 Christos Ponirakos Ltd.</p>
            </footer>
    </body>
</html>
