package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.PutItemComplateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class PutItemComplateAction extends ActionSupport implements SessionAware{

	public String putItemType;
	public String putItemName;
	public String putItemDetail;


	public String putItemPrice;
	public String putItemStock;


	public Map<String,Object> session;
	public String result;
	public PutItemComplateDAO putItemComplateDAO = new PutItemComplateDAO();

	public String execute() throws SQLException {

		putItemComplateDAO.putItem(session.get("putItemType").toString(),
				session.get("putItemName").toString(),
				session.get("putItemDetail").toString(),
				session.get("putItemPrice").toString(),
				session.get("putItemStock").toString());
		result = SUCCESS;

		return result ;
	}

	/**
	 * @return putItemName
	 */
	public String getPutItemName() {
		return putItemName;
	}

	/**
	 * @param putItemName セットする putItemName
	 */
	public void setPutItemName(String putItemName) {
		this.putItemName = putItemName;
	}

	/**
	 * @return putItemPrice
	 */
	public String getPutItemPrice() {
		return putItemPrice;
	}

	/**
	 * @param putItemPrice セットする putItemPrice
	 */
	public void setPutItemPrice(String putItemPrice) {
		this.putItemPrice = putItemPrice;
	}

	/**
	 * @return putItemStock
	 */
	public String getPutItemStock() {
		return putItemStock;
	}

	/**
	 * @param putItemStock セットする putItemStock
	 */
	public void setPutItemStock(String putItemStock) {
		this.putItemStock = putItemStock;
	}


	/**
	 * @return putItemType
	 */
	public String getPutItemType() {
		return putItemType;
	}

	/**
	 * @param putItemType セットする putItemType
	 */
	public void setPutItemType(String putItemType) {
		this.putItemType = putItemType;
	}

	/**
	 * @return putItemDetail
	 */
	public String getPutItemDetail() {
		return putItemDetail;
	}

	/**
	 * @param putItemDetail セットする putItemDetail
	 */
	public void setPutItemDetail(String putItemDetail) {
		this.putItemDetail = putItemDetail;
	}


	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
