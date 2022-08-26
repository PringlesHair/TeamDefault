<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="sessionV" value="${session.userVo}" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            console.log("${sessionScope.userVo}")
            Load_Comment("${vo.d_seq}")
        })

        function deletePost(num) {
            $.ajax({
                url: "${cpath}/UserBoardDelete.do",
                type: "get",
                data: { "num": num },
                success: function () {
                    location.href = "${cpath}/UserBoardForm.do"
                },
                error: function () {
                    alert("Error")
                }
            })
        }
        
        function updatePost(num){
        	location.href = "${cpath}/UserBoardUpdateForm.do?board_num" + num 
        }

        function Load_Comment(board_num) {
            $.ajax({
                url: "${cpath}/CommentList.do",
                type: "get",
                data: {"board_num" : board_num},
                dataType: "json",
                success: CommentHtml,
                error: function () {
                    alert("Error")
                }
            })
        }

        function CommentHtml(data) {
            let html = ""
            $.each(data, function (idx, obj) {
            	let commentData = JSON.stringify({cmt_seqs : obj.cmt_seq, user_ids : obj.user_id})
                html += "<div class='d-flex'>"
                html += "<div class='flex-shrink-0'>"
                html += "<img class='rounded-circle' src='https://dummyimage.com/50x50/ced4da/6c757d.jpg'>"
                html += "</div>"
                html += "<div class='ms-3'>"
                html += "<div clss='fw-bold'>" + obj.user_nick + "</div>"
                html += obj.cmt_content,
                    html += "</div>"
                html += "<button onclick='DeleteComment(" + commentData + ")'>Delete</button>"
                html += "</div>"
                html += "</div>"
            })
            $("#commentCard").html(html)
        }

        function InsertComment(board_num, user_id) {
            if ("${!empty sessionScope.userVo }" == "true") {
                let textval = $("#commentVal").val()
                $.ajax({
                    url: "${cpath}/CommentInsert.do",
                    type: "post",
                    data: { "comment": textval, "board_num": board_num, "user_id": user_id },
                    success: function () {
                        location.href = "${cpath}/UserBoardView.do?num=" + "${vo.d_seq}"
                    },
                    error: function () {
                        alert("Error")
                    }
                })
            } else {
                alert("Please Login")
                location.href = "${cpath}/UserLoginForm.do"
            }
        }

        function DeleteComment(commentData) {
        	if ("${!empty sessionScope.userVo }" == "true") {
        		if ("${sessionScope.userVo.user_id}" == commentData.user_ids) {
					$.ajax({
						url: "${cpath}/CommentDelete.do",
						type: "post",
						data: {"comment_num" : commentData.cmt_seqs},
						success: function(){
							location.href = "${cpath}/UserBoardView.do?num=" + "${vo.d_seq}"
						},
						error: function(){
							alert("Error")
						}
					})
				} else {
					alert("You don't have permission")
				}
			}else {
				alert("Please Login")
                location.href = "${cpath}/UserLoginForm.do"
			}
        }
    </script>

</head>

<body>
    <jsp:include page="../header/header2.jsp" />
    <div class="container mt-5">
        <div class="row">
            <div>
                <!-- Content section -->
                <article>
                    <br class="mb-4">
                    <h1 class="fw-bolder mb-1">${ vo.d_title }</h1><br>
                    <div class="text-muted fst-italic mb-2">
                        ${ fn:split(vo.d_date, " ")[0] } &nbsp&nbsp&nbsp ${ vo.user_id }
                    </div><br>
                    <section class="mb-5">
                        <p class="fs-5 mb-4">${ fn:replace(vo.d_content, newLineChar, "<br />") }</p>
                    </section>
                </article>
                <div>
                    <c:if test="${!empty sessionScope.userVo }">
                        <c:if test="${ sessionScope.userVo.user_id.equals(vo.user_id)}">
                            <button class='btn' onclick="javascript:updatePost('${vo.d_seq}')")></button>
                            <button class='btn' onclick="javascript:deletePost('${vo.d_seq}')">Delete</button>
                        </c:if>
                    </c:if>
                </div>
                <br>
                <!-- Comments section-->
                <section class="mb-5">
                    <div class="card bg-light">
                        <div class="card-body">
                            <textarea class="form-control" rows="3" id="commentVal"
                                placeholder="Join the discussion and leave a comment!"></textarea><br>
                            <button class='btn'
                                onclick="javascript:InsertComment('${vo.d_seq}', '${sessionScope.userVo.user_id}')">comment</button>
                            <div id="commentCard"></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

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