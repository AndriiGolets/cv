<%@tag description="header template" pageEncoding="UTF-8" %>
<%@attribute name="resume" fragment="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Golets Andrii VC</title>
    <link href="<c:url value='/static/css/bootstrap/bootstrap.min.css'/>" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous">
    </script>
    <style>


        h2, h3 {
            color: darkgreen;
            margin-top: -8px;
        }

        #skills {
            margin-left: -40px;
        }

        #flag{
            margin-left: 40px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="col-xs-10 col-lg-offset-2">
        <div id="lang">
            <h4><img src="<c:url value='/static/img/40x60-gb.jpg'/>"> <a href="english"> English</a>
                <span id="flag"><img src="<c:url value='/static/img/40x60-ukraine.jpg'/>"><a href="ukraine"> Українська</a></span>
            </h4>
        </div>
        <jsp:invoke fragment="resume"/>
</body>
</html>
