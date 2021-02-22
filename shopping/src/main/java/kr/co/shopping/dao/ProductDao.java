package kr.co.shopping.dao;

import java.util.ArrayList;

import kr.co.shopping.dto.DaeDto;
import kr.co.shopping.dto.JungDto;
import kr.co.shopping.dto.ProductDto;

public interface ProductDao {
	public ArrayList<DaeDto> get_dae();
	public ArrayList<JungDto> get_jung(String daecode);
	public Integer get_maxpcode(String pcode);
	public void pwrite_ok(ProductDto pdto);
	public ArrayList<ProductDto> get_pro_list(String pcode);
	public ProductDto get_pro_content(String pcode);
}
