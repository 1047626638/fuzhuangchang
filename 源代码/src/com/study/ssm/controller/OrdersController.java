package com.study.ssm.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.ssm.entity.Orders;
import com.study.ssm.service.OrdersService;

@Controller
@Scope(value="session")
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService orderServers;
	Date date1 = null;
	@RequestMapping("/insert")
	public String insertOrders(Orders orders){
		System.out.println(orders);
		orderServers.insertOrders(orders);
		return "order_add";
	}
	@RequestMapping("/select")
	public String selectOrders(Model model,Date odate){
		date1 = odate;
			model.addAttribute("orderList", orderServers.selectOrders(odate));					
		
		return "reportForm1";
	}
	@RequestMapping("/selectAll")
	public String selectAll(Model model){
		model.addAttribute("orderList1", orderServers.selectAll());
		return "reportForm1";
	}
	@RequestMapping("/select2/{id}")
	public String select2(Model model,@PathVariable("id")Date odate){
		model.addAttribute("orders", orderServers.selectOrders(odate).get(0));
		return "orders_update";	
	}
	@RequestMapping("/updateOrders")
	public String updateOrders(Model model,Orders orders){
		model.addAttribute("orderList1", orderServers.updateOrders(orders));
		return selectAll(model);
	}

}
