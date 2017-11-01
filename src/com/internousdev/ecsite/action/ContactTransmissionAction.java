package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ContactTransmissionAction extends ActionSupport implements SessionAware{



	public String user_name;

	public String user_email;

	public String message_title;

	public String message_main;

	public String result;

	public String errorMassage;

	public int check;


	public Map<String,Object> session;

	public String execute(){

		result = SUCCESS;

		if(!(user_name.equals("")) && !(user_email.equals("")) && !(message_title.equals("")) && !(message_main.equals("")) && (check==1)) {
			session.put("user_name", user_name);
			session.put("user_email", user_email);
			session.put("message_title", message_title);
			session.put("message_main", message_main);
		} else {

			errorMassage = "未入力の項目があります。";
			result = ERROR;
		}

		return result;
	}


	/**
	 * @return check
	 */
	public int getCheck() {
		return check;
	}



	/**
	 * @param check セットする check
	 */
	public void setCheck(int check) {
		this.check = check;
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




	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
