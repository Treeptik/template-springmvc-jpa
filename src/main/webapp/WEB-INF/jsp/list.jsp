<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
</head>
<body>

	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../" class="navbar-brand">CloudUnit</a>
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-main">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>


			<br> <br>
			<button type="button" class="btn btn-info">Help</button>
		</div>
	</div>

	</div>
	<div class="bs-docs-section">
		<div class="col-lg-8">
			<div class="page-header">
				<h2 id="tables">List of Entities</h2>

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