<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>
    <%@include file="/common/utop.jsp"%>
    <div class="width100" style="height: 535px;background: #9FB6CD;margin-top: 40px;">
        <!--导航条-->
        <div class="width100" style="height: 45px;background: #B0C4DE;margin-top: 40px;position: relative;z-index: 100;">

            <!--中间的部分-->
            <div class="width1200 center_yh relative_yh" style="height: 45px;">
                <!--列表导航-->
                <div class="left_yh Selected" style="width: 230px;height: 45px;background: #B0E0E6;" id="hiddenShow">
                    <!--头部的图标-->
                    <img src="${ctx}/resource/user/images/cd.png" class="left_yh" style="margin-left: 24px;" alt="">
                    <span class="block_yh left_yh fff" style="height: 45px;line-height: 44px;margin-left: 10px;">分类</span>
                    <!--导航展开部分-->
                    <div class="downSlide" style="background: #B0E0E6">
                        <c:forEach items="${lbs}" var="data" varStatus="l">
                            <div class="n1Nav" style="border-bottom:1px solid #B0C4DE;width: 230px;background:#B0E0E6 ">

    <%--                        <hr style="width: 50px ;height:1px;border:none;"/>--%>
                                <font class="font16" style="color: #6E7B8B"><b>${data.father.name}</b></font>
                                <img src="${ctx}/resource/user/images/jt.png" alt="" style="margin-right:14px;">

                                <div class="n2Nav">
                                    <div class="n3Nav">
                                        <h2 style="color: #363636">${data.father.name}</h2>
                                        <c:forEach items="${data.childrens}" var="child" varStatus="ll">
                                            <a href="${ctx}/item/shoplist?categoryIdTwo=${child.id}">${child.name}</a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!--普通导航-->
                <div class="left_yh font16" id="pageNav">
                    <a href="${ctx}/login/uIndex">首页</a>
                    <a href="${ctx}/news/list">公告</a>
                    <a href="${ctx}/message/add">留言</a>
                </div>
            </div>
        </div>
        <!--轮动广告-->
        <div class="width1200 center_yh hidden_yh" style="position: relative;z-index:80;">
            <div class="example2" style="width: 1200px;height: 490px;overflow: hidden;margin-left: 230px;">
                <ul>
                    <li><img src="${ctx}/resource/images/lb1.jpg" alt=""></li>
                    <li><img src="${ctx}/resource/images/lb2.jpg" alt=""></li>
                    <li><img src="${ctx}/resource/images/lb3.jpg" alt=""></li>
                    <li><img src="${ctx}/resource/images/lb4.jpg" alt=""></li>
                </ul>
            </div>
            <script>
                $(function () {
                    $(".example2").luara({width:"966",height:"490",interval:4500,selected:"seleted",deriction:"left"});
                });
            </script>
        </div>
    </div>




<!--折扣商品-->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #B0E0E6; margin-top: 20px;">
        <font class="left_yh font20">折 扣 大 促 销</font>
    </div>
    <div class="width100 hidden_yh" style="height: 480px;">
        <div class="normalPic">
            <c:forEach items="${zks}" var="data" varStatus="l">
                <a href="${ctx}/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px;">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin:0 auto">
                </a>
            </c:forEach>
        </div>
    </div>
</div>

<!--热门商品-->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #B0E0E6; margin-top: 20px;">
        <font class="left_yh font20">热 门 商 品</font>
    </div>
    <div class="width100 hidden_yh" style="height: 480px;">
        <div class="normalPic">
            <c:forEach items="${rxs}" var="data" varStatus="l">
                <a href="${ctx}/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px;">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin:0 auto">
                </a>
            </c:forEach>
        </div>
    </div>
</div>
    <%@include file="/common/ufooter.jsp"%>
</body>
</html>



















