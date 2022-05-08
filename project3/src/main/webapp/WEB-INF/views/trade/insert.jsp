<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link href="/resources/css/buyinsert.css" rel="stylesheet" >
<div id="page">
	<h1>구매계속</h1>
	<div class=background>
		<div id="trade">
			<div class="trade-position">
				<div class="trade1">
					<div>
						<image src="/display?fileName=${vo.pimage}" width=100 height=100>
					</div>
					<div id="tr">
						<div class="tr1">${vo.pmodel}</div>
						<div class="tr1">${vo.pename}</div>
						<div class="tr1">${vo.pkname}</div>
						<div class="tr1">사이즈: ${vo.ssize}</div>
						<div class="tr1">즉시 구매가 : ${vo.ssell}원</div>
					</div>
				</div>
					<div class="trade-button">
						<button type="submit" name="buy" value="1" id="buy">즉시구매</button>
						<button id="bid">입찰구매</button>
					</div>
			</div>
		</div>
		<div id="buy1">
			<form name="frm" method="post" action="insert" enctype="multipart/form-data">
				<table>
					<tr>
						<td class="title" width=100>전화번호</td>
						<td width=500><input type="text" name="btell"> 
						<%-- 						value="${vo.utel}"></td> --%>
					</tr>
					<tr>
						<td class="title" width=100 style="padding-top:7px; text-align:center">주소</td>
						<td width=500><input type="text" name="baddress" size=30>
							<%-- 						value="${vo.uaddress}"> --%>
							<button type="button" id="search">주소검색</button> <br></td>
					</tr>
					<tr>
						<td width="100" class="title">상세주소</td>
						<td width="500"><input type="text" name="baddress1" size="50"></td>
					</tr>
					<tr>
					<td width="100" class="title">결제방법</td>
					<td width="500">
						<h3>카드결제</h3>
						<h3>카카오페이결제</h3>
						<h3>무통장결제</h3>
					</td>
				</tr>
				<tr style="display:none;">
					<td><input type="text" name="bprice" value="${vo.ssell}"></td>
					<td><input type="text" name="bid" value="${uid}"></td>
					<td><input type="text" name="bsize" value="${vo.ssize}"></td>
					<td><input type="text" name="bmodel" value="${vo.smodel}"></td>
				</tr>
				</table>
				<div class="buy-button">
					<button onclick="requestPay()">결제하기</button>
					<button type="reset">결제취소</button>
				</div>
			</form>
		</div>
	</div>	
</div>
<script>
	$(frm).on("submit", function(e) {
		e.preventDefault();
		var bprice = $(frm.bprice).val();
		var bid = $(frm.bid).val();
		var bsize = $(frm.bsize).val();
		var bmodel = $(frm.bmodel).val();
		var baddress = $(frm.baddress).val();
		var baddress1 = $(frm.baddress1).val();
		var btell = $(frm.btell).val();
		var ing=$(frm.buy).val();
		
		if (btell == "") {
			alert("전화번호를 입력해주세요!");
			$(frm.btell).focus();
			return;
		} else if (baddress == "") {
			alert("주소를 입력해주세요!");
			$(frm.baddress).focus();
			return;
		} else if (baddress1 == "") {
			alert("주소를 입력해주세요!");
			$(frm.baddress1).focus();
			return;
		} else {
			if (!confirm("상품을구매하실래요?")) return;
			frm.submit();
		}
	});

	$("#search").on("click", function() {
		9
		new daum.Postcode({
			oncomplete : function(data) {
				console.log(data);
				$(frm.baddress).val(data.address);
			}
		}).open();
	});

	//카카오결제API
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp85774140"); // 예: imp00000000

	function requestPay() {
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({ // param
			pg : "kakaopay",
			pay_method : "card",
			merchant_uid : "merchant_" + new Date().getTime(), //주문번호
			name : "노르웨이 회전 의자",
			amount : 64900,
			buyer_email : "gildong@gmail.com",
			buyer_name : "홍길동",
			buyer_tel : "010-4242-4242",
			buyer_addr : "서울특별시 강남구 신사동",
			buyer_postcode : "01181"
		}, function(rsp) { // callback
			if (rsp.success) { //결제성공

			} else { //결제실패

			}
		});
	}
</script>
