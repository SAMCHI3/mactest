<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<link rel="stylesheet" href="/resources/css/boardread.css">
		<title>게시글작성</title>
	</head>
<div id="page">
   <h1>게시글정보</h1>
      <form name="frm" method="post" enctype="multipart/form-data">
       <div class="container">
      	 
         <div width="100" class="title">게시글 번호</div>
         	<div><input class="form-control" type="text" name="bno" value="${vo.bno}"readonly="readonly"></div>
         
         
         <div width="100" class="title">작성자</div>
         	<div><input class="form-control" type="text" name="bid" value="${vo.bid}"readonly="readonly"></div>
        
            <div width="100" class="title">이미지</div>
            <div width="500">
               <img id="image" src="/display?fileName=${vo.bimage}" width="500" accept="image/*">
               <input type="file" name="file" style="display: none">
            </div>
         
            <div width="100" class="title">내용</div>
           <div><input type="text" id="bcontent" name="bcontent" value="${vo.bcontent}" readonly="readonly"></div>
         <span class="imote"><button>❤️</button>${vo.bcount}</span>
      <div class="read-button">
         <button type="button">수정</button>
        <button type="button">삭제</button>
      </div>        
      </div>
      
 
   </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>