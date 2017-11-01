package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemCategoryDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemCategoryAction extends ActionSupport implements SessionAware{



	/**
	 * アイテム情報を取得
	 */
	public ItemCategoryDAO itemCategoryDAO = new ItemCategoryDAO();


	/**
	 * @return buyItemDTOList
	 */
	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	/**
	 * @param buyItemDTOList セットする buyItemDTOList
	 */
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

	List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	/**
	 * アイテム購入個数
	 */
	public int count;

	/**
	 * 支払い方法
	 */
	public String pay;

	public String itemName;
	public int itemPrice;

	public String itemCategory;

	/**
	 * アイテム情報を格納
	 */
	public Map<String, Object>  session;

	/**
	 * 処理結果
	 */
	public String result;

	/**
	 * 商品情報取得メソッド
	 *
	 * @author internous
	 * @throws SQLException
	 */
	public String execute() throws SQLException {
		result = SUCCESS;


		String category="";



		if(itemCategory.equals("1")) {

			category = "PS4";
			session.put("itemCategory", category);
		} else if(itemCategory.equals("2")) {

			category = "PSVITA";
			session.put("itemCategory", category);
		}else if(itemCategory.equals("3")) {
			category = "Switch";
			session.put("itemCategory", category);
		}else if(itemCategory.equals("4")) {
			category = "Wiiu";
			session.put("itemCategory", category);
		}else {
			category = "3ds";
			session.put("itemCategory", category);
		}
		buyItemDTOList = itemCategoryDAO.getBuyItemInfo(category);
		return result;
	}

	/**
	 * @return itemName
	 */
	public String getItemName() {
		return itemName;
	}

	/**
	 * @param itemName セットする itemName
	 */
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	/**
	 * @return itemPrice
	 */
	public int getItemPrice() {
		return itemPrice;
	}

	/**
	 * @param itemPrice セットする itemPrice
	 */
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}


}
