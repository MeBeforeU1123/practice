<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户注册</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
    <script>
        $(function(){
            $("#phone").blur(function(){
                var re = /^[1]([3-9])[0-9]{9}$/;
                if($(this).val()==''){
                    alert("手机号码不能为空！")
                }
                else if ( !re.test( $(this).val() ) ) {
                    alert("手机号码格式不对！")
                }
            });
            $("#email").blur(function(){
                var re = /^\w+@\w+(\.\w+){1,3}$/;
                if($(this).val()==''){
                    alert("邮箱不能为空！")
                }
                else if ( !re.test( $(this).val() ) ) {
                    alert("邮箱格式不对！")
                }
            });
            $("#passWord").blur(function(){
                var re = /^\w{6,18}$/;
                if($(this).val()==''){
                    alert("密码不能为空！")
                }
                else if ( !re.test( $(this).val() ) ) {
                    alert("密码格式不对！")
                }
            });
            $("#reg :submit").click(function(){
                $("#email").trigger("blur");
                $("#pwd").trigger("blur");
                $("#phone").trigger("blur");
                if ( $("#reg").find(".error").length > 0 ) {
                    return false;
                }
            });
        });
    </script>

    <script>
        window.onload=function(){
            var submitBtn = document.getElementById("submit");
            submitBtn.onclick = function () {
                if(!document.getElementById("checkbox").checked) {
                    alert("请认真核对信息,并勾选按钮!");
                    return false;
                }
            };
        }
    </script>
</head>
<body>
<div class="width100 hidden_yh" style="border-top: 1px solid #ddd">
    <div class="width1200 hidden_yh center_yh" style="margin-top: 75px">
        <form action="${ctx}/login/toRes" method="post">
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">用户名：</span>
                <input type="text" id="userName" name="userName" placeholder="请输入您的用户名" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">设置密码：</span>
                <input type="text" id="passWord"  name="passWord" placeholder="6-18位数字" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">手机号：</span>
                <input type="text" id="phone"  name="phone" placeholder="建议使用常用的手机" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh" >
            </div>
            <div class="center_yh hidden_yh" style="width: 475px;margin-bottom: 40px;">
                <span style="margin-right: 40px;height: 42px;line-height: 42px;width: 100px;" class="left_yh block_yh tright">电子邮箱：</span>
                <input type="text" id="email"  name="email" placeholder="请输入邮箱" style="border:1px solid #c9c9c9;width: 292px;height: 42px;font-size: 16px;text-indent: 22px;" class="left_yh">
            </div>
            <p class="font14 c_66" style="text-indent: 500px;margin-top: 30px;">
                <input type="checkbox" id="checkbox" name="rule">我已阅读并同意<a href="https://www.baidu.com/s?ie=UTF-8&wd=%E3%80%8A%E4%BC%9A%E5%91%98%E6%B3%A8%E5%86%8C%E5%8D%8F%E8%AE%AE%E3%80%8B" class="red">《会员注册协议》</a>
                和<a href="https://www.baidu.com/s?ie=UTF-8&wd=%E3%80%8A%E9%9A%90%E7%A7%81%E4%BF%9D%E6%8A%A4%E6%94%BF%E7%AD%96%E3%80%8B" class="red">《隐私保护政策》</a>
            </p>
            <input type="submit" id="submit" value="提交" class="ipt_tj" style="width: 295px;height: 44px;margin-left: 500px;background: #B0C4DE;" >



        </form>
    </div>
</div>
<%@include file="/common/ufooter.jsp"%>

</body>
</html>



















