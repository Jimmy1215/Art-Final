<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Vue.js -->
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<style>
.badge {
	padding-left: 9px;
	padding-right: 9px;
	-webkit-border-radius: 9px;
	-moz-border-radius: 9px;
	border-radius: 9px;
}

.label-warning[href], .badge-warning[href] {
	background-color: #c67605;
}

#lblCartCount {
	font-size: 5px;
	background: #ff0000;
	color: #fff;
	padding: 0 3px;
	vertical-align: top;
	margin-left: -10px;
}
</style>

<body>


	<header id="header" id="home"
		style="font-family: cwTeXFangSong, serif;">

		<div class="container header-top" id="app2">
			<div class="row">
				<div class="col-6 top-head-left">
					<ul>
						<li><a href="<c:url value='/35/loginEntry'/>">會員登入</a></li>
						<li><a href="<c:url value='/35/registerEntry'/>">成為會員</a></li>
					</ul>
				</div>
				<div class="col-6 top-head-right">
				
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						
						<li><a href="<c:url value='/04/goshoppingcart.ctrl' />">
								<i class="fas fa-ticket-alt" style="font-size: 13px"></i>
<!-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wallet-fill" viewBox="0 0 16 16"> -->
<!--   <path d="M1.5 2A1.5 1.5 0 0 0 0 3.5v2h6a.5.5 0 0 1 .5.5c0 .253.08.644.306.958.207.288.557.542 1.194.542.637 0 .987-.254 1.194-.542.226-.314.306-.705.306-.958a.5.5 0 0 1 .5-.5h6v-2A1.5 1.5 0 0 0 14.5 2h-13z"/> -->
<!--   <path d="M16 6.5h-5.551a2.678 2.678 0 0 1-.443 1.042C9.613 8.088 8.963 8.5 8 8.5c-.963 0-1.613-.412-2.006-.958A2.679 2.679 0 0 1 5.551 6.5H0v6A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-6z"/> -->
<!-- </svg> -->
							</a> 
							<i class='badge badge-warning' id='lblCartCount'> <%=pageContext.getSession().getAttribute("shoppingcartnum")%></i></li>
							
						<li><a href="<c:url value='/14/gotoCart.ctrl' />">
						<i class="fas fa-shopping-cart" style="font-size: 13px"></i>
<!-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16"> -->
<!--   <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/> -->
<!-- </svg> -->
							
							</a> 
							<i class='badge badge-warning' id='lblCartCount'> {{shopCart}} </i></li>
						<%-- 						<i class='badge badge-warning' id='lblCartCount'> <%=pageContext.getSession().getAttribute("carSize") %> </i></li> --%>
						<!-- 						<li><a href="#"><i class="fa fa-behance"></i></a></li> -->
					</ul>
				</div>
			</div>
		</div>
		<hr>
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="<c:url value='/index.html' />"><img
						src="<c:url value='/frontstyle/img/aaart.png'/>" alt="" title=""
						style='display: block; width: 230px; height: 40px;' /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="#"><a href="<c:url value='/index.html' />">首頁</a></li>
						<li class=""><a href="<c:url value='/14/scroller' />">得藝洋行</a>
							<ul>
								<li class="menu-has-children"><a
									style="font-size: 15px; font-weight: 1000;"
									href="#">配件飾品</a>
									<ul>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=戒指' />">戒指</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=耳環' />">耳環</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=項鍊' />">項鍊</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=眼鏡' />">眼鏡</a></li>
									</ul></li>
								<li><a style="font-size: 15px; font-weight: 1000;"
									href="#">居家生活</a>
									<ul>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=家飾布置' />">家飾布置</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=生活用品' />">生活用品</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=收納雜貨' />">收納雜貨</a></li>
									</ul></li>
								<li><a style="font-size: 15px; font-weight: 1000;"
									href="#">文具書籍</a>
									<ul>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=文書用品' />">文書用品</a></li>
										<li><a style="font-size: 15px; font-weight: 1000;"
											href="<c:url value='/14/scroller?query=書籍周邊' />">書籍周邊</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="<c:url value='/03/front/reservation/onlineBooking.ctrl' />">得藝食堂</a></li>
						<li><a href="<c:url value='/03/index/shop/index.ctrl' />">找商店</a></li>
						<li><a href="<c:url value='/userStreetArtistPage.ctrl' />">找藝人</a></li>
						<li><a href="<c:url value='/18/cSelectAllFront.ctrl' />">找課程</a></li>
						<li><a href="<c:url value='/35/routePlanningEntry' />">藝同去郊遊</a></li>
						<li><a href="<c:url value='/35/randomRecom.ctrl' />">離我最近的活動</a></li>
						<li><a href="<c:url value='/35/chatRoomEntry' />">客服</a></li>
						<!-- 						<li class="menu-has-children"><a href="">Pages</a> -->
						<!-- 							<ul> -->
						<!-- 								<li><a href="#">Blog Single</a></li> -->
						<!-- 								<li><a href="#">Category</a></li> -->
						<!-- 								<li><a href="#">Elements</a></li> -->
						<!-- 							</ul></li> -->
					</ul>
				</nav>
				<!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<script>
        var vm2 = new Vue({
        	el:'#app2',
        	data(){
        		return {
            		
					shopCart:0
        		}
	    	},

            	mounted: function(){
      	          var self = this;
      	          $.ajax({
      	              type:"get",
      	              url:"/Art/14/getShopCartSize",    
//       	              contentType: "application/json",
      	              dataType:"text",
      	              success:function(value){
      	              	self.shopCart = value;
      	              	
      	              },
      	              error:function(){
      	                  alert("整組壞光光 at mounted: getShopCartSize");
      	              }
      	          });

      	        
      	      }

        	})

        $(document).ready(function () {
            var self = vm2;
            var clock = setInterval(sum , 3000);
           

            
        })
        
        function sum(){
	  var self = vm2;
	  $.ajax({
          type:"get",
          url:"/Art/14/getShopCartSize",    
//           contentType: "application/json",
          dataType:"text",
          success:function(value){
          	self.shopCart = value;
          	
          },
          error:function(){
              alert("整組壞光光 at topBar: getShopCartSize");
          }
      });
        }
        </script>
</body>