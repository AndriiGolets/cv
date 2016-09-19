<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:header>
<jsp:attribute name="resume">
        <div class="row" id="header">
            <div class="col-xs-6">
                <h1>Golets Andrii</h1>
                <h2>Java Developer</h2>
                <h4>City: Kiev</h4>
                <h4>mail: a3060113@gmail.com</h4>
                <h4>tel: (093)306-01-13</h4>
                <h4><a href="http://golets.name/vc">www.golets.name</a></h4>
                <button class="btn-lg btn-success" onclick="location.href='<c:url value='/download/EN' />'">Download PDF</button>
            </div>
            <div class="col-xs-4 col-lg-offset-2">
                <img src="<c:url value='/static/img/myfoto.jpg'/>">
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Education:</h3>
                <h4>NTUU "KPI" - "Mechanical engineering". 2000-2006.</h4>
                <h4>Java Rush - 2015 (4 month)</h4>
                <h4>"Art code" courses - advanced JAVA programing. 2016.</h4>
                <h4>"English Prime" courses - intermediate. 2016.</h4>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Experience:</h3>
                <h4>My own Projects:</h4>
                <h4> 2016 - 4 month:<a href="http://golets.name/TaxiProject"> "Online taxi program"</a></h4>
                Technologies: JPA-Hibernate, Servlets, Spring, JS, jQuery, Bootstrap, Google API and other.
                <h4>2016 - 1 week: <a href="https://github.com/AndriiGolets/HtmlParse.git"> "MP3 Player". Based on html parser for
                    EX.UA site </a></h4>
                Technologies: JSOUP, JackSon, JSON, JavaFx, Maven
                <h4>2016 - 3 month: <a href="https://github.com/AndriiGolets/TaxiProjectFX"> "Taxi program with JavaFX view" </a></h4>
                Technologies: JDBC, Mysql, JavaFx, Maven, Google API, Client-Server architecture based on Socket
                <h4>2016 - 1 week: <a href="https://github.com/AndriiGolets/resume"> This VC</a></h4>
                Technologies: Spring MVC, deployed on Google cloud
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Professional and other skills:</h3>
                <div id="skills">
                    <ul><strong>Programming languages: </strong>Java, JavaScript.</ul>
                    <ul><strong>Frameworks: </strong>Spring (MVC, Security, REST), JavaFX, Log4j, jUnit Test, Jackson`s, jsoup.</ul>
                    <ul><strong>WEB Technologies: </strong>HTML, CSS, Bootstrap, jQuery, Ajax, Google API.</ul>
                    <ul><strong>Databases: </strong>JDBC, JPA, Hibernate, MySql.</ul>
                    <ul><strong>Build Tools: </strong>Maven.</ul>
                    <ul><strong>VCS: </strong>Git</ul>
                    <ul><strong>Development Tools: </strong>Intellij IDEA.</ul>
                    <ul><strong>App Servers: </strong>Apache Tomcat.</ul>
                    <ul><strong>Server Hosting: </strong>Google cloud, OpenShift, heroku.</ul>
                    <ul><strong>OS:</strong>Linux</ul>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Language:</h3>
                <h4>Ukrainian - native. English - intermediate</h4>
            </div>
        </div>
        <hr>
</jsp:attribute>
</t:header>