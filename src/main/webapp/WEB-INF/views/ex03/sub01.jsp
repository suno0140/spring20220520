<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
﻿
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
﻿

<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub03"
			});
		});
	});
</script>
<script>
	$(document).ready(function() {
		$("#button2").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub04"
			});
		});

		$("#button3").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub05",
				type : "get"
			});
		});
		$("#button4").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub06",
				type : "post"
			});
		});
		$("#button5").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub07",
				type: "delete"
			});
		});
		$("#button6").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub08",
				type : "put"
			});
		});
		
		$("#button7").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub09",
				data : {
					title : "epl",
					writer : "son"
				}
			});
		});
		
		$("#button8").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub10",
				type : "post",
				data : {
					name : "son",
					address : "londeon"
				}
			});
		});
		
		$("#button9").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub11",
				type : "post",
				data : {
					title : "득점왕 되기",
					writer : "son"
				}
			});
		});
		
		$("#button10").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub10",
				type : "post",
				data : "name=donald&address=newyork"
			});
		});
		
		$("#button11").click(function() {
			$.ajax({
				url : "/spr2/ex03/sub11",
				type : "post",
				data : "title=득점왕&writer=흥"
			});
		});
		
		$("#button18").click(function(){
			$.ajax({
				url :"/spr2/ex03/sub16",
				type:"get",
				success : function(data) {
					console.log(data);
				},
				error : function(){
					console.log("무언가 잘못됨");
				}
			});
		});
		
		$("#button19").click(function(){
			$.ajax({
				url : "/spr2/ex03/sub16",
				success : function(data){
					
				},
				error :function(){
					$("#message19").show();
					$("#message19").text("처리 중 오류 발생").fadeOut(3000);
				}
			});
		});
		
		$("#button20").click(function(){
			$.ajax({
				url : "/spr2/ex03/sub17",
				success : function(data) {
					console.log("받은 데이터", data);
				},
				error : function(){
					console.log("무엇인가 잘못됨!!");
				}
			});	
		});
		
		$("#button21").click(function(){
			$.ajax({
				url:"/spr2/ex03/sub18",
				success : function(data){
					$("#message20").show();
					$("#message20").removeClass("error").text(data).fadeOut(3000);
				},
				error : function(data){
					$("#message20").show();
					$("#message20").addClass("error").text("무엇인가 잘못됨").fadeOut(3000);
				}
			});
		});
		
		$("#button22").click(function(){
			$.ajax({
				url:"/spr2/ex03/sub18",
				success : function(data){
					$("#message20").show();
					$("#message20").removeClass("error").text(data).fadeOut(3000);
				},
				error : function(data){
					$("#message20").show();
					$("#message20").addClass("error").text("무엇인가 잘못됨").fadeOut(3000);
				},
				
				complete : function(){
					console.log("항상 실행됨!!");
				}
			});
		});
	});
</script>

<style>
	.error{
		background-color: red;
		color:yellow;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<button id="button1">ajax 요청 보내기</button>

	<%-- 이 버튼을 클릭하면 /spr2/ex03/sub04 로 ajax 요청 보내기 --%>
	<%-- Controller 에도 해당 경로 요청에 일하는 메소드 추가 --%>
	<button id="button2">ajax 요청 보내기 2</button>

	<br />

	<%-- /spr2/ex03/sub05 get방식 요청 보내기 --%>
	<button id="button3">get 방식 요청 보내기</button>
	
	<%-- /spr2/ex03/sub06 post 방식 요청 보내기 --%>
	<button id="button4">post 방식 요청 보내기</button>
	
	<%-- /spr2/ex03/sub07 delete 방식 요청 보내기 --%>
	<button id="button5">delete 방식 요청 보내기</button>
	
	<%-- /spr2/ex03/sub08 put 방식 요청 보내기 --%>
	<button id="button6">put 방식 요청 보내기</button>
	
	<hr />
	
	<p>서버로 데이터보내기</p>
	
	<%-- /spr2/ex03/sub09 get방식으로 데이터 보내기 --%>
	<button id="button7">get방식 데이터 보내기</button>
	
	<%-- 전송될 데이터는 name, address --%>
	<button id="button8">post방식으로 데이터 보내기</button>
	
	<%-- /spr2/ex03/sub11 post방식으로 데이터보내기 --%>
	<%-- 전송될 데이터 title, writer --%>
	<button id="button9">post 방식으로 데이터 보내기2</button>
	
	<%-- /spr2/ex03/sub10 post 방식으로 데이터 보내기 --%>
	<%-- 전송될 데이터는 name, address --%>
	<button id="button10">post 방식으로 데이터 보내기(encoded string)</button>
	
	
	<%-- /spr2/ex03/sub11 post방식으로 데이터보내기 --%>
	<%-- 전송될 데이터 title, writer --%>
	<button id="button11">post 방식으로 데이터 보내기(encoded string)</button>
	
	


	<p>요청이 실패할 경우</p>
	
	<button id="button18">잘못된 요청</button>
	
	<br />
	<button id="button19">잘못된 요청2</button>
	<p class="error" id="message19"></p>
	
	<button id="button20">서버에서 에러 응답</button>
	
	<button id="button21">50% 확률로 ok</button>
	<p id="message20"></p>
	
	<button id="button22">50% 확률로 ok</button>
</body>
</html>


