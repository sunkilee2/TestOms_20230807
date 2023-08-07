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
		url: '/order/orderList', // ��û�� ���۵� URL �ּ�
		type: 'GET', // http ��û ��� (default: ��GET��)
		async: true, // ��û �� ����ȭ ����. �⺻�� �񵿱�(asynchronous) ��û (default: true)
		timeout: 3000, // ��û ���� �ð� �ȿ� �Ϸ���� ������ ��û�� ����ϰų� error �ݹ��� ȣ��.(����: ms)
		processData: true, // �����͸� ����Ʈ Ÿ�Կ� �°� ��ȯ ����
		contentType: 'application/json', // ��û ����Ʈ Ÿ��
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
						�ֹ�����
					</a>
					<a id="editabledatatable_new" href="javascript:void(0);" class="btn btn-default ">
						WMS ����û
					</a>
					<a id="exceldown" href="javascript:void(0);" class="btn btn-default">
						���� �����ȣ ���� <i class="fa fa-download righ"></i>
					</a>
				</div>
				<div>
					<table class="table table-striped table-hover table-bordered">
						<thead class="bordered-blueberry">
							<tr>
								<th style="width: 10%;">
									���θ�
								</th>
								<th style="width: 19%;">
									�ֹ���ȣ
								</th>
								<th style="width: 8%;">
									WMS����ȣ
								</th>
								<th style="width: 8%;">
									�ֹ��ڸ�
								</th>
								<th style="width: 8%;">
									�����θ�
								</th>
								<th style="width: 8%;">
									�ֹ���ǰ��(�ɼ�)
								</th>
								<th style="width: 6%;">
									�ֹ�����
								</th>
								<th style="width: 10%;">
									ERP ��ǰ�ڵ�
								</th>
								<th style="width: 10%;">
									ERP ��ǰ��
								</th>
								<th style="width: 5%;">
									������
								</th>
								<th style="width: 8%;">
									â��
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