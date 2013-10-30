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
<title>List</title>
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../" class="navbar-brand" style="FONT-SIZE: x-large;">CloudUnit</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
		</div>
	</div>

<br> <br>
	<div>
		
		<button type="button" class="btn btn-info">Documentation</button>

	</div>

	<div class="bs-docs-section">
		<div class="col-lg-8">
			<div class="page-header">
				<h2 id="tables">ToDo List</h2>
				<br>
				<br>

				<table class="table table-striped table-bordered table-hover">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Date</th>
					</tr>
					<c:forEach items="${toDos}" var="t">
						<tr>
							<td>${t.id}</td>
							<td>${t.name}</td>
							<td>${t.date}</td>
							<td><a href="delete.do?id=${t.id}">Delete</a></td>

						</tr>

					</c:forEach>

				</table>
			</div>
		</div>
	</div>

</body>
</html>