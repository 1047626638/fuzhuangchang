package com.study.ssm.dao;

import java.sql.Date;
import java.util.List;

import com.study.ssm.entity.Orders;

public interface IOrders {
	int insertOrders(Orders orders);
	List<Orders> selectOrders(Date odate);
	List<Orders> selectAll();
	boolean updateOrders(Orders orders);
	
}
