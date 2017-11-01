package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemSearchDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemSearchAction extends ActionSupport{


	public String searchName;

	public ArrayList<BuyItemDTO> itemList = new ArrayList<BuyItemDTO>();

	/**
	 * 商品を検索するメソッド
	 *  商品を検索して、該当する商品があればSUCCESS、なければERROR
	 */
	public String execute(){
		String result = ERROR;
		 ItemSearchDAO dao = new  ItemSearchDAO();
		itemList = dao.select(searchName);

		if(!(itemList.isEmpty())){
			result = SUCCESS;
		}
		return result;

	}

	/**
	 * @return itemList
	 */
	public ArrayList<BuyItemDTO> getItemList() {
		return itemList;
	}

	/**
	 * @param itemList セットする itemList
	 */
	public void setItemList(ArrayList<BuyItemDTO> itemList) {
		this.itemList = itemList;
	}

	/**
	 * @return searchName
	 */
	public String getSearchName() {
		return searchName;
	}

	/**
	 * @param searchName セットする searchName
	 */
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}

}
