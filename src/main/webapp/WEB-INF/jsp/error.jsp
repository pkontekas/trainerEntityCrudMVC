<%-- 
    Document   : error
    Created on : Jun 27, 2020, 9:07:33 PM
    Author     : pkontekas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/forms.css" type="text/css"/>
        <link rel="stylesheet" href="css/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <div style="margin-top: 30px; background-image: url(img/nature_10.png)" class="bg-img">
            <div class="overlay main-expand">
                <div class="d-flex justify-content-center align-items-center container">
                    <div class="col-lg-8 col-md-12 col-xs-12">
                        <div class="row text-center">
                            <form class="font-weight-bold form-format main-form formcontainer">
                                <h4 class="h4 text-center">Error Page.<br>Something went wrong. Try again!<br>
                                    ${kindoferror}</h4>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <script>
            setTimeout(function () {
                document.location = "/welcome";
            }, 4000); // <-- this is the delay in milliseconds
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </body>
</html>
