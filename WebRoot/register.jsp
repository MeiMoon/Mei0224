<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>个人注册</title>
<style>
*{
    margin:0;
    padding:0;
    list-style:none;
    font-family: "Microsoft YaHei","Hiragino Sans GB";
} 
.header{
    height:110px;    
    background: url(image/headbg.jpg) repeat-x left bottom;
}
.header>div{
    width:1210px;
    margin:0 auto;
} 
a{
    color:#666;
    text-decoration:none
}
a:hover{
    color:#C81623			 	
}  
.logo{
    width:160px;
    height:50px;
    float:left;
    margin-top:24px; 
    background:url(image/icon.png);
} 
.logo-title {
    float: left;
    height: 34px;
    line-height: 34px;
    font-size: 24px;
    color: #333;
    padding-left: 30px;
    margin-top: 34px; 
}
.have-account {
    font-size: 16px;
    float: right;
    margin-top: 55px;
    color: #999;
}
.con{
    width:990px;
    height:655px;
    margin:0 auto;	
}
.main {
    margin: 50px auto 60px;
    width: 830px;
}
.left {
    width: 400px; 
    float: left;
} 
.left_con {
    position: relative;
    border: solid 1px #ddd;
    width: 398px;
    height: 52px;
    z-index: 0;
    margin-bottom:32px;
}
label{
    float: left;
    width: 90px;
    height: 52px;
    line-height: 52px;
    padding-left: 20px;     
    font-size: 14px;
    color: #666;
}
.field {
    border: 0;
    font-size: 14px;
    width: 230px;
    height: 46px; 
    padding-left: 20px;  
	margin-top:2px;
    outline:none;
    cursor: auto;
    z-index: 3;
}
.form-agreen {
    color: #333;
    font-size: 12px;
    margin-bottom:32px;
}
.form-agreen input{
    width: 18px;
    height: 18px;
    border: solid 1px #cfd1d3;
    vertical-align: text-top;
    padding: 0;
    margin: 0;
    margin-right: 10px;
}
.input-tip { 
    height: 27px; 
    padding-top: 5px;
}
.btn-register {
    width: 100%;
    height: 54px;
    color: #fff;
    background: #e22;
    border: 0;
    font-size: 16px;
    font-family: "Microsoft YaHei","Hiragino Sans GB";
}
.right {
    float: left;
    margin-left: 104px;
    height: 605px;
    padding-left: 90px;
    border-left: solid 1px #e6e6e6;
	font-size: 14px;
}
.company-reg {
    width: 160px;
    height: 60px;
    border-bottom: solid 1px #ddd;
    margin-left: 30px;
}
.i-company {
	display: inline-block;
    width: 30px;
    height: 29px;
    vertical-align: middle;
    margin-right: 15px;
	background:url(image/icon.png);
    background-position: 0 -50px;
} 
.inter-cust {
    width: 160px;
    margin-left: 30px;
    margin-top: 30px;
}
.inter-cust a {
    display: block;
    width: 170px;
    height: 40px;
}
.i-global {
	background:url(image/icon.png);
    background-position: -50px -50px;
	display: inline-block;
    width: 30px;
    height: 30px;
    vertical-align: text-bottom;
    margin-right: 15px;
    float: left;
    margin-top: 7px; 
}
.inter-cust a span {
    display: inline-block;
}
.phone-fast-reg {
    background:url(image/phone.jpg) no-repeat;
    width: 213px;
    height: 270px;
    margin-top: 50px;
}
.footer {
    width:1210px;
    margin:0 auto;
    font-size: 12px;
    text-align: center;
    border-top: solid 1px #e6e6e6;
    color: #999;
    padding-bottom: 30px;
}
 .links {
    padding-top: 30px;
    padding-bottom: 15px;
}
.footer a {
    color: #999;
    margin: 0 10px;
}
</style>
<script type="text/javascript"> 
//检查注册
function checkRegister(){ 
	//获取元素对象  位数 是   5 - 12 之间  可以由数字  字符 下划线组成
	//账号
	var name = document.getElementById("form-account").value;
	//密码
	var password1 = document.getElementById("form-pwd").value;
	//重复密码
	var password2 = document.getElementById("form-equalTopwd").value;
	/**
		账号跟密码的正则表达式
		\w 代表 数字 字母 下划线 
		{5,12} 长度 在 5 - 12 之间
	*/
	var regexNP = /^\w{5,12}$/; 

	//判断
	//test  如果 里面的对象 跟正则表示 匹配成功的话 返回 true 否则返回 false;
	if(!regexNP.test(name)){
		alert("请输入有效的账号信息 ！");
		return  false;
	}else if(!regexNP.test(password1)){
		alert("请输入有效的密码信息 !");
		return  false;
	}else if(password1 != password2){
		alert("两次输入的密码不一致 !");
		return  false;
	}else{
		//全部输入正确
		return true;	
	} 
	//表示 不提交表单信息
	return false;
} 
</script> 
</head>
<body>
    
<div class="header">
    <div class="w">
        <a href="#" class="logo">
        </a>
        <div class="logo-title">欢迎注册</div>
        <div class="have-account">已有账号？ <a href="login.jsp">请登录</a></div>
    </div> 
</div>
<div class="con"> 
    <div class="main">
        <div class="left">
            <!--用户注册-->
            <form method="post" action="register.do" onSubmit="return checkRegister()">
                 <div class="left_con">
                    <label>用　户　名</label>
                    <input type="text" id="form-account" name="username" class="field" maxlength="20" placeholder="您的账户名和登录名 "  >
                   
                </div> 
                <div class="left_con">
                    <label>设 置 密 码</label> 
                    <input type="password" name="password" id="form-pwd" class="field" maxlength="20" placeholder="建议至少使用两种字符组合 " > 
                </div> 
                <div class="left_con">
                    <label>确 认 密 码</label> 
                    <input type="password" name="pwdRepeat" id="form-equalTopwd" class="field" placeholder="请再次输入密码 " maxlength="20" > 
                </div>  
                <div class="form-agreen"> 
                	<input type="checkbox" checked="">我已阅读并同意<a href="#" style="color: #38f;">《京东用户注册协议》</a> 
                </div>
                <div>
                    <button type="submit" class="btn-register">立即注册</button> 				</div> 
            </form>
        </div>
        <div class="right">
       		<div class="company-reg">
                <a href="#">
                    <i class="i-company"></i>
                    <span>企业用户注册</span>
                </a>
            </div>
            <div class="inter-cust">
                <a>
                    <i class="i-global"></i>
                    <span>INTERNATIONAL<br>CUSTOMERS</span>
                </a>
            </div>
            <div class="phone-fast-reg"></div>
        </div>
    </div> 
</div>
<div class="footer">
    <div class="links">
        <a href="#"> 关于我们</a>|
        <a href="#">联系我们</a>|
        <a href="#">人才招聘</a>|
        <a href="#">商家入驻</a>|
        <a href="#">广告服务</a>|
        <a href="#">手机京东</a>|
        <a href="#">友情链接</a>|
        <a href="#">销售联盟</a>|
        <a href="#">京东社区</a>|
        <a href="#">京东公益</a>|
        <a href="#">English Site</a>
    </div>
    <div>
        Copyright&#169;2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有
    </div>
</div>
</body>
</html>
