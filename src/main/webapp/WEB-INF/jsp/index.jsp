<%-- 
    Document   : index
    Created on : Jun 20, 2020, 9:24:09 PM
    Author     : pkontekas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <header class="header">
            <div style="height: 100%;" class="overlay main-expand">
                <div class="container">
                    <h2 style="margin-top: 35px;" class="text-center font-weight-bold"><br>Trainer Forms Available</h2>
                    <p style="font-size:large" class="text-center">Below are your available trainer forms for this year:<br>
                    </p>
                    <div class="row text-center">
                        <div class="example col-lg-12 col-md-12 col-xs-12"><a href="../preinserttrainer"><button type="button" class="btn btn-outline-primary btn-lg hugeButton font-weight-bold">New
                                    Trainer</button></a></div>
                        <br> <br> <br>
                        <div class="example col-lg-12 col-md-12 col-xs-12"><a href="../preshowtrainers"><button type="button" class="btn btn-outline-primary btn-lg hugeButton font-weight-bold">Show/Change
                                    Trainers</button></a></div>
                        <br> <br> <br>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <jsp:include page="footer.jsp"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
</body>

</html>