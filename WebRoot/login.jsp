<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html><head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>京东-欢迎登录</title>
    
    
     
    <link type="text/css" rel="stylesheet" href="./css/saved_resource_login.css" source="widget">  
    <script type="text/javascript" async src="./js/wl.dev.js"></script><script type="text/javascript" async src="./js/wl.js"></script><script type="text/javascript" src="./js/jquery-1.6.4.js"></script>
	<script type="text/javascript">
     	$(function(){
                window.SysConfig = {
                encryptInfo:  true ,
                rememberMeShowEnable:  true                 };
         });
    </script>
    <!-- JavaScript 页面脚本语言  -->
    <script type="text/javascript">

		//里面写JS脚本语言
		
		//javascript 方法
		function checkLogin(){
		
			//通过 id 寻找该元素对象  , 通过 value 属性获取 该对象的值
			var user = document.getElementById("loginname").value;
			//获取长度
			var userLength = user.length;
			
			var password = document.getElementById("loginpwd").value;
			var passLength = password.length;
			
			//判断账号是否为空
			if(user == ""){
				//提示 请输入账号
				alert("请输入账号 !");
				return false;
			}else{
				//如果输入了值 ， 则判断账号是否合法  譬如 长度为 5 - 12 之间
				if(userLength < 5 || userLength >= 12){
					//长度不合法
					alert("请输入正确的账号 !");
					return false;
				}else{

					//验证密码
					//判断账号是否为空
					if(password == ""){
						//提示 请输入账号 
						return false;
					}else{
						//如果输入了值 ， 则判断账号是否合法  譬如 长度为 5 - 12 之间
						
						if(passLength < 5 || passLength >= 12){
							//长度不合法
							alert("请输入正确的密码 !");
							return false;
						}else{
							//数据有效 提交信息
							return true;
						}
					}

				}
			}

			//返回 false 表示 不提交表单
			return false;
		}
		
    </script>
		</head>
<body>
<!-- SDK 登录 -->
<div class="w">
    <div id="logo">
        <a href="#www.jd.com/" clstag="pageclick|keycount|20150112ABD|45">
            <img src="./image/logo-201305-b.png" alt="京东" width="170" height="60">
        </a>
        <b></b>
    </div>
			<a href="#"  class="q-link"><b></b>登录页面，调查问卷</a>
    </div>
<div id="content">
    <div class="login-wrap">
		<div class="w">
            <div class="login-form">
                <div class="login-tab login-tab-l">
                    <a href="#" clstag="pageclick|keycount|201607144|1" class=""> 扫码登录</a>
                </div>
                <div class="login-tab login-tab-r">
                    <a href="#" clstag="pageclick|keycount|201607144|2" class="checked" style="outline: rgb(109, 109, 109) none 0px;">账户登录</a>
                </div>
                <div class="login-box" style="display: block; visibility: visible;">
                    <div class="mt tab-h">
                    </div>
                    <div class="msg-wrap">
													<div class="msg-warn hide"><b></b>公共场所不建议自动登录，以防账号丢失</div>
						                        <div class="msg-error hide"><b></b></div>
                    </div>
                    <div class="mc">
                        <div class="form">
                        
                        <!--
                        <form id="formlogin" method="post" onsubmit="return false;">
                        用户登录提交
                        -->
<form id="formlogin" method="post" action="login" onsubmit="return checkLogin()">
  
       
								
  <div class="item item-fore1">
                                    <label for="loginname" class="login-label name-label"></label>
                                    <input id="loginname" type="text" class="itxt" name="loginname" tabindex="1" autocomplete="off" placeholder="邮箱/用户名/已验证手机">
                                    <span class="clear-btn"></span>
                                </div>
								
								<div id="entry" class="item item-fore2" style="visibility: visible;">
									<label class="login-label pwd-label" for="loginpwd"></label>
									<input type="password" id="loginpwd" name="loginpwd" class="itxt itxt-error" tabindex="2" autocomplete="off" placeholder="密码">
									<span class="clear-btn"></span>
									<span class="capslock" style="display: none;"><b></b>大小写锁定已打开</span>
								</div>
								
								
								
                                <div id="o-authcode" class="item item-vcode item-fore3  hide ">
                                    <input id="authcode" type="text" class="itxt itxt02" name="authcode" tabindex="3">
                                    <img id="JD_Verification1" class="verify-code" src2="#" onclick="">
                                    <a href="#" onclick="$(&#39;#JD_Verification1&#39;).click();">看不清换一张</a>
                                </div>
								
								<div class="item item-fore4">
									<div class="safe">
										<span>
                                                                                    <input id="autoLogin" name="chkRememberMe" type="checkbox" class="jdcheckbox" tabindex="3" clstag="pageclick|keycount|20150112ABD|6">
                                            <label for="">自动登录</label>
                                                                             	</span>
										<span class="forget-pw-safe">
											<a href="#" class="" clstag="pageclick|keycount|201607144|3">忘记密码</a>
										</span>
                                 	</div>
                                </div>
								
                                <div class="item item-fore5">
                                    <div class="login-btn">
                                        <input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" class="btn-img btn-entry" id="loginsubmit" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="qrcode-login" style="display: none; visibility: visible;">
                    <div class="mc">
                        <div class="qrcode-error-2016" style="left: 0px; display: none;">
                            <div class="qrcode-error-mask">
                            </div>
                            <p class="err-cont">服务器出错</p>
                            <a href="#" class="refresh-btn">刷新</a>
                        </div>
                        <div class="qrcode-main">
                            <div class="qrcode-img" style="left: 64px;">
                                <img src="./image/show" alt=""><div class="qrcode-error02 hide" id="J-qrcoderror">							<a href="#">								<span class="error-icon"></span>								<div class="txt">网络开小差咯<span class="ml10">刷新二维码</span></div>							</a>						</div>
                            </div>
                            <div class="qrcode-help" style="display: none;"></div>
                        </div>
                        <div class="qrcode-panel">
                            <ul>
                                <li class="fore1">
									<span>打开</span>
                                    <a href="#passport.jd.com/uc/links?tag=apps" target=" " clstag="pageclick|keycount|201607144|9">
									<span class="red">手机京东</span></a>
                                </li>
								<li>扫描二维码</li>
                            </ul>
                        </div>
                        <div class="coagent qr-coagent" id="qrCoagent" style="visibility: visible; display: none;">
                            <ul>
                                <li><b></b><em>免输入</em></li>
                                <li><b class="faster"></b><em>更快&nbsp;</em></li>
                                <li><b class="more-safe"></b><em>更安全</em></li>
                            </ul>
                        </div>
                    </div>
                </div>
				             <div class="coagent" id="kbCoagent">
                    <ul>
                        						                        <li>
                            <b></b>
                            <a href="#" class="pdl"><b class="QQ-icon"></b><span>QQ</span></a>
                                                        <span class="line">|</span>
                                                    </li>
                                                                        <li>
                            <a href="#" class="pdl"><b class="weixin-icon"></b><span>微信</span></a>
																	<span class="line">|</span>
								                        </li>
                                                                        <li>
                            <a href="#" class="pdl" >京东钱包</a>
                        </li>
                                                                        <li class="extra-r">
                            <div>
                                <div class="regist-link"><a href="register.jsp"><b></b>立即注册</a></div>
                            </div>
                        </li>
                    </ul>
                </div>            </div>
        </div>
        <div class="login-banner" style="background-color: #E93854">		              <div class="w">			         <div id="banner-bg" clstag="pageclick|keycount|20150112ABD|46" class="i-inner" style="background: url(./image/picshow.png) 0px 0px no-repeat;background-color: #E93854"></div>		              </div>		           </div>
    </div>
</div>
<div class="w">
    <div id="footer-2013">
        <div class="links">
            <a rel="nofollow" target=" " href="#www.jd.com/intro/about.aspx">
                关于我们
            </a>
            |
            <a rel="nofollow" target=" " href="#www.jd.com/contact/">
                联系我们
            </a>
            |
            <a rel="nofollow" target=" " href="#zhaopin.jd.com/">
                人才招聘
            </a>
            |
            <a rel="nofollow" target=" " href="#www.jd.com/contact/joinin.aspx">
                商家入驻
            </a>
            |
            <a rel="nofollow" target=" " href="#www.jd.com/intro/service.aspx">
                广告服务
            </a>
            |
            <a rel="nofollow" target=" " href="#app.jd.com/">
                手机京东
            </a>
            |
            <a target=" " href="#passport.jd.com/links.vm/club.jd.com/links.aspx">
                友情链接
            </a>
            |
            <a target=" " href="#media.jd.com/">
                销售联盟
            </a>
            |
            <a href="#club.jd.com/" target=" ">
                京东社区
            </a>
            |
            <a href="#gongyi.jd.com/" target=" ">
                京东公益
            </a>
            |
            <a target=" " href="#en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        </div>
        <div class="copyright">
            Copyright&nbsp;&#169;&nbsp;2004-2017&nbsp;&nbsp;京东JD.com&nbsp;版权所有
        </div>
    </div>
</div><script type="text/javascript" src="./js/base.js"></script>
    <script type="text/javascript" src="./js/jsencrypt.min.js"></script>
<script type="text/javascript" src="./js/login2016.js"></script>
<script type="text/javascript" src="./js/login.index.2016-1130.js" source="widget"></script>



<script src="./js/td.js"></script><script src="./js/y.html"></script>
<script>
    $(function () {
        getJdEid(function (eid, fpid) {
            var eValue = eid;
            var fpValue = fpid;
            var ee = $("#eid").prop("value", eValue);
            var fp = $("#sessionId").prop("value", fpValue);
        });
    });
</script>

<script type="text/javascript">
    var _jraq = _jraq || [];
    _jraq.push(['account', 'UA-J2011-12']);
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
</script>

 


<!-- SDK 登录 -->




</body>
</html>