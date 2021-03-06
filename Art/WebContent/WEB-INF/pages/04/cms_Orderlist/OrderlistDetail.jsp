<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
<meta charset="UTF-8">
<title>訂單</title>
<style type="text/css">
form{
display:inline;
}


</style>
</head>
<body>


<div class="container">
 <br><br><H1>訂購人資訊</H1>
    <table class= "table table-bordered">
        <tr>
            <td>訂購人姓名
            </td>
            <td>${requestScope.orderlist.NAME}</td>
        </tr>
        <tr>
            <td>電子郵件
            </td>
            <td>
             ${requestScope.orderlist.EMAIL}
             </td>
        </tr>
        <tr>
            <td>電話
            </td>
            <td>
            
             ${requestScope.orderlist.TEL}
            </td>
        </tr>
        <tr>
            <td>地址
            </td>
            <td>
             ${requestScope.orderlist.ADDRESS}
            </td>
        </tr>
     </table><br><br> <br>  
     
	<H2>票券資訊</H2>
		<table class="table table-bordered">
		<tr> 
				<td>節目名稱</td>
				<td>票種</td>
				<td>座位</td>
				<td>票價</td>

			</tr>
			<p class="ticketcategry"  style="display:none">${requestScope.orderlist.TICKETCATEGORY}</p>
			<c:forEach items="${requestScope.orderlist.seats}" var="seat">
			<tr> 
				<td class="title">${requestScope.orderlist.TITLE}</td>
				<td >${requestScope.orderlist.TICKETCATEGORY}</td>
				<td >${seat}</td>
				<td class="price"></td>
				
			</tr>
			</c:forEach>
			<tr> 
				<td >總計:</td>
				<td ></td>
				<td ></td>
				<td >NT$${requestScope.orderlist.TOTALPRICE}</td>
			
			</tr>
			
		</table>	
		<form name="order" action="<c:url value='/04/Cms/UpdateOrderlist.ctrl'/> " method="get"> 						
			 <button type="submit" name="orderid"  value="${requestScope.orderlist.ORDERID}" class="btn btn-info" >修改訂單</button>
		</form> 
		</div>
<%-- 		<form name="order" action="<c:url value='/04/Cms/OrderlistStatus.ctrl'/> " method="get"> 						 --%>
<%-- 			<input type="hidden" name="orderpk" value="${orderlist.ORDERPK}">					 --%>
<%-- 			<button type="submit" name="orderid"  value="${orderlist.ORDERID}" class="btn btn-info" onclick="return del()">辦理退票</button> --%>
<!-- 		</form>  -->


<script src="https://code.jquery.com/jquery-3.5.1.js"
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">
</script>

<script>
$(document).ready(		
			function() {
					console.log($(".ticketcategry").text());
					if($(".ticketcategry").text()== "全票"){
					$(".price").text("NT$2000")
					}else{
					$(".price").text("NT$1000")
					}					 
				});

    $("#update").click(function () {
    	
    		window.location ="<c:url value='/_04_Orderlist/OrderlistUpdate.jsp'/>" 
    	
    })
    

    function del() {
		var msg = "是否取消訂單";
		if (confirm(msg) == true) {
			return true;
		} else {
			return false;
		}
	}
	
    
    

 </script>	  
	  
	  
</body>

</html>