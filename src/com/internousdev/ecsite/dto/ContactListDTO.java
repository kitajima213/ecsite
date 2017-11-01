package com.internousdev.ecsite.dto;

public class ContactListDTO {
	private String user_name;
	private String user_email;
	private String message_title;
	private String message_main;
	private String insert_date;
	/**
	 * @return insert_date
	 */
	public String getInsert_date() {
		return insert_date;
	}
	/**
	 * @param insert_date セットする insert_date
	 */
	public void setInsert_date(String insert_date) {
		this.insert_date = insert_date;
	}
	/**
	 * @return user_name
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * @param user_name セットする user_name
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	/**
	 * @return user_email
	 */
	public String getUser_email() {
		return user_email;
	}
	/**
	 * @param user_email セットする user_email
	 */
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	/**
	 * @return message_title
	 */
	public String getMessage_title() {
		return message_title;
	}
	/**
	 * @param message_title セットする message_title
	 */
	public void setMessage_title(String message_title) {
		this.message_title = message_title;
	}
	/**
	 * @return message_main
	 */
	public String getMessage_main() {
		return message_main;
	}
	/**
	 * @param message_main セットする message_main
	 */
	public void setMessage_main(String message_main) {
		this.message_main = message_main;
	}

}
