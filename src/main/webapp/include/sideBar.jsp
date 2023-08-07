<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function () {
	
	// 유저별 메뉴구성
	$.ajax({
		url: '/menu/userMenuList', // 요청이 전송될 URL 주소
		type: 'GET', // http 요청 방식 (default: ‘GET’)
		async: true, // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
		timeout: 3000, // 요청 제한 시간 안에 완료되지 않으면 요청을 취소하거나 error 콜백을 호출.(단위: ms)
		processData: true, // 데이터를 컨텐트 타입에 맞게 변환 여부
		contentType: 'application/json', // 요청 컨텐트 타입
		data: {userInfoSeq:'${userInfo.userInfoSeq}'},
		success: function(data, status, xhr) {
			console.log(data);
			for ( var i = 0 ; i < data.length ; i++ ) {
				
			}
		},
		error: function(xhr, status, error) {
			console.log(error);
		},
	});
	
	// api 사방넷
	$('.nav.sidebar-menu #apiSabangMenu').click(function(e) {
		$('.page-body').load('/api/prm.jsp');
		e.preventDefault();
	});
	
	// 주문관리 > 주문현황
	$('.nav.sidebar-menu #orderState').click(function(e) {
		$('.page-body').load('/order/orderState.jsp');
		e.preventDefault();
	});
});
</script>
<!-- Page Sidebar -->
<div class="page-sidebar" id="sidebar">
	<!-- Sidebar Menu -->
	<ul class="nav sidebar-menu">
		<li>
			<a href="#" class="menu-dropdown">
				<i class="menu-icon fa fa-table"></i>
				<span class="menu-text"> API 관련 </span>
				<i class="menu-expand"></i>
			</a>
			<ul class="submenu">
				<li>
					<a id="apiSabangMenu" href="#">
						<span class="menu-text">사방넷(외부몰)</span>
					</a>
				</li>
				<li>
					<a id="apiGodoMenu" href="#">
						<span class="menu-text">고도몰</span>
					</a>
				</li>
				<li>
					<a id="apiSgEdiMenu" href="#">
						<span class="menu-text">신세계EDI</span>
					</a>
				</li>
				<li>
					<a id="apiPrmMenu" href="#">
						<span class="menu-text">PRM(이번에X)</span>
					</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#" class="menu-dropdown">
				<i class="menu-icon fa fa-table"></i>
				<span class="menu-text"> MDM </span><!--Master Data Management  -->
				<i class="menu-expand"></i>
			</a>
			<ul class="submenu">
				<li>
					<a id="commonCodeManagement" href="#">
						<span class="menu-text">공통코드관리</span>
					</a>
				</li>
				<li>
					<a id="itemManagement" href="#">
						<span class="menu-text">상품관리</span>
					</a>
				</li>
				<li>
					<a id="costManagement" href="#">
						<span class="menu-text">단가관리</span>
					</a>
				</li>
				<li>
					<a id="groupItemManagement" href="#">
						<span class="menu-text">세트관리</span>
					</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#" class="menu-dropdown">
				<i class="menu-icon fa fa-table"></i>
				<span class="menu-text"> 주문관리 </span><!-- Order Management  -->
				<i class="menu-expand"></i>
			</a>
			<ul class="submenu">
				<li>
					<a id="orderState" href="#">
						<span class="menu-text">주문현황</span>
					</a>
				</li>
				<li>
					<a id="deliveryState" href="#">
						<span class="menu-text">배송현황</span>
					</a>
				</li>
				<li>
					<a id="returnState" href="#">
						<span class="menu-text">반품현황</span>
					</a>
				</li>
				<li>
					<a id="calculationState" href="#">
						<span class="menu-text">정산현황</span>
					</a>
				</li>
			</ul>
		</li>
	</ul>
</div>
<!-- /Page Sidebar -->