<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <style>
        .stdtList {
            display: flex;
            flex-direction: column;
            max-width: 150px;
            width: 100%;
        }
        .studentList:hover {
            cursor: pointer;
            color: blue;
        }
    </style>
</head>
<body>
<h2>Menu</h2>
<div class="stdtList">
    <p id="studentN1" class="studentList">Sơn</p>
    <p id="studentN2" class="studentList">Tự</p>
    <p id="studentN3" class="studentList">Đạt</p>
    <p id="studentN4" class="studentList">Thắng béo</p>
    <p id="studentN5" class="studentList">Thắng gầy</p>
    <p id="studentN6" class="studentList">Phước</p>
    <p id="studentN7" class="studentList">Hải</p>
    <p id="studentN8" class="studentList">Thịnh</p>
    <p id="studentN9" class="studentList">Huy Anh</p>
</div>
<form method="post" action="login">
    <input type="hidden" id="number" name="number">
    <input type="submit" id="btn-send" name="submit" style="display: none">
</form>
<script>
    let stdList = document.getElementsByClassName("studentList")
    let number = document.getElementById("number");
    let btn = document.getElementById("btn-send");

    for (let i = 0; i < stdList.length; i++) {
        stdList[i].addEventListener("click", num1);
    }

    function num1(e) {
        number.value = e.target.id.split("")[stdList.length - 1];
        btn.click();
    }
</script>
</body>
</html>
