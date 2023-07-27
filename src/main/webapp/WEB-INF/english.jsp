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
                    <h4><a href="http://www.golets.site">Website</a></h4>
                    <c:if test="${pdf != true}">
                    <button class="btn-lg btn-success" onclick="location.href='<c:url value='/download/EN'/>'">Download
                        PDF
                    </button>
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
                <h4>Java Rush - 2015 </h4>
                <h4>"Art code IT courses - 2016"</h4>
                <h4>"English Prime" english up to upper intermediate</h4>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Experience:</h3>
                <h4>2020-07 till now: <a href="https://www.amdocs.com/products-services/networks">Amdocs</a> </h4>
                <div class="pl1">
                    <p><strong>Project: </strong> 5G network infrastructure microservices PCF, CHF</p>
                    <p><strong>Responsibilities and Technologies: </strong>
                        <br>Developing and managing 5G infrastructure microservices (PCF, CHF)
                        <br>Java8, OSGi, RxJava, VertX, openAPI code generation, Maven, Karate tests, VoltDB, Docker, k8s, helm
                    </p></div>
                <h4>2020-02 to 2020-07 EdgeGravity - Ericsson </h4>
                <div class="pl1">
                <p><strong>Project: </strong>EdgeGravity CI-CD Framework</p>
                <p><strong>Responsibilities and Technologies: </strong>
                    <br>Developing CI-CD Framework based on Jenkins plugins and libraries
                    <br>Java8, Groovy, Google Guice, TDD, JUnit, Jenkins
                </p></div>

                <h4>2019-08 to 2020-02: <a href="https://www.divessi.com/uk-IC/home/">HEAD - SSI</a></h4>
                <div class="pl1">
                <p><strong>Project: </strong>SSI Diver Certification Website</p>
                <p><strong>Responsibilities and Technologies: </strong>
                     <br>Migrating PHP project to Java. Writing Java backend
                     <br>Java8, Spring (Boot, MVC, Data, Security), JPA, MySQL, TDD, JUnit, Gradle
                </p></div>

                <h4>2017-10 to 2019-08: <a href="https://www.gameloft.com/en/">GameLoft Lviv</a></h4>
                <div class="pl1">
                <p><strong>Project: </strong>Game Servers infrastructure</p>
                <p><strong>Responsibilities and Technologies: </strong>
                    <br>Developing managing and monitoring Game Servers Datalake infrastructure based on microservices
                    architecture.
                    <br>Java8, Spring (Boot, Data, Cloud), Camel, Netty,
                    <br>ActiveMQ, Artemis, Docker, Ansyble, GoCD, Grafana, Cassandra, ElasticSearch,
                    <br>InfluxDB, Hadoop, Spark, Hive, Presto, Dremio,
                    <br>AWS (EC2, Kinesis, S3)
                </p></div>

                <h4>2017-05 to 2017-10: <a href="https://codein.software/en">CodeIn Software</a></h4>
                <div class="pl1">
                <p><strong>Project: <a href="http://onlyoriginal.com">OnlyOriginal</a></strong></p>
                 Startup for identification Originality of products. Based on scanning QR codes
                <p><strong>Responsibilities and Technologies: </strong>
                    <br>Creating REST API for mobile and web part of the project.
                    <br>Java8, Spring (Boot, MVC, Data),  JPA, MySQL, PostgreSQL, TDD, JUnit,
                    <br>Electronic Signature, OAuth 2.0
                </p></div>

                <h4>2016-04 to 2017-05: <a href="http://intercollab.com/">Inter-collab</a> Canada</h4>
                <div class="pl1">
                <p><strong>Project: </strong>Enterprise E-commerce web project what provides
                    different functionality for management credit cards, electronic wallets and paychecks.</p>
                <p><strong>Responsibilities and Technologies: </strong>
                    <br>Full Stack development. Java8,  Spring (Core, MVC,
                    <br>JDBCTemplate, JAX-WS). JavaScript, JQuery, DataTables
                    <br>PostgreSQL Database, SOAP and REST Web Services, Unit Tests
                </p></div>
                <br>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <h3>Professional and other skills:</h3>
                <div id="skills">
                    <ul><strong>Programming languages: </strong>Java, Groovy, JavaScript</ul>
                    <ul><strong>Programming Technologies: </strong>OOP, OOD, TDD, Multithreading, Async</ul>
                    <ul><strong>Frameworks: </strong>Spring, OSGI, VertX, RxJava, Camel, Netty</ul>
                    <ul><strong>Tests: </strong>Junit, Mockito, EasyMock, Karate, Jmeter</ul>
                    <ul><strong>Databases: </strong>PostgreSQL, MySQL, Cassandra, ElasticSearch, InfluxDB, VoltDB</ul>
                    <ul><strong>BigData: </strong>Hadoop, Spark</ul>
                    <ul><strong>Cloud: </strong>AWS (EC2, Kinesis, S3), Google Cloud</ul>
                    <ul><strong>MQs: </strong>ActiveMQ, Artemis</ul>
                    <ul><strong>Build Tools: </strong>Maven, Gradle</ul>
                    <ul><strong>VCS: </strong>Git, Gerrit</ul>
                    <ul><strong>Development Tools: </strong>Intellij IDEA</ul>
                    <ul><strong>DevOps tools: </strong>Jenkins, GoCD, Docker, Ansyble, k8s, Helm, Artifactory</ul>
                    <ul><strong>Monitoring tools: </strong>Grafana, Jaeger Tracing</ul>
                    <ul><strong>OS:</strong>Linux</ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <h3>Language:</h3>
                <h4>Ukrainian - native. English - Upper Intermediate</h4>
            </div>
        </div>
        <hr>
</jsp:attribute>
</t:header>