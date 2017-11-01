package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ContactTransmissionComplateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ContactTransmissionComplateAction extends ActionSupport implements SessionAware{

	public String user_name;

	public String user_email;

	public String message_title;

	public Map<String,Object> session;

	public String result;



	public ContactTransmissionComplateDAO contactTransmissionComplateDAO = new ContactTransmissionComplateDAO();

	public String execute() throws SQLException {

		contactTransmissionComplateDAO.transmission(session.get("user_name").toString(),
				session.get("user_email").toString(),
				session.get("message_title").toString(),
				session.get("message_main").toString());

		result = SUCCESS;

		return result ;
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
	 * @return session
	 */
	public Map<String, Object> getsession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setsession(Map<String, Object> session) {
		this.session = session;
	}


	/**
	 * @return contactTransmissionComplateDAO
	 */
	public ContactTransmissionComplateDAO getContactTransmissionComplateDAO() {
		return contactTransmissionComplateDAO;
	}

	/**
	 * @param contactTransmissionComplateDAO セットする contactTransmissionComplateDAO
	 */
	public void setContactTransmissionComplateDAO(ContactTransmissionComplateDAO contactTransmissionComplateDAO) {
		this.contactTransmissionComplateDAO = contactTransmissionComplateDAO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
}

