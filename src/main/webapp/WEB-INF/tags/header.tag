<%@ tag description="header template" pageEncoding="UTF-8" %>
<%@ attribute name="resume" fragment="true" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251"/>
    <meta name="keywords" content="Golets Andrii, Голець Андрій, cv, резюме, домашня сторінка"/>
    <meta name="description" content=""/>
    <meta name="author" content="a3060113@gmail.com"/>
    <title>Golets Andrii CV</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous">
    </script>
    <style>
        @page {
            size: A4;
            margin: 0pt;
        }
        body {
            width: 90%;
            max-width: 100%;
            margin-bottom: 30px;
            margin-top: 30px;
            padding: 0px;
        }
        .container {
            width: 100% !important;
            max-width: none !important;
            padding: 0 20px !important;
        }
        .row {
            margin-left: 0 !important;
            margin-right: 0 !important;
            width: 100% !important;
        }
        h3 {
            color: darkgreen;
            margin-top: -8px;
        }

        div.pl1 {
             padding-left: 50px;
        }

        #skills {
            margin-left: -40px;
        }

        #flag {
            margin-left: 40px;
        }


    </style>
</head>
<body>
<div class="container">
    <div class="col-xs-10 col-lg-offset-2">
        <jsp:invoke fragment="resume"/>
</body>
</html>
