<%--
  Created by IntelliJ IDEA.
  User: Xzh
  Date: 2019/1/20
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/expert_css/reset.css">
    <link rel="stylesheet" href="../static/expert_css/judge_project.css">
    <link rel="stylesheet" href="../static/expert_css/all-project.css">
    <script src="../static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="../static/script/main.js"></script>
    <title>评审项目</title>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <div class="head_left">
        <img src="../static/images/expert/home.png" alt="">
        <a href="${pageContext.request.contextPath }/index.do">首页</a>
        <img src="../static/images/expert/notice.png" alt="">
        <a href="#">通知</a>
        <img src="../static/images/expert/guide.png" alt="">
        <a href="${pageContext.request.contextPath }/guide.do">业务指南</a>
    </div>

    <div class="head_right">
        <img src="../static/images/user.png" alt="">
        <ul id="userName">${currentExpert.ename}
            <span class="caret"></span>
            <li style="display: none;">
                <a href="${pageContext.request.contextPath }/logoff.do">注销</a>
            </li>
        </ul>
        <img src="../static/images/info.png" alt="">
        <a href="#">消息</a>
    </div>

</div>

<!-- 导航部 -->
<div class="navBar">
    <ul class="list">
        <li >
            <a href="${pageContext.request.contextPath}/sys/select.do"><span class="glyphicon glyphicon-star"></span> 评审项目</a>
        </li>
        <li class="active">
            <a href="${pageContext.request.contextPath}/sys/personage.do" methods="POST"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
        </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">



    <div class="main_info">
        <!-- 评审项目 -->
        <div id="evalution" style="display: block;">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">评审项目</div>
            </div>

            <div id="protype" >
                <div class="containe">
                    <div class="container-left">
                        <div>
                            <div>您需要评审的项目：</div>
                        </div>
                        <div class="active type">
                            <span class="glyphicon glyphicon-chevron-right"></span> ${project.pname}</div>
                    </div>
                    <!-- 评审项目 -->
                    <div class="eva container-right">



                        <div class="rightcon">
                            <div class="rightcon-header">
                                <div class="titleb">
                                    <div class="iconb"></div>
                                    <div class="title-textb">系统给出的参考分数是：**</div>
                                </div>
                                <a href="${pageContext.request.contextPath}/sys/rule.do">查看评审规则</a>

                            </div>
                            <div class="rightcon-con">
                                <div>
                                    <span style="font-size:22px;display: inline-block">项目名称:${project.pname}</span><br/>
                                    <span style="font-size:22px;display: inline-block">主要内容:${project.content}</span><br/>
                                    <span style="font-size:22px ">项目初始源文件:<a href="${pageContext.request.contextPath}/sys/downPublication.do">下载项目发布书</a></span><br/>
                                    <span style="font-size:22px ">公司申报书:<<a href="${pageContext.request.contextPath}/sys/downdeclare.do">下载申报书</a></span>
                                </div>
                            </div>

                        </div>
                        <div class="container-right-footer">
                            <a href="${pageContext.request.contextPath}/sys/h_mark.do?pid=${pid}&cid=${cid}&eid=${eid}">开始打分</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both;"></div>
    </div>

</div>
</div>




<!-- 底部 -->
<div class="footer">
    <div class="copyRight">
        <p>Copy-right 2010 - 2016 JXCIIT GOV.All Rights Reserved</p>
        <p>主办单位：江西省工业和信息化委员会 地址：南昌市红谷滩新区卧龙路999号西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</p>
        <p>赣ICP备10005259号　　　政府网站标识码：3600000013</p>
    </div>
</div>
</body>
</html>