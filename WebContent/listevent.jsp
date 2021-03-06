<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Events List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="listevent.css">
</head>
<body>
	<h1>List of Events</h1>
	<div class="container">
		<div class="jumbotron">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Event Name</th>
						<th>Location</th>
						<th>Department</th>
						<th></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${requestScope.events}" var="e">
						<tr>
							<td><a
								href="<c:url value="event?action=getEvent&id=${e.getId()}" />">
									${e.getDescription() } </a></td>
							<td>${e.getLocation() }</td>
							<td>${e.getDepartment() }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<form action="event" method=get>
				<input type="submit" name="act" value="add" />
			</form>
		</div>
	</div>




	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>