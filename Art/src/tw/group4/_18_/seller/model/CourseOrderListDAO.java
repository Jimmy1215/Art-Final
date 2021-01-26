package tw.group4._18_.seller.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import tw.group4._18_.buyer.model.CourseOrders;

@Repository("OrderListDAO")
public class CourseOrderListDAO {
	private Session session;
	private SessionFactory sessionFactory;
	
	@Autowired
	public CourseOrderListDAO(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public CourseOrders select(int orderListID) {
		Session session = sessionFactory.getCurrentSession();
		return  session.get(CourseOrders.class, orderListID);
	}
	
	public boolean delete(int orderListID) {
		Session session = sessionFactory.getCurrentSession();
		CourseOrders result = session.get(CourseOrders.class, orderListID);
		if (result != null) {
			session.delete(result);
			return true;
		}
		return false;
	}

}
