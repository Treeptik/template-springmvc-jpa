<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../" class="navbar-brand">CloudUnit</a>
				<!-- 				<button class="navbar-toggle" type="button" data-toggle="collapse" -->
				<!-- 					data-target="#navbar-main"> -->
				<!-- 					<span class="icon-bar"></span> <span class="icon-bar"></span> <span -->
				<!-- 						class="icon-bar"></span> -->
				<!-- 				</button> -->
			</div>

		</div>
	</div>

	<div></div>

	<div class="page-header" id="banner">
		<div class="col-lg-6">
			<h1>CloudUnit Template with Spring MVC / JPA</h1>
		</div>
	</div>

	<div></div>
	<div class="col-lg-8">
		<div class="page-header">
			<h2 id="tables">Create a new Entity</h2>
		</div>
		<div class="col-lg-4">


			<form:form action="index.do" commandName="toDo" method="POST">

				<table>

					<tr>
						<td>Name :</td>
						<td><form:input path="name" /></td>
					</tr>

					<tr>
						<td>Date :</td>
						<td><form:input path="date" placeholder="JJ/MM/AAAA" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Submit"></td>

						<td><button type="button" class="btn btn-info">Help</button></td>
					</tr>

				</table>

			</form:form>
		</div>
	</div>
</body>
</html>