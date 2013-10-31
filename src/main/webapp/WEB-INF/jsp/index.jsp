<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="../bower_components/bootstrap/assets/js/html5shiv.js"></script>
      <script src="../bower_components/bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->
<title>Recording a ToDo</title>
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../" class="navbar-brand" style="FONT-SIZE: xx-large;">CloudUnit</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
		</div>
	</div>

	<div class="navbar-collapse collapse" id="navbar-main">
		<ul class="nav navbar-nav">
			<li><a href="../help/">Help</a></li>
		</ul>
	</div>

	<br>
	<br>
	<div>
		<button type="button" class="btn btn-info">Documentation</button>
	</div>

	<div class="bs-docs-section">
		<div class="col-lg-8">
			<div class="page-header">
				<h1 id="tables" style="FONT-SIZE: xx-large;">Recording a ToDo</h1>
				<br> <br>

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
						</tr>
					</table>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>