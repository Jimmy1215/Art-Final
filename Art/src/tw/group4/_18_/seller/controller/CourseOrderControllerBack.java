package tw.group4._18_.seller.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.group4._18_.buyer.model.CourseOrders;
import tw.group4._18_.seller.model.CourseBeanService;
import tw.group4._18_.seller.model.CourseOrderListService;
import tw.group4.util.Hibernate;

@Controller
public class CourseOrderControllerBack {
	
	@Autowired
	private CourseOrderListService COLService;
	
	@Autowired
	private CourseBeanService cBeanService;
	
	//查看訂單總覽
	@Hibernate
	@RequestMapping(path = "/18/coOrderListBack.ctrl") //網址 
	public String coOrderListBack(Model m) {
		
		List<CourseOrders> OrderList = cBeanService.selectUserOrderListNoPage();
		m.addAttribute("OrderList", OrderList);
		
		return "18/sellerCo/18_OrderListB"; //欲跳之jsp名字
	}
	
	//查看單筆訂單詳細
	@Hibernate
	@RequestMapping(path = "/18/coOrderListOneBack.ctrl") //網址
	public String coOrderListOneBack(@RequestParam(name = "orderListID") int orderListID, Model m) {
		CourseOrders cOrders = COLService.select(orderListID);
		
		m.addAttribute("cOrders", cOrders);
		
		return "18/sellerCo/18_OrderListOneB"; //欲跳之jsp名字
	}
	
	
	//刪除特定一筆訂單
	@Hibernate
	@RequestMapping(path = "/18/coOrderDelete.ctrl") 
	public String deleteOrderOne(@RequestParam(name = "orderListID") int orderListID) {
		
		COLService.delete(orderListID);
		
		
		return "redirect:/18/sellerCo/coOrderListBack.ctrl"; // 本controller最上面那個
	}

}
