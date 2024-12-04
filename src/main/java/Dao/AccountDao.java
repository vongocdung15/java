package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.Account;

public class AccountDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public AccountDao(Connection con) {
		this.con = con;
	}
	
	public Account accountLogin(String username, String password) {
		Account account = null;
	    try {
	        query = "SELECT * FROM tbl_account WHERE Account_Email=? AND Account_Password=?";
	        pst = this.con.prepareStatement(query);
	        pst.setString(1, username);
	        pst.setString(2, password);
	        ResultSet rs = pst.executeQuery();

	        if (rs.next()) {
	        	account = new Account();
	        	account.setAccount_ID(rs.getInt("Account_ID"));
	        	account.setAccount_Name(rs.getString("Account_Name"));
	        	account.setAccount_Email(rs.getString("Account_Email"));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.print(e.getMessage());
	    }
	    return account;
	}

	
	
	
}
