package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class ContactTransmissionComplateDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_contact (user_name, user_email, message_title, message_main, insert_date) VALUES(?, ? , ?, ?, ?)";

	public void transmission(String user_name, String user_email, String message_title, String message_main) throws SQLException {
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_name);
			preparedStatement.setString(2, user_email);
			preparedStatement.setString(3, message_title);
			preparedStatement.setString(4, message_main);
			preparedStatement.setString(5,dateUtil.getDate());

			preparedStatement.execute();

		}catch(SQLException e){
			e.printStackTrace();

		}finally{
			connection.close();
		}

	}

}
