package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Account_User;

public class Account_User_Dao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public Account_User_Dao(Connection con) {
		this.con = con;
	}
	
	public Account_User accountSignin(String accountuser, String password ) {
		Account_User accountUser = null;
	    String query = "SELECT * FROM tbl_account_user WHERE User_Account = ? AND User_Password = ?";

	    try (PreparedStatement pst = con.prepareStatement(query)) {
	        pst.setString(1, accountuser);
	        pst.setString(2, password);

	        try (ResultSet rs = pst.executeQuery()) {
	            if (rs.next()) {
	                accountUser = new Account_User();
	                accountUser.setAccount_User_ID(rs.getInt("Account_User_ID"));
	                accountUser.setUser_Account(rs.getString("User_Account"));
	                accountUser.setUser_Password(rs.getString("User_Password"));
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return accountUser;
	}
	
	public Account_User checkAccountUserExits(String accountuser) {
		Account_User accountUser = null;
	    String query = "SELECT * FROM tbl_account_user WHERE User_Account = ?";

	    try (PreparedStatement pst = con.prepareStatement(query)) {
	        pst.setString(1, accountuser);
	        
	        try (ResultSet rs = pst.executeQuery()) {
	            if (rs.next()) {
	                accountUser = new Account_User();
	                accountUser.setAccount_User_ID(rs.getInt("Account_User_ID"));
	                accountUser.setUser_Account(rs.getString("User_Account"));
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return accountUser;
	}
	public void accountSignup(String name, String accountuser, String password) {
		
	    String query = "INSERT INTO tbl_account_user (User_Name, User_Account, User_Password) VALUES (?, ?, ?)";
	    try (PreparedStatement pst = con.prepareStatement(query)) {
	    	pst.setString(1, name);
	        pst.setString(2, accountuser);
	        pst.setString(3, password);
	        pst.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
}
