package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.ContactListDAO;
import com.internousdev.ecsite.dto.ContactListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ContactListAction extends ActionSupport{


	public ContactListDAO contactListDAO = new ContactListDAO();

	public ArrayList<ContactListDTO> List = new ArrayList<ContactListDTO>();

	public String message_title;
	public String message_main;

	public String execute(){
		String result="list";



		try {
			List = contactListDAO.getContactListInfo(message_title, message_main);
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		Iterator<ContactListDTO> iterator = List.iterator();
//		if (!(iterator.hasNext())) {
//			List = null;
//
//
//	}
		return result;
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
