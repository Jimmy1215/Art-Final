package tw.group4._18_.seller.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tw.group4._18_.buyer.model.CourseOrders;

@Service("CourseOrderLisrService")
public class CourseOrderListService {
	
	private CourseOrderListDAO cOrderDAO;
	
	public CourseOrderListService() {
		
	}
	
	@Autowired
	public CourseOrderListService(CourseOrderListDAO cOrderDAO) {
		this.cOrderDAO = cOrderDAO;
	}
	
	public CourseOrders select(int orderListID) {
		return cOrderDAO.select(orderListID);
	}
	
	public boolean delete(int orderListID) {
		return cOrderDAO.delete(orderListID);
	}

}
