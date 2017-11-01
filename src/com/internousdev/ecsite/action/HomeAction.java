package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {


	public Map<String, Object> session;

	public BuyItemDAO buyItemDAO = new BuyItemDAO();


	List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();

	/**
	 * ログインボタン押下時に実行
	 * ログイン画面へ遷移します。
	 *
	 * @return SUCCSESS
	 * @throws SQLException
	 */
	public String execute() throws SQLException {
		String result = "login";
		System.out.println(session.get("login_user_id"));
		if (session.containsKey("login_user_id")) {
			//session.putAll(session);

			buyItemDTOList = buyItemDAO.getBuyItemInfo();
			result = SUCCESS;
		}
		return result;
	}

	/**
	 * @return buyItemDAO
	 */
	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	/**
	 * @param buyItemDAO セットする buyItemDAO
	 */
	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

	/**
	 * @return buyItemDTOList
	 */
	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	/**
	 * @param buyItemDTOList セットする buyItemDTOList
	 */
	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getsession() {
		return this.session;
	}
}
