package com.study.ssm.dao;

import java.util.List;

import com.study.ssm.entity.Agent;


public interface IAgent {
	int insertAgent(Agent agent);
	List<Agent> selectAgentByAname(String aname);
	List<Agent> selectAll();
	boolean  deleteAgent(int anumber);
	boolean updateAgent(Agent agent);
	
}
