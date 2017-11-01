package com.internousdev.ecsite.dto;

public class BuyItemDTO {

	public int id;

	public String itemName;

	public String itemPrice;

	public String itemType;

	public String img;

	public String itemDetail;

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

	/**
	 * @return img
	 */
	public String getImg() {
		return img;
	}

	/**
	 * @param img セットする img
	 */
	public void setImg(String img) {
		this.img = img;
	}

	/**
	 * @return itemDetail
	 */
	public String getItemDetail() {
		return itemDetail;
	}

	/**
	 * @param itemDetail セットする itemDetail
	 */
	public void setItemDetail(String itemDetail) {
		this.itemDetail = itemDetail;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
