package com.study.ssm.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.study.ssm.dao.IAgent;
import com.study.ssm.dao.IUsermapper;
import com.study.ssm.entity.Account;
import com.study.ssm.entity.Agent;
import com.study.ssm.entity.Employee;
import com.sun.org.apache.bcel.internal.generic.INEG;


@Service
public class AgentService {
	@Autowired
	private IAgent userMapper;
	//添加事务处理的位置
		public Agent addAgent(Agent agent){
			userMapper.insertAgent(agent);
			return agent;
		}
		public PageInfo<Agent> getAgentList(int pageNum,int pageSize){
			PageHelper.startPage(pageNum,pageSize,true);
			/*Map paramsMap = new HashMap<>();*/
			List<Agent> allUser = userMapper.selectAll();//封装查询信息
			return new PageInfo<Agent>(allUser);//依赖Mapper完成数据查询并返回
		}
		public PageInfo<Agent> selectAgentByAname(String aname,int pageNum,int pageSize){
			PageHelper.startPage(pageNum,pageSize);
			List<Agent> agent = userMapper.selectAgentByAname(aname);
			return new PageInfo<Agent>(agent);
		}
		public boolean deleteAgent(int anumber){
			return userMapper.deleteAgent(anumber);
		}
		public boolean updateAgent(Agent agent){
			return userMapper.updateAgent(agent);
		}
	
	
	
	
	
	
}
