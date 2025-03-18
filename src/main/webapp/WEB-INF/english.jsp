<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>

<t:header>
<jsp:attribute name="resume">
        <div class="row" id="header">
            <div class="col-xs-6">
                <h2>Golets Andrii</h2>
                <br>
                <h3>Java Developer - DevOps</h3>
                <h4>Location: Poland, Bydgoszcz</h4>
                <h4>mail: a3060113@gmail.com</h4>
                <h5>tel: +48 539 965945</h5>
                <h5>Telegram, Whats App: +38 093 3060113</h5>
                    <c:if test="${pdf != true}">
                    <button class="btn-lg btn-success" onclick="location.href='<c:url value='/download/EN'/>'">Download PDF</button>
                    </c:if>
            </div>
            <div class="col-xs-4 col-lg-offset-2">
                <img src="<c:url value='${pageContext.request.contextPath}/static/img/myfoto.jpg'/>">
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Education:</h3>
                <h4>Ukraine, Kyiv:</h4>
                <h5>NTUU "KPI" - "Mechanical engineering". 2000-2006.</h5>
                <h5>Java Rush - 2015 </h5>
                <h5>"Art code IT courses - 2016"</h5>
                <h5>"English Prime" english up to upper intermediate</h5>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Experience:</h3>
                <h4>2020-07 till now: <a href="https://www.amdocs.com/products-services/networks">Amdocs</a> </h4>
                <div class="pl1">
                    <p><strong>Project: </strong> 5G telecom network infrastructure services PCF, CHF</p>
                    <strong>Responsibilities and Technologies: </strong>
                        <br>Developing and managing 5G infrastructure services (PCF, CHF)
                        <br>Providing support for connectivity between 4G and 5G services (DRB)
                        <br>Testing ( Unit, Integration, Performance ) junit, Karate tests, k6,  h2load, jmeter
                        <br>Creating k8s helm configs, managing k8s clusters deployments, creating Jenkins pipelines
                        <br>Java17, OSGi, RxJava, VertX, SpringBoot, openAPI code generation, Maven, VoltDB, Kafka, Docker, k8s, helm, Jenkins
                    </div>
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
                    <br>Collecting events data from game devices for feather Big Data analysis
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
                    <ul><strong>Programming Technologies: </strong>OOP, OOD, TDD, Multithreading, Async, Microservices</ul>
                    <ul><strong>Frameworks: </strong>Spring, OSGI, VertX, RxJava, Camel, Netty</ul>
                    <ul><strong>Tests: </strong>Junit, Mockito, EasyMock, Karate, Jmeter, k6, h2load</ul>
                    <ul><strong>Databases: </strong>PostgreSQL, MySQL, Cassandra, ElasticSearch, InfluxDB, VoltDB</ul>
                    <ul><strong>BigData: </strong>Hadoop, Spark</ul>
                    <ul><strong>Cloud: </strong>AWS (EC2, ECR, Lambda, Kinesis, S3), Google Cloud</ul>
                    <ul><strong>MQs: </strong>ActiveMQ, Artemis, Kafka</ul>
                    <ul><strong>Build Tools: </strong>Maven, Gradle</ul>
                    <ul><strong>VCS: </strong>Git, Gerrit</ul>
                    <ul><strong>Development Tools: </strong>Intellij IDEA</ul>
                    <ul><strong>DevOps tools: </strong>Jenkins, GoCD, docker, docker-compose, ansyble, k8s, kind, Helm</ul>
                    <ul><strong>Monitoring tools: </strong>Grafana, Kibana, Jaeger Tracing</ul>
                    <ul><strong>OS:</strong>Windows, Linux</ul>
                </div>
            </div>
            <br>
        </div>
        <br>
        <div class="row">
            <div class="col-xs-12">
                <h3>Language:</h3>
                <h5>Ukrainian - native. English - Upper Intermediate, Poland - A2</h5>
            </div>
        </div>
        <hr>
</jsp:attribute>
</t:header>