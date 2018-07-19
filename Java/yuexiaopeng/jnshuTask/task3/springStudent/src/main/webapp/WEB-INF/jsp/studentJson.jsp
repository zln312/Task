<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<div style="text-align:center">
    <h1>所有学生的json格式数据如下</h1>
</div>
<br>
<br><br>

<div style="text-align:center">
    <json:object>
        <br><br><json:array name="student" var="stu" items="${student1}">
            <json:object>
                <json:property name="id" value="${stu.id}"/>
                <json:property name="createAt" value="${stu.createAt}"/>
                <json:property name="updateAt" value="${stu.updateAt}"/>
                <json:property name="name" value="${stu.name}"/>
                <json:property name="qq" value="${stu.qq}"/><br><br>
                <json:property name="studyType" value="${stu.studyType}"/>
                <json:property name="studyId" value="${stu.studyId}"/>
                <json:property name="joinTime" value="${stu.joinTime}"/>
                <json:property name="university" value="${stu.university}"/>
                <json:property name="dailyLink" value="${stu.dailyLink}"/>
                <json:property name="slogen" value="${stu.slogen}"/>
                <json:property name="master" value="${stu.master}"/>
            </json:object>
        </json:array>
    </json:object>
</div>
        <br>
        <div style="text-align:center">
            <a href="?start=0">首  页</a>
            <a href="?start=${page.start-page.count}">上一页</a>
            <a href="?start=${page.start+page.count}">下一页</a>
            <a href="?start=${page.last}">末  页</a>
        </div>
