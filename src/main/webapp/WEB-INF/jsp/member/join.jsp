<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8" isELIgnored ="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col-lg-12 col-sm-12 col-xs-12" style="margin-top:10%;">
	<div class="col-lg-5 col-sm-12 col-xs-12" style="width: 38%;"></div>
	<div class="col-lg-3 col-sm-12 col-xs-12" style="padding-top: 5%;">
		<div class="widget">
			<div class="widget-header bordered-bottom bordered-red">
				<span class="widget-caption">S-FOOD (ORM)</span>
			</div>
			<div class="widget-body">
				<div>
					<form role="form">
						<div class="form-group">
							<label for="exampleInputEmail1">대표이메일</label>
							<input type="text" class="form-control" id="primaryEmail" value="" placeholder="">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">PASSWORD</label>
							<input type="password" id="primaryPw" value="" class="form-control" placeholder="PASSWORD">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">회원명</label>
							<input type="text" class="form-control" id="memberName" value="" placeholder="">
						</div>
						<!-- <div class="form-group">
							<label for="exampleInputEmail1">ID</label>
							<input type="text" class="form-control" id="primaryId" value="" placeholder="ID">
						</div> -->						
						<div class="form-group">
							<label for="exampleInputEmail1">대표자명</label>
							<input type="text" class="form-control" id="representativeName" value="" placeholder="">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">사업자번호</label>
							<input type="text" class="form-control" id="bizNo" value="" placeholder="">
						</div>
						<div class="form-group">
							<c:forEach var="memberType" items="${memberTypeList}">
								<div class="col-lg-1 col-sm-4">
									<div class="radio">
										<label>
											<input name="memberTypeSelect" type="radio" class="colored-blue" value="${memberType.commonCode }">
											<span class="text">${memberType.commonCodeNm }</span>
										</label>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label></label>
								<button type="button" id="joinMemberBtn" class="btn btn-danger" style="float: right;padding: 6px 20px;">가입신청</button>
							</div>
						</div>
					</form>
				</div>
			</div>                                    
		</div>
	</div>
</div>
<script type="text/javascript">

$(document).ready(function () {

	$('#joinMemberBtn').click(function(e) {
		
		let insertMemberInfo = JSON.stringify({
			primaryEmail:'daehan.lee@s-food.com',
			primaryPw:'1111',
			memberName:'에쓰푸드',
			representativeName:'조성수',
			memberTypeCode:2,
			
		});
		
		$.ajax({
			url: '/member/requestJoin', // 요청이 전송될 URL 주소
			type: 'POST', // http 요청 방식 (default: ‘GET’)
			async: true, // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
			timeout: 3000, // 요청 제한 시간 안에 완료되지 않으면 요청을 취소하거나 error 콜백을 호출.(단위: ms)
			processData: true, // 데이터를 컨텐트 타입에 맞게 변환 여부
			contentType: 'application/json', // 요청 컨텐트 타입
			data: insertMemberInfo,
			success: function(data, status, xhr) {
				alert(data);
			},
			error: function(xhr, status, error) {
				console.log(error);
			},
		});
	});
});
</script>