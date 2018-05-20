<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:header>
<jsp:attribute name="resume">
        <div class="row" id="header">
            <div class="col-xs-6">
                <h1>Golets Andrii</h1>
                <h2>Java Developer</h2>
                <h4>City: Lviv</h4>
                <h4>mail: a3060113@gmail.com</h4>
                <h4>tel: (093)306-01-13</h4>
                <h4>skype: andrii.golets
                <h4><a href="http://golets.name/cv">www.golets.name</a></h4>
                <c:if test="${pdf != true}">
                <button class="btn-lg btn-success" onclick="location.href='<c:url value='/download/EN' />'">Download PDF</button>
                </c:if>
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
                <h4>Java Rush - 2015 (6 month )</h4>
                <h4>"Art code IT courses"</h4>
                <h4>"English Prime" up to upper intermediate lvl 2016.</h4>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Experience:</h3>
                <h4>2017 till now: <a href="https://www.gameloft.com/en/">GameLoft</a></h4>
                <p><strong>Project: </strong>Game Servers infrastructure</p>
                <p><strong>Responsibilities on the Project: </strong>
                    Creating and managing Game Servers infrastructure based on microservices architecture.
                    Spring Boot, Camel, Artemis, Docker, Ansyble, GoCD, Cassandra.
                </p>
                <h4>2016-2017: <a href="http://intercollab.com/">Inter-collab</a> Canada</h4>
                <p><strong>Project: </strong>Enterprise E-commerce web project what provides
                    different functionality for management credit cards, wallets and paychecks.</p>
                <p><strong>Responsibilities on the Project: </strong>
                    Whole control of the backend part. I work with the project architecture based on MVC structure,
                    manage dao, domain, service and views parts of the project using Java, Spring (Core, MVC, JDBCTemplate, JAX-WS)
                    PostgreSQL Database, SOAP and REST Web Services, Unit Tests</p>
                <br>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Professional and other skills:</h3>
                <div id="skills">
                    <ul><strong>Programming languages: </strong>Java, JavaScript</ul>
                    <ul><strong>Programming Technologies: </strong>OOP, OOD, TDD, Multithreading</ul>
                    <ul><strong>Frameworks: </strong>Spring, Camel, Netty, JavaFX</ul>
                    <ul><strong>Databases: </strong>PostgreSQL, Cassandra, MySql</ul>
                    <ul><strong>MQs: </strong>ActiveMQ, Artemis</ul>
                    <ul><strong>Build Tools: </strong>Maven.</ul>
                    <ul><strong>VCS: </strong>Git</ul>
                    <ul><strong>Development Tools: </strong>Intellij IDEA.</ul>
                    <ul><strong>DevOps tools: </strong>Docker, Ansyble, GoCD, Artifactory</ul>
                    <ul><strong>OS:</strong>Linux</ul>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Language:</h3>
                <h4>Ukrainian - native. English - Upper Intermediate</h4>
            </div>
        </div>
        <hr>
</jsp:attribute>
</t:header>