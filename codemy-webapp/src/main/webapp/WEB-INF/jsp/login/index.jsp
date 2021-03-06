<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><head>
	<title><fmt:message key="login.login.title" /></title>
</head>
<body>
	<div class="prepend-4 span-10">
		<h6>
			<decorator:title />
		</h6>

		<c:url value="/logincheck" var="loginUrl" />
		<form:form action="${loginUrl}" modelAttribute="loginForm" method="post">
			<form:errors cssClass="error" />
			<fieldset>
				<p>
					<fmt:message key="login.username" />
					<br />
					<form:input path="j_username" cssClass="required" />
					<form:errors cssClass="error" path="j_username" />
				</p>
				<p>
					<fmt:message key="login.password" />
					<br />
					<form:password path="j_password" cssClass="required" />
				</p>
				<p>
					<fmt:message key="login.rememberme" />
					<br />
					<form:checkbox id="rememberme" path="_spring_security_remember_me" />
				</p>
				<p>
					<input type="submit" class="button button-login" value="<fmt:message key="login.submit" />"/>
				</p>
			</fieldset>
		</form:form>
	</div>
	<div class="span-6 info last">
		<h6>
			<fmt:message key="login.tip" />
		</h6>
		<p>
			<fmt:message key="login.tip.database" />
		</p>
	</div>
</body>
