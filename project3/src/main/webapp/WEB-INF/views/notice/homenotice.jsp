<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="/resources/css/notice.css" rel="stylesheet" >

<div id="page" class="container">
<div class="notice-home">
	<h1 style="font-weight:bold;">공지사항</h1>
	<div>
		<ul>
			<li><a href="/notice/home?ucode=${ucode}">공지사항</a></li>
			<li><a href="/notice/nfaq?ucode=${ucode}">자주묻는 질문</a></li>
			<li><a href="/notice/npo?ucode=${ucode}">검수기준</a></li>
		</ul>
	</div>
</div>
	
<div class="notice-home2">
<h2>공지사항</h2>
	<form name="frm"   enctype="multipart/form-data">
		<table>
			<c:if test="${ucode!= 2}">
			<tr>
				
				<td width=500>
					<input type="text" name="ntitle" class="input1" value="${vo.ntitle}" readonly>
				</td>
			</tr>
			<tr>
				
				<td width=500>
					<textarea rows="5" cols="80" class="input2" name="notice" readonly>${vo.notice}</textarea>
				</td>
			</tr>
			<tr>
				
				<td width=500>
					<input type="text" name="ndate" class="input3" value="${vo.ndate}" readonly>
				</td>
			</tr>
			</c:if>
			<c:if test="${ucode== 2}">
			<tr>
				<td width=500>
					<input type="text" class="input1"name="ntitle" value="${vo.ntitle}" >
				</td>
			</tr>
			<tr>
				<td width=500>
					<textarea rows="5" cols="80" class="input2" name="notice">${vo.notice}</textarea>
				</td>
				
			</tr>

			<tr>
			<td>
				<input type="text" name="ncount" value="${vo.ncount}" style="display: none;">
			</td>
			</tr>
			<tr>
				<c:if test="${ucode== 2}">
				<button type="button" class="delete" style="position:relative; right:50px;">공지삭제</button>
					<button type="submit" class="submit update">내용수정</button>
				</c:if>
			</tr>
			</c:if>
		</table>
		
				

	</form>
</div>
</div>
<script>
	$(frm).on("submit", function(e){
		e.preventDefault();
	});


	$(".update").on("click", function(){
		
		
			if(!confirm("공지사항을 수정 하실래요?")) return;
			frm.method="post";
			frm.action="update";
			frm.submit();

	});
	
	$(".delete").on("click", function(){
		if(!confirm("게시물을 삭제하실래요?")) return;
		frm.method="post";
		frm.action="delete";
		frm.submit();
	});

</script>
