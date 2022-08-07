<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<jsp:include page="../testHeader/header.jsp" />
		<h2>Login</h2>
		<div class="panel panel-default">
			<div class="panel-heading">test_Login</div>
			<div class="panel-body">
				<form action = "/SoulTheme/testLogin.do" method = "post">
					<table class="table table-bordered table-hover table-striped ">
						<tr>
							<td><label for="usrlabel">ID</label></td>
							<td><input type="text" class="form-control" name="usrid">
							</td>
						</tr>
						<tr>
							<td><label for="pwdlabel">Password</label></td>
							<td><input type="password" class="form-control" name="usrpwd"></td>
						</tr>
						<tr>
							<td colspan='2'>
								<button type = "submit" class="btn btn-primary btn-block">Log-in</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="panel-footer">Spring 특화 A</div>
		</div>
	</div>

</body>
</html>