<%-- 
    Document   : trainerform
    Created on : Jun 20, 2020, 6:17:25 PM
    Author     : pkontekas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Creation Form</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/forms.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <div style="margin-top: 40px; background-image: url(img/nature_07.jpg)" class="bg-img">
            <div class="overlay main-expand">
                <div class="d-flex justify-content-center align-items-center container">
                    <div class="col-lg-8 col-md-12 col-xs-12">
                        <div class="row">
                            <springform:form cssClass="font-weight-bold form-format main-form formcontainer needs-validation" action="doinserttrainer" method="post"
                                             modelAttribute="newtrainer" novalidate="true">
                                <h3 class="h3">Trainer Creation Form</h3><br>
                                <div class="form-group">
                                    <label for="firstname">Firstname</label><br>
                                    <springform:input cssClass="form-control" path="firstname" required="true" pattern="[a-zA-Z]+" minlength="2" maxlength="45"/>
                                    <springform:errors path="firstname"/>
                                    <div class="invalid-feedback feedback-icon"><i class="fa fa-times"></i>Numbers, spaces &
                                        symbols not acceptable, 2 to 45 character input only.</div>
                                    <div class="valid-feedback feedback-icon"><i class="fa fa-check"></i>Looks Good!</div>
                                    <small class="form-text text-muted">Use only alphabetic characters</small>
                                </div>
                                <div class="form-group">
                                    <label for="lastname">Lastname</label><br>
                                    <springform:input cssClass="form-control" path="lastname" required="true" pattern="[a-zA-Z]+" minlength="2" maxlength="45"/>
                                    <springform:errors path="lastname"/>
                                    <div class="invalid-feedback feedback-icon"><i class="fa fa-times"></i>Numbers, spaces &
                                        symbols not acceptable, 2 to 45 character input only.</div>
                                    <div class="valid-feedback feedback-icon"><i class="fa fa-check"></i>Looks Good!</div>
                                    <small class="form-text text-muted">Use only alphabetic characters</small>
                                </div>
                                <div class="form-group">
                                    <label for="subject">Subject</label><br>
                                    <springform:input cssClass="form-control" path="subject" required="true" minlength="2" maxlength="45"/>
                                    <springform:errors path="subject"/>
                                    <div class="invalid-feedback feedback-icon"><i class="fa fa-times"></i>2 to 60 character input only.</div>
                                    <div class="valid-feedback feedback-icon"><i class="fa fa-check"></i>Looks Good!</div>
                                    <small class="form-text text-muted">Training Subject such as HTML/SQL/Javascript</small>
                                </div><br>
                                <button class="btn btn-outline-success text-dark font-weight-bold"
                                        onclick="return submitted()" type="submit">Submit</button>
                            </springform:form> 
                        </div>
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
        <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>
        <script type="text/javascript" src="js/form-validation.js"></script>
    </body>
</html>
