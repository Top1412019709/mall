<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset='utf8' />
<title></title>

<style>
*{ margin: 0; padding: 0;}
body{font: 14px/1.4 Microsoft YaHei,SimSun,Arial;}
.errorwarp{ padding-top: 100px;text-align: center;}
p{ line-height: 94px;font-size: 18px;color: #14191e;}
a{ font-size: 18px; color: #f01414; display: block; margin-left: auto; margin-right: auto; text-decoration: none;}
.feedback{ font-size: 14px; margin-top: 38px;}
</style>
<script>
window.onload=function (){
    var jsreferrer = document.getElementById('jsreferrer');
    var referrer = document.referrer;
    var url = '';
    
    if( referrer){
        url = referrer.split('//')[1].split('/')[0];
    }
    
    if( url == 'www.imooc.com' || url == 'www.mukewang.com'){
        jsreferrer.setAttribute('href', document.referrer)
        jsreferrer.innerHTML = '返回上一页';
    }
}
</script>

</head>
<body>

<div class='errorwarp'>
    <img src='${pageContext.request.contextPath}/img/error/404.gif' />
    <p>Sorry，找不到你想要的页面</p>
    <a href='http://localhost:8080/mymall/category/list' id='jsreferrer'>返回首页</a>
    <a href='http://www.imooc.com/user/feedback' class='feedback'>向我们反馈错误</a>
</div>

</body>
</html>