package com.internousdev.ecsite.dto;

public class MyPageDTO {

	public String itemName;

	public String itemType;


	/**
	 * @return itemType
	 */
	public String getItemType() {
		return itemType;
	}

	/**
	 * @param itemType セットする itemType
	 */
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String total_price;

	public String total_count;

	public String pay;

	public String userName;

	public String id;

	public String insert_date;

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	/**
	 * @return total_price
	 */
	public String getTotal_price() {
		return total_price;
	}

	/**
	 * @param total_price セットする total_price
	 */
	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}

	/**
	 * @return total_count
	 */
	public String getTotal_count() {
		return total_count;
	}

	/**
	 * @param total_count セットする total_count
	 */
	public void setTotal_count(String total_count) {
		this.total_count = total_count;
	}

	/**
	 * @return pay
	 */
	public String getPay() {
		return pay;
	}

	/**
	 * @param pay セットする pay
	 */
	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getInsert_date() {
		return insert_date;
	}

	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}

}
