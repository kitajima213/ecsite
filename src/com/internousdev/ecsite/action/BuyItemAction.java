
package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {


	private static final long serialVersionUID = -5504356778237353086L;

	/**
	 * アイテム情報を取得
	 */
	public BuyItemDAO buyItemDAO = new BuyItemDAO();

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
	 */
	public String execute() {


		result = SUCCESS;

		return result;
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


	/**
	 * @param session セットする session
	 */


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
