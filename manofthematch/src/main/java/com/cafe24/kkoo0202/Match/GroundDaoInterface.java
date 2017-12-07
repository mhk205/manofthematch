package com.cafe24.kkoo0202.Match;

import java.util.List;

public interface GroundDaoInterface {
	List<Ground> GroundSelect();
	List<Ground> GroundSelectById(int ground_no);	
}
