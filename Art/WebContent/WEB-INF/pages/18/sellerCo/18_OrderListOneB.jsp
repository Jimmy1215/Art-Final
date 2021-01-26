<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<title>個人訂單明細</title>
<style type="text/css">
#main {
	position: absolute;
	top: 110px;
	left: 210px;
}

#borderA {
	border: 1px solid black;
}
</style>
</head>
	
	<p />
	<TABLE style="margin-left: auto; margin-right: auto; background: #ffffff; border: 1px black solid;">
		<tr id='borderA' height='50'>
			<th id='borderA' align="center" colspan="6"><h3>訂單明細</h3></th>
		</tr>
		<tr id='borderA' height='36'>
			<td colspan="6">
				<table>
					<tr id='borderA'>
						<td align="Left" width="350px">
							<b>出貨地址：</b>${cOrders.customerAddress}
						</td>
						<td align="center" width="300px">
							<b>訂購日期：</b>${cOrders.date}
						</td>
						<td align="center" width="280px">
							<b>訂單編號：</b>${cOrders.orderNoCo}
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr id='borderA' height='36' style="text-align: center;">
			<th id='borderA' width="100px" align="center">#</th>
			<th id='borderA' width="100px" align="center">品項</th>
			<th id='borderA' width="70px" align="center">單價</th>
			<th id='borderA' width="50px" align="center">數量</th>
			<th id='borderA' width="100px" align="center">總價</th>
		</tr>
		<c:set var="subtotal" value="0" />
		<c:forEach var="OLOB" varStatus="stat" items="${cOrders.courseOrderItems}">
		<!-- 因為有兩層所以要選到courseOrderItems層
		cOrders.courseOrderItems 在CourseOrderControllerBack #42 + CourseOrders #46 -->
			
			<tr id='borderA' bgColor="FFFFFF" height='30'>
				<td id='borderA' align="center">${stat.count}</td>
				<td id='borderA' align="center">${OLOB.courseTitle}</td>
				<td id='borderA' align="right">${OLOB.coursePrice}&nbsp;</td>
				<td id='borderA' align="right">${OLOB.courseNum}&nbsp;</td>
				<td id='borderA' align="right">${OLOB.coursePrice*OLOB.courseNum}&nbsp;</td>
				
				
				<c:set var="subtotal"
					value="${ subtotal + OLOB.coursePrice * OLOB.courseNum }" />
			</tr>
		</c:forEach>
		<tr height='30'>
			<TD id='borderA' align="center" >&nbsp;</TD>
			<TD id='borderA' width="60px" align="center" colspan="2"><b></b></TD>
			<TD id='borderA' width="100px" align="right" colspan="2">
			   <fmt:formatNumber value="${subtotal}" pattern="#,###,###" />元</TD>
		
	</TABLE>
	<p />

	<div style="text-align: center">
		<a href="<c:url value='/14/ShowAllOrderList.ctrl' />">回上一頁</a>&nbsp;&nbsp;
		
	</div>
</html>
