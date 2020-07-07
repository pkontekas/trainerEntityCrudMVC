<%-- 
    Document   : showtrainers
    Created on : Jun 20, 2020, 10:18:09 PM
    Author     : pkontekas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Trainers</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <div class="overlay">
            <div class="d-flex justify-content-center align-items-center container">
                <div class="col-lg-10 col-md-12 col-xs-12">
                    <div class="row">
                        <h2 class="h2">Trainer Database List</h2>
                        <table class="table table-striped table-bordered">
                            <tr style="font-weight: bold">
                                <td>Name</td>
                                <td>Surname</td>
                                <td>Subject</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <c:forEach items="${alltrainers}" var="t">
                                <tr>
                                    <td>${t.firstname}</td>
                                    <td>${t.lastname}</td>
                                    <td>${t.subject}</td>
                                    <td>
                                        <form action="preupdatetrainer" method="post">
                                            <input type="hidden" name="id" value="${t.id}">
                                            <button type="update" class="btn btn-outline-info text-dark font-weight-bold" onclick="return updated()">Update</button>
                                        </form>
                                    </td>
                                    <td>
                                        <form action="dodeletetrainer" method="post">
                                            <input type="hidden" name="id" value="${t.id}">                                     
                                            <button type="delete" class="btn btn-outline-danger text-dark font-weight-bold"
                                                    onclick="return deleted()">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <script type="text/javascript" src="js/form-validation.js"></script>
    </body>
</html>
