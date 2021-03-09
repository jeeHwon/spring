package kr.co.food.dao;

import java.util.ArrayList;

import kr.co.food.dto.CustomDietDto;

public interface CustomDietDao 
{
	public ArrayList<String> getFoodName(String food_cate3, String food_name);
	
	public void write(CustomDietDto dto);
}
