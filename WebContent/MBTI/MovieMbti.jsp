<%@page import="com.mbti.list.vo.ListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

ListVO vo = new ListVO();

request.setAttribute("vo", vo);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나와 꼭 닮은 영화 속 케릭터는?</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <style type="text/css">
 
 	article {
 	
 		display: flex;
 		flex-direction: column;
 	
 	}
 	
  	.question { 
 	
		display: none; 
		
	}
	
	.end {
	
		display: none;
	
	}
 
 </style>
 <script type="text/javascript">
 
 	var num = 1;
 
	var q = {
			
		1 : {"title":"문제 1번", "type":"EI", "A":"E", "B":"I"},
		2 : {"title":"문제 2번", "type":"EI", "A":"E", "B":"I"},
		3 : {"title":"문제 3번", "type":"EI", "A":"E", "B":"I"},
		4 : {"title":"문제 4번", "type":"SN", "A":"S", "B":"N"},
		5 : {"title":"문제 5번", "type":"SN", "A":"S", "B":"N"},
		6 : {"title":"문제 6번", "type":"SN", "A":"S", "B":"N"},
		7 : {"title":"문제 7번", "type":"TF", "A":"T", "B":"F"},
		8 : {"title":"문제 8번", "type":"TF", "A":"T", "B":"F"},
		9 : {"title":"문제 9번", "type":"TF", "A":"T", "B":"F"},
		10 : {"title":"문제 10번", "type":"JP", "A":"J", "B":"P"},
		11 : {"title":"문제 11번", "type":"JP", "A":"J", "B":"P"},
		12 : {"title":"문제 12번", "type":"JP", "A":"J", "B":"P"},
			
	}
 
 	$(function start() {
		
 		$(".start").click(function () {
			
 			$(".start").hide();
 			
 			$(".question").show();
 			
 			next();
 			
		});
 		
 		$("#A").click(function name() {
			
 			var type = $("#type").val();
 			
//  			alert(type);
 			
 			var preVal = $("#" + type).val(); 
 			
//  			alert(num);
 			
 			$("#" + type).val((parseInt)(preVal) + 1);
 			 
 			next();
 			
		});
 		
 		$("#B").click(function() {
			
 			next();
 			
		});
 		
 		function next() {
 			
 			if(num == 13) {
 				
 				$("#A").attr("type", "submit");
 				
 				$("#B").attr("type", "submint");
 				
 			}
 			
 			$(".progress-bar").attr("style", "width:calc(100/12*"+ num +"%)");
			
 			$("#title").html(q[num]["title"]);
 			
 			$("#type").val(q[num]["type"])
 			
 			$("#A").html(q[num]["A"]);
 			
 			$("#B").html(q[num]["B"]);
 			
 			num ++;
 			
 			
		}
	})
 
 </script>
</head>
<body class="container">
 <article class="start">
  <h1 class="mt-5 text-center" >나와 닮은 영화 속 케릭터는?</h1>
  <button class="btn btn-primary mt-5">테스트 시작하기</button>
 </article>
  
 <form action="result.jsp" id="result" class="result" >
 <article class="question">
  <!-- Blue -->
  <div class="progress mt-5"> 
   <div class="progress-bar" style="width:calc(100/12*1%)"></div>
  </div>
  <h2 class="mt-5 text-center" id="title">문제</h2>
  <input type="hidden" value="EI" id="type">
   <button type="button" class="btn btn-primary mt-5" id="A">button</button> 
   <button type="button" class="btn btn-primary mt-5" id="B">button</button> 
 </article>
  <input value="${vo.EI }" type="hidden" id="EI" name="EI">
  <input value="${vo.SN }" type="hidden" id="SN" name="SN">
  <input value="${vo.TF }" type="hidden" id="TF" name="TF">
  <input value="${vo.JP }" type="hidden" id="JP" name="JP">
  </form>
</body>
</html>