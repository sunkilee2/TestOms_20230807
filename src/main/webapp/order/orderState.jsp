<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
<script>
$(function(){
	$.ajax({
		url: '/order/orderList', // 요청이 전송될 URL 주소
		type: 'GET', // http 요청 방식 (default: ‘GET’)
		async: true, // 요청 시 동기화 여부. 기본은 비동기(asynchronous) 요청 (default: true)
		timeout: 3000, // 요청 제한 시간 안에 완료되지 않으면 요청을 취소하거나 error 콜백을 호출.(단위: ms)
		processData: true, // 데이터를 컨텐트 타입에 맞게 변환 여부
		contentType: 'application/json', // 요청 컨텐트 타입
		data: null,
		success: function(data, status, xhr) {
			console.log(data);
			var row = "";
			for ( var i = 0 ; i < data.length ; i++ ) {
				row += "<tr>";
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += ('<td>'+data[i].apiOrderId+'</td>');
				row += "</tr>";
			}
			
			$('#orderListRow').html(row)
		},
		error: function(xhr, status, error) {
			console.log(error);
		},
	});
});
</script>
</head>
<div class="row">
	<div class="col-xs-12 col-md-12">
		<div class="widget">
			<div class="widget-header ">
				<!-- <span class="widget-caption">Simple DataTable</span> -->
				<div class="widget-buttons">
					<a href="#" data-toggle="maximize">
						<i class="fa fa-expand"></i>
					</a>
					<a href="#" data-toggle="collapse">
						<i class="fa fa-minus"></i>
					</a>
					<a href="#" data-toggle="dispose">
						<i class="fa fa-times"></i>
					</a>
				</div>
			</div>
			<div class="widget-body" style="padding-bottom: 60px;">
				<div class="table-toolbar"  style="border-bottom: 1px solid #e5e5e5">
					<a id="editabledatatable_new" href="javascript:void(0);" class="btn btn-default ">
						주문수집
					</a>
					<a id="editabledatatable_new" href="javascript:void(0);" class="btn btn-default ">
						WMS 출고요청
					</a>
					<a id="exceldown" href="javascript:void(0);" class="btn btn-default">
						사방넷 송장번호 전송 <i class="fa fa-download righ"></i>
					</a>
				</div>
				<div>
					<table class="table table-striped table-hover table-bordered">
						<thead class="bordered-blueberry">
							<tr>
								<th style="width: 10%;">
									쇼핑몰
								</th>
								<th style="width: 19%;">
									주문번호
								</th>
								<th style="width: 8%;">
									WMS출고번호
								</th>
								<th style="width: 8%;">
									주문자명
								</th>
								<th style="width: 8%;">
									수취인명
								</th>
								<th style="width: 8%;">
									주문상품명(옵션)
								</th>
								<th style="width: 6%;">
									주문수량
								</th>
								<th style="width: 10%;">
									ERP 상품코드
								</th>
								<th style="width: 10%;">
									ERP 상품명
								</th>
								<th style="width: 5%;">
									출고수량
								</th>
								<th style="width: 8%;">
									창고
								</th>
							</tr>
						</thead>
						<tbody id="orderListRow">
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>