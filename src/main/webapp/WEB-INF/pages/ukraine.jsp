<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:header>
<jsp:attribute name="resume">
        <div class="row" id="header">
            <div class="col-xs-6">
                <h1>Голець Андрій</h1>
                <h2>Java Developer</h2>
                <h4>Місто: Київ</h4>
                <h4>mail: a3060113@gmail.com</h4>
                <h4>tel: (093)306-01-13</h4>
            </div>
            <div class="col-xs-4 col-lg-offset-2">
                <img src="<c:url value='/static/img/myfoto.jpg'/>">
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Освіта:</h3>
                <h4>НТУУ "КПІ" Механіко машинобудівний. 2000-2006.</h4>
                <h4>"Art code" курси - OOP and advanced JAVA programing. 2015.</h4>
                <h4>"Java Rush" онлайн курси. 2015</h4>
                <h4>"English Prime" курси - intermediate. 2016.</h4>
            </div>
        </div>
        <hr>
        <div class="row" id="experience">
            <div class="col-xs-12">
                <h3>Досвід роботи:</h3>
                <h4>2016<a href="http://golets.name/TaxiProject"> Online taxi program </a>:</h4>
                <p>Мій власний проект, створений для демонстрації моїх навичок у програмуванні</p>
                <p>Цей проект створено на основі серверних технологій Java і має Веб клієнт і клієнт
                    на основі JavaFX</p>
                <p>Ви можете переглянути список використаних технологій на
                    <a href="http://golets.name/TaxiProject">титульній сторінці проекту.</a></p>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Професіональні та інші навички:</h3>
                <div id="skills">
                    <ul><strong>Мови програмування: </strong>Java SE, Java EE, JavaScript.</ul>
                    <ul><strong>Фреймворки: </strong>Spring(core), JavaFX, Log4j, jUnit Test, Jackson`s, jsoup.</ul>
                    <ul><strong>Веб технології: </strong>HTML, CSS, Bootstrap, Jquery, Ajax, Google API.</ul>
                    <ul><strong>Веб сервіси: </strong>SOAP, REST(Jersey).</ul>
                    <ul><strong>Бази данних: </strong>SQL, JDBC, JPA, Hibernate, MySql.</ul>
                    <ul><strong>Збирання проекту: </strong>Maven.</ul>
                    <ul><strong>Контроль версій: </strong>Git, GitHub.</ul>
                    <ul><strong>Програмне середовище: </strong>Intellij IDEA.</ul>
                    <ul><strong>Сервер застосунків: </strong>Apache Tomcat.</ul>
                    <ul><strong>Сервери розміщення: </strong>Google cloud, OpenShift, heroku.</ul>
                    <ul><strong>Операційні системи:</strong> Linux.</ul>
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-xs-12">
                <h3>Знання мов:</h3>
                <h4>English - intermediate</h4>
            </div>
        </div>
        <hr>
    </div>
</div>
</jsp:attribute>
</t:header>