package kr.co.shopping.dao;

import kr.co.shopping.dto.MemberDto;

public interface MemberDao {
	public int get_userid_chk(String userid);
	public int get_email_chk(String email);
	public void member_ok(MemberDto mdto);

}
