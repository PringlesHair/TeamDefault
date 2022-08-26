<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Community</title>
	
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/slicknav.css">
    <link rel="stylesheet" href="./assets/css/animate.min.css">
    <link rel="stylesheet" href="./assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="./assets/css/slick.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/boardstyles.css">
    <link rel="stylesheet" href="./assets/css/my.css">
    <link rel="stylesheet" href="./assets/css/header.css">
    
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <script type="text/javascript">
    
    	function Load_Write(){
    		if ("${!empty sessionScope.userVo }" == "true") {
				location.href = "${cpath}/UserBoardWriteForm.do?lang=" + "${lang}"
			} else {
				alert("Please Login")
				location.href = "${cpath}/UserLoginForm.do"
			}
    	}	
    
    </script>
    
</head>

<body>
	<jsp:include page="../header/header2.jsp" />
	<main>
		<div class="container" id="community-c">
			<div class="row">
				<div class="col-md-12 center">
					<h1>Community</h1>
					<br>
					<br>
					<table class="table">
						<thead>
							<tr class="community-a">
								<th>
									Writer
								</th>
								<th>
									Tilte
								</th>
								<th>
									Date
								</th>
								<th>
									hits
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="board" items="${ boardList }">
							<tr class="community-a">
								<td>
									${ board.user_id }
								</td>
								<td>
									<a href="${cpath}/UserBoardView.do?num=${board.d_seq}">${ board.d_title }</a>
								</td>
								<td>
									${ fn:split(board.d_date, " ")[0] }
								</td>
								<td>
									${ board.d_cnt }
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="center">
						<button class='btn' onclick="javascript:Load_Write()">Write</button>
					</div>
				</div>
			</div>
		</div>
	</main>

    <script src="./assets/js/jquery.slicknav.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.barfiller.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
</body>

</html>