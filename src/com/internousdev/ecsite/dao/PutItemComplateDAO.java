package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class PutItemComplateDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();



	private String sql = "INSERT INTO item_info_transaction (item_type, item_name, item_detail, item_price, item_stock) VALUES(?, ?, ?, ?, ?)";

	public void putItem(String putItemType, String putItemName, String putItemDetail, String putItemPrice, String putItemStock) throws SQLException {

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, putItemType);
			preparedStatement.setString(2, putItemName);
			preparedStatement.setString(3, putItemDetail);
			preparedStatement.setString(4, putItemPrice);
			preparedStatement.setString(5, putItemStock);
			preparedStatement.execute();

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}

}
