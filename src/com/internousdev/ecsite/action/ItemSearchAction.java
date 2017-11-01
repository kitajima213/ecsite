package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemSearchDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemSearchAction extends ActionSupport{


	private String name;

	/**
	 * ページネーションする全体のページ数
	 */
	private int pageCount;
	/**
	 * ページの限界値
	 */
	private int pageLimit=16;

	/**
	 * ページの限界値
	 */
	private int itemCategory = 0;

	private ArrayList<BuyItemDTO> itemList = new ArrayList<BuyItemDTO>();

	/**
	 * 商品を検索するメソッド
	 *  商品を検索して、該当する商品があればSUCCESS、なければERROR
	 */
	public String execute(){
		String result = ERROR;
		 ItemSearchDAO dao = new  ItemSearchDAO();
		itemList = dao.select(name);

		if(!(itemList.isEmpty())){
			result = SUCCESS;
		}
		if(itemList.isEmpty()){
			itemList = dao.selectAll(name);

			//ページネーション用
			pageCount = itemList.size()/pageLimit;  //pageCountにDBから取得したデータをpageLimit（1ページ内に表示される商品の個数：16）で割った値を保存⇒ページ数の保存
			if(itemList.size()%pageLimit != 0){		//商品データ数に端数が合った場合はページ総数を1追加
				pageCount++;
			result=INPUT;
			}
		}

		for(BuyItemDTO dto : itemList){
			System.out.println(dto.getItemName());
			System.out.println(dto.getItemPrice());
			System.out.println(dto.getImg());
			System.out.println(dto.getItemType());
			System.out.println(dto.getItemDetail());
		}
		return result;

	}

}
