package com.study.ssm.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.ssm.entity.Stock;
import com.study.ssm.service.StockService;

@Controller
@Scope(value="session")
@RequestMapping("/stock")
public class StockController {
	@Autowired
	StockService stockService;
	Date sdate2;
	@RequestMapping("/insert")
	public String insertStock(Model model,Stock stock){
		model.addAttribute("stockList",stockService.insertStock(stock));
		return "intoData";
	}
	@RequestMapping("/select")
		public String selectStock(Model model,Date sdate){
		if(sdate==null){
			model.addAttribute("stockList", stockService.selectStock());			
		}else{
			model.addAttribute("stockList", stockService.selectStockByDate(sdate));
		}
		return "outPrintData";
	}
	@RequestMapping("/select2")
	public String selectStock2(Model model,Date sdate){
		sdate2 = sdate;
	if(sdate==null){
		model.addAttribute("stockList", stockService.selectStock());			
	}else{
		model.addAttribute("stockList", stockService.selectStockByDate(sdate));
	}
	return "outData";
}
	@RequestMapping("delete")
	public String deleteStock(Model model,String snumber){
		model.addAttribute("stock", stockService.deleteStock(snumber));
		return selectStock2(model,sdate2);
	}
	
}
