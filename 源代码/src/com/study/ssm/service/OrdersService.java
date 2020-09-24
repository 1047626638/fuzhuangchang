package com.study.ssm.service;


import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.IOrders;
import com.study.ssm.entity.Orders;

@Service
public class OrdersService {
	@Autowired
	private IOrders orderMapper;
	public Orders insertOrders(Orders orders){
		orderMapper.insertOrders(orders);
		return orders;
	}
	public List<Orders> selectOrders(Date odate){
		return orderMapper.selectOrders(odate);
	}
	public List<Orders> selectAll(){
		List<Orders> orders = orderMapper.selectAll();
		return orders;
	}
	public boolean updateOrders(Orders orders){
		return orderMapper.updateOrders(orders);
	}
	
		
}
