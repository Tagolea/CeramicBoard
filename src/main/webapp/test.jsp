<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<img id="photo" alt="ajax실습" src="" width="200px;" height="200px;"
		style="cursor: pointer;">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var heartval = 0 ///// ★
			if (heartval > 0) {
				console.log("기존의 상태가 좋아요한♥ 상태");
				$("#photo").prop("src", "images/default.jpg"); // 좋아요한♥ 상태
			} else {
				console.log("기존의 상태가 좋아요안한♡ 상태");
				$("#photo").prop("src", "images/review.jpg"); // 좋아요안한♡ 상태
			}

			// 좋아요 버튼을 클릭 시 실행되는 코드
			$("#photo").on("click", function() {
				console.log("클릭됨");
				var data = {
					'apple' : 123,
					'banana' : 'kiwi'
				}; //${uid} -> '${uid}'로 오류 해결
				$.ajax({
					url : 'test.do',
					type : 'POST',
					data : JSON.stringify(data),
					contentType : "application/json",
					success : function(result) {
						console.log("데이터 반환됨.반환된 데이터: "+result);
						if (result == 'apple') {
							console.log("여기여기");
							$('#photo').prop("src", "images/ryan.png");
						} else {
							console.log("저기저기");
							$('#photo').prop("src", "images/timo.jpg");
						}
					}
				});
			});
		});
	</script>
</body>
</html>