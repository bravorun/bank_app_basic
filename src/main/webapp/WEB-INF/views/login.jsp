<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<style>
body {
	background: #f2f2f2;
}

.animate {
	-webkit-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.text-center {
	text-align: center;
}

.pull-left {
	float: left;
}

.pull-right {
	float: right;
}

.clearfix:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0;
}

.clearfix {
	display: inline-block;
}
/* start commented backslash hack \*/
* html .clearfix {
	height: 1%;
}

.clearfix {
	display: block;
}
/* close commented backslash hack */
a {
	color: #00A885;
}

a:hover, a:focus {
	color: #00755d;
	-webkit-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.text-primary {
	color: #00A885;
}

input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0 1000px white inset !important;
}

.logo h1 {
	color: #00A885;
	margin-bottom: -12px;
}

input[type="checkbox"] {
	width: auto;
}

button {
	cursor: pointer;
	background: #00A885;
	width: 100%;
	border: 0;
	padding: 10px 15px;
	color: #fff;
	font-size: 20px;
	-webkit-transition: 0.3s linear;
	transition: 0.3s linear;
}

span.validate-tooltip {
	background: #D91717;
	width: 100%;
	display: block;
	padding: 5px;
	color: #fff;
	box-sizing: border-box;
	font-size: 14px;
	margin-top: -28px;
	-webkit-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	-webkit-animation: tooltipanimation 0.3s 1;
	animation: tooltipanimation 0.3s 1;
}

.input-group {
	position: relative;
	margin-bottom: 20px;
}

.input-group label {
	position: absolute;
	top: 9px;
	left: 10px;
	font-size: 16px;
	color: #cdcdcd;
	font-weight: normal;
	padding: 2px 5px;
	z-index: 5;
	-webkit-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.input-group input {
	outline: none;
	display: block;
	width: 100%;
	height: 40px;
	position: relative;
	z-index: 3;
	border: 1px solid #d9d9d9;
	padding: 10px 10px;
	background: #ffffff;
	box-sizing: border-box;
	font-wieght: 400;
	-webkit-transition: 0.3s ease;
	transition: 0.3s ease;
}

.input-group .lighting {
	background: #00A885;
	width: 0;
	height: 2px;
	display: inline-block;
	position: absolute;
	top: 40px;
	left: 0;
	-webkit-transition: all 0.3s linear;
	transition: all 0.3s linear;
}

.input-group.focused .lighting {
	width: 100%;
}

.input-group.focused label {
	background: #fff;
	font-size: 12px;
	top: -8px;
	left: 5px;
	color: #00A885;
}

.input-group span.validate-tooltip {
	margin-top: 0;
}

.wrapper {
	width: 320px;
	background: #fff;
	margin: 20px auto;
	min-height: 200px;
	border: 1px solid #f3f3f3;
}

.wrapper .inner-warpper {
	padding: 50px 30px 60px;
	box-shadow: 1px 1.732px 10px 0px rgba(0, 0, 0, 0.063);
}

.wrapper .title {
	margin-top: 0;
}

.wrapper .supporter {
	margin-top: 10px;
	font-size: 14px;
	color: #8E8E8E;
	cursor: pointer;
}

.wrapper .remember-me {
	cursor: pointer;
}

.wrapper input[type="checkbox"] {
	float: left;
	margin-right: 5px;
	margin-top: 2px;
	cursor: pointer;
}

.wrapper label[for="rememberMe"] {
	cursor: pointer;
}

.wrapper .signup-wrapper {
	padding: 10px;
	font-size: 14px;
	background: #EBEAEA;
}

.wrapper .signup-wrapper a {
	text-decoration: none;
	color: #7F7F7F;
}

.wrapper .signup-wrapper a:hover {
	text-decoration: underline;
}

@
-webkit-keyframes tooltipanimation {from { margin-top:-28px;
	
}

to {
	margin-top: 0;
}

}
@
keyframes tooltipanimation {from { margin-top:-28px;
	
}

to {
	margin-top: 0;
}

}
.direction {
	width: 200px;
	position: fixed;
	top: 120px;
	left: 20px;
	font-size: 14px;
	line-height: 1.2;
	text-align: center;
	background: #9365B8;
	padding: 10px;
	color: #fff;
}

@media ( max-width : 480px) {
	.direction {
		position: static;
	}
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
<font color="red">
	<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message }"></c:out>
</font>
</c:if>

<form  action='banklogin' method='POST'>
 <table>
    <tr><td>User:</td><td><input type='text' name='uname' value=''></td></tr>
    <tr><td>Password:</td><td><input type='password' name='upass'/></td></tr>
    <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
  </table>
</form>
<form action="adduser">
    <input type="submit" value="Add User" />
</form>
</body>
</html>