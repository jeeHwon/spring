package kr.co.batis.dao;

import java.util.ArrayList;

import kr.co.batis.dto.Dto;
import kr.co.batis.dto.MemberDto;

public interface Dao {
	//method 정의
	public void write_ok(Dto dto);	//추상method
	public ArrayList<Dto> list(int index);
	public Dto content(String id);
	public void readnum(String id);
	public Dto update(String id);
	public void update_ok(Dto dto);
	public void delete(String id);
	public Integer pwd_check(String id, String pwd);
	
	//로그인 영역
	public MemberDto login_ok(MemberDto mdto);
	
	//페이지 영역
	public Integer getCnt();
	
}

