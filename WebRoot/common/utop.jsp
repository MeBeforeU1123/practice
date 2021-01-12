<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<div class="width100" style="height: 50px;background: #EEE9E9;">
    <div class="width1200 center_yh font14 c_33" style="height: 50px;line-height: 50px;">
        <font class="left_yh font20">欢迎来到水果蔬菜商城！</font>
        <div class="right_yh" id="fast_jump">
            <c:if test="${userId!=null}">
                <a href="#">欢迎您：${username}</a>
                <b style="height: 30px;"></b>
                <a href="${ctx}/login/uLogout">退出</a>
                <b style="height: 30px;"></b>
                <a href="${ctx}/car/findBySql">我的购物车</a>
                <b style="height: 30px;"></b>
            </c:if>
            <c:if test="${userId==null}">
                <a href="${ctx}/login/uLogin"><font class="font16">登录</font></a>
                <b style="height: 30px;"></b>
                <a href="${ctx}/login/res"><font class="font16">注册</font></a>
                <b style="height: 30px;"></b>
            </c:if>
            <a href="${ctx}/user/view"><font class="font16">个人中心</font> </a>
        </div>
    </div>
</div>
<div class="width100 hidden_yh " >
    <div class="width1200 center_yh hidden_yh">
        <a href="#" class="block_yh left_yh">
            <img src="${ctx}/resource/images/logo.png" alt="" style="height: 70px">
        </a>
        <div class="right_yh" style="height:28px;width:316px;border:2px solid #B0E0E6;margin-top:-40px;">
            <form action="${ctx}/item/shoplist" method="post">
                <input type="text" placeholder="关键词查询" class="search"  name="condition" value="${condition}">
                <input type="submit"   style="width:59px;height:28px;background:#B0C4DE;border:0;display:block;float:right;color:#fff;" value="搜索">
            </form>
        </div>
    </div>
</div>