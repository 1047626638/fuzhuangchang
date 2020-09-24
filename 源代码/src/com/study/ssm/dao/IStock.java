package com.study.ssm.dao;

import java.sql.Date;
import java.util.List;

import com.study.ssm.entity.Stock;

public interface IStock {
	int insertStock(Stock stock);
	List<Stock> selectAll();
	List<Stock> selectStock(Date sdate);
	boolean deleteStock(String snumber);
}
