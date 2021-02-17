package kr.co.shopping.dao;

import java.util.ArrayList;

import kr.co.shopping.dto.DaeDto;
import kr.co.shopping.dto.JungDto;

public interface ProductDao {
	public ArrayList<DaeDto> get_dae();
	public ArrayList<JungDto> get_jung(String daecode);
}
