<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:header>
<jsp:attribute name="resume">
        <div class="row" id="header">
            <div class="col-xs-6">
                <h2>Golets Andrii</h2>
                <h2>Java Developer</h2>
                <h4>City: Kiev</h4>
                <h4>mail: a3060113@gmail.com</h4>
                <h4>tel: (093)306-01-13</h4>
                <button class="btn-success" onclick="location.href ='/files/txt/111.txt'">Download PDF</button>
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
                <h4>"Art code" courses - advanced JAVA programing. 2016.</h4>
                <h4>"English Prime" courses - intermediate. 2016.</h4>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Experience:</h3>
                <h4>2015 - 4 month: "Java Rush"</h4>
                <h4>2015-2016 - 10 month: "Independent Research Center of IT"</h4>
                <p>position: Java Junior Developer</p>
                <p>On project my responsibilities included fixing the bugs
                    and developing new features for admin part of customer's apps.  </p>
                <p>Technologies: Log4j, jUnit tests, Spring, Java EE Servlets, Ajax, Maven, Tomcat, IntellijIdea and so on.
                <h4>My own Projects:</h4>
                <h4>2016 - 3 month: "Taxi program with JavaFX view" </h4>
                <p>Technologies: JDBC, Mysql, JavaFx, Maven, Google API, Client-Server architecture based on Socket</p>
                <h4>2016 - 1 week: "MP3 Player". Based on html parser for EX.UA site</h4>
                <p>Technologies: JSOUP, JackSon, JSON, JavaFx, Maven</p>
                <h4>2016 - 4 month: "Online taxi program"</h4>
                <p>Technologies:JPA-Hibernate, Servlets, Spring, JS, jQuery, Bootstrap, Google API and other</p>
                <p>You can see description and list of used technologies on my site</p>
                    www.golets.name/TaxiProject <a href="http://golets.name/TaxiProject">Title page.</a></p>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Professional and other skills:</h3>
                <div id="skills">
                    <ul><strong>Programming languages: </strong>Java SE, Java EE, JavaScript.</ul>
                    <ul><strong>Frameworks: </strong>Spring(core), JavaFX, Log4j, jUnit Test, Jackson`s, jsoup.</ul>
                    <ul><strong>WEB Technologies: </strong>HTML, CSS, Bootstrap, Jquery, Ajax, Google API.</ul>
                    <ul><strong>Web Service: </strong>SOAP, REST(Jersey).</ul>
                    <ul><strong>Databases: </strong>SQL, JDBC, JPA, Hibernate, MySql.</ul>
                    <ul><strong>Build Tools: </strong>Maven.</ul>
                    <ul><strong>VCS: </strong>Git, GitHub.</ul>
                    <ul><strong>Development Tools: </strong>Intellij IDEA.</ul>
                    <ul><strong>App Servers: </strong>Apache Tomcat.</ul>
                    <ul><strong>Server Hosting: </strong>Google cloud, OpenShift, heroku.</ul>
                    <ul><strong>OS:</strong> Linux.</ul>
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
    </div>
</div>
</jsp:attribute>
</t:header>