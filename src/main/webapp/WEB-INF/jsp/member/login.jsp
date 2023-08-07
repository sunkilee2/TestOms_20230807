<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Head -->
<head>
    <meta charset="utf-8" />
    <title>주문관리시스템</title>

    <meta name="description" content="Dashboard" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="/publish/html/assets/img/favicon.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="/publish/html/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="/publish/html/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/publish/html/assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts-->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <!--Beyond styles-->
    <link href="/publish/html/assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="/publish/html/assets/css/demo.min.css" rel="stylesheet" />
    <link href="/publish/html/assets/css/typicons.min.css" rel="stylesheet" />
    <link href="/publish/html/assets/css/animate.min.css" rel="stylesheet" />
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />
    
    <!--Page Related styles-->
    <link href="/publish/html/assets/css/dataTables.bootstrap.css" rel="stylesheet" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="/publish/html/assets/js/skins.min.js"></script>
    
    <!--Basic Scripts-->
	<script src="/publish/html/assets/js/jquery.min.js"></script>
	<script src="/publish/html/assets/js/bootstrap.min.js"></script>
	<script src="/publish/html/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
</head>
<style>
.main-container {
	position:relative;
}
.main-container:after {
	z-index:-1;
	background-image: url(/publish/html/assets/img/login_bg.jpg) ;
	height: 100%;
    min-width: 710px;
    margin: 0 auto;
    background-size: cover;
}
</style>
<body>
<!-- Main Container -->
	<div class="main-container" >
           <!-- Page Body -->
		<div class="page-body"  style="background:none;">
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
										<label for="exampleInputEmail1">ID</label>
										<input type="text" class="form-control" id="id" value="" placeholder="ID">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">PASSWORD</label>
										<input type="password" id="passwd" value="" class="form-control" placeholder="PASSWORD">
									</div>
									<div class="form-group">
										<div class="checkbox">
											<label>
												<!-- <input type="checkbox" id="checkId">
												<span class="text">아이디 저장</span> -->
											</label>
											<button type="button" id="joinMemberBtn" class="btn btn" style="float: left;padding: 6px 20px;">회원가입</button>
											<button type="button" id="loginSubmitBtn" class="btn btn-danger" style="float: right;padding: 6px 20px;">LOGIN</button>
										</div>
									</div>
								</form>
							</div>
						</div>                                    
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--Beyond Scripts-->
<script src="/publish/html/assets/js/beyond.js"></script>

<script type="text/javascript">

$(document).ready(function () {

	$('#joinMemberBtn').click(function(e) {
		$.ajax({
			url: '/member/join', // 요청이 전송될 URL 주소
			type: 'GET', // http 요청 방식 (default: ‘GET’)
			async: true, // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
			timeout: 3000, // 요청 제한 시간 안에 완료되지 않으면 요청을 취소하거나 error 콜백을 호출.(단위: ms)
			processData: true, // 데이터를 컨텐트 타입에 맞게 변환 여부
			contentType: 'application/json', // 요청 컨텐트 타입
			data: {
				userId:'daehan.lee@s-food.com'
			},
			success: function(data, status, xhr) {
				$(".page-body").html(data);
			},
			error: function(xhr, status, error) {
				console.log(error);
			},
		});
	});
	
	$('#loginSubmitBtn').click(function(e) {
		$.ajax({
			url: '/member/loginSubmit', // 요청이 전송될 URL 주소
			type: 'GET', // http 요청 방식 (default: ‘GET’)
			async: true, // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
			timeout: 3000, // 요청 제한 시간 안에 완료되지 않으면 요청을 취소하거나 error 콜백을 호출.(단위: ms)
			processData: true, // 데이터를 컨텐트 타입에 맞게 변환 여부
			contentType: 'application/json', // 요청 컨텐트 타입
			data: {
				userId:'daehan.lee@s-food.com'
			},
			success: function(data, status, xhr) {
				alert(data); // 성공, 실패(실패 이유 메세지) 사용자 제공
				// 이후 메인 화면(single page application) 이동
				
			},
			error: function(xhr, status, error) {
				console.log(error);
			},
		});
	});
	
});



</script>
</html>