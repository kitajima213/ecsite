package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

/**
 * 検索文字列に該当する商品を抽出するDAOクラス
 */
public class ItemSearchDAO {

	/**
	 * 商品IDを元にDBに接続し商品情報を取得するメソッド

	 */
	public ArrayList<BuyItemDTO> select(String itemName){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		BuyItemDTO dto  = new BuyItemDTO();
		ArrayList<BuyItemDTO> itemList = new ArrayList<BuyItemDTO>();
		String sql = "select * from item where item_name=?";



		try{
			PreparedStatement ps = con.prepareStatement(sql) ;
			ps.setString(1, itemName);
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				dto.setId(rs.getInt("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemType(rs.getString("item_type"));
				dto.setItemDetail(rs.getString("item_detail"));
				dto.setImg(rs.getString("img"));
				itemList.add(dto);
			}
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		} try {
		con.close();
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		}

		return itemList;
	}




	/**
	 * 商品IDを元にDBに接続し商品情報を取得するメソッド

	 */
	public ArrayList<BuyItemDTO> selectAll(String name){
		int i = 1;
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<BuyItemDTO> itemList = new ArrayList<BuyItemDTO>();
		String sql = "select * from item where item_name LIKE ?";



		try{
			PreparedStatement ps = con.prepareStatement(sql) ;
			ps.setString(1, "%" + name + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				BuyItemDTO dto  = new BuyItemDTO();
				dto.setId(rs.getInt("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemType(rs.getString("item_type"));
				dto.setItemDetail(rs.getString("item_detail"));
				dto.setImg(rs.getString("img"));
				if(itemList.size() % 16 == 0 && itemList.size() > 1){
					i++;
					System.out.println(itemList.size());
				}

				itemList.add(dto);
			}
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		} try {
		con.close();
		} catch (SQLException e ) {
		   e.printStackTrace() ;
		}

		return itemList;
	}
}
