package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ContactListDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ContactListDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();


	public ArrayList<ContactListDTO> getContactListInfo(String message_title, String message_main) throws SQLException {
		ArrayList<ContactListDTO> ContactListDTO = new ArrayList<ContactListDTO>();

		String sql = "SELECT message_title, message_main ,insert_date FROM user_contact";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);


			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				ContactListDTO dto = new ContactListDTO();
				dto.setMessage_title(resultSet.getString("message_title"));
				dto.setMessage_main(resultSet.getString("message_main"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				ContactListDTO.add(dto);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}

		return ContactListDTO;
	}
}
