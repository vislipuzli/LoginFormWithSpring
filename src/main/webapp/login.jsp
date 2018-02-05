<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html lang="en">
	<head>
    	<meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    	<link href="${contextPath}/resources/css/login_style.css" rel="stylesheet">
        <title>Sign in</title>
	</head>
<body>
	<div class="container">
		<div class="form">
			<div class="caption">
				<span>Sign in</span>
				<img src="/resources/images/Logo.png" align="right">
			</div>
			<form id="enter-form" method="post" action="${contextPath}/login">
			<div class="form-group ${error != null ? 'has-error' : ''}">
				<a>${message}</a>
				<input class="login field" type="text" name="username" value placeholder="Login" autofocus="true">
				<input class="password field" type="password" name="password" value placeholder="Password">
				<a>${error}</a>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input class="button" type="submit" value="SIGN IN">
			</div>
			</form>
			<a href="#">Forgot password?</a>
			<a href="${contextPath}/registration">Create an account</a>
		</div>
	</div>
</body>

<!-- mvn spring-boot:run -->