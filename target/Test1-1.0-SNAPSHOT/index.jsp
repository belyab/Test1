<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 01.12.2021
  Time: 09:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="design.css">
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(document).on("click", "#ajax-button", function () {
            $.get("/getData", function (responseText) {
                $("#ajax-div").text(responseText);
            });
        });
    </script>
</head>
<body>

<div class="wrapper">
    <div class="bus_find_form">
        <div class="title">
            Find bus
        </div>
        <div class="form_wrap">
        <form method="get">
            <div class="input_wrap">
                <label>Номер гаража</label>
            <input type="text" name="garagNumb" placeholder="Введите номер гаража">
            </div>
            <div class="input_wrap">
            <input type="button" id="ajax-button" value="Найти маршрут" class="button">
            </div>
        </form>
        </div>
    </div>
</div>

<div id="ajax-div"></div>

</body>
</html>


