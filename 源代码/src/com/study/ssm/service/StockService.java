package com.study.ssm.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.ssm.dao.IStock;
import com.study.ssm.entity.Stock;

@Service
public class StockService {
	@Autowired
	private IStock stockMapper;
	public int insertStock(Stock stock){
		return stockMapper.insertStock(stock);
	}
	public List<Stock> selectStock(){
		return stockMapper.selectAll();
	}
	public List<Stock> selectStockByDate(Date sdate){
		return stockMapper.selectStock(sdate);
	}
	public boolean deleteStock(String snumber){
		return stockMapper.deleteStock(snumber);
	}
}
