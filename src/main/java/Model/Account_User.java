package Model;

public class Account_User {
	private int Account_User_ID;
	private String User_Name;
	private String User_Account;
	private String User_Password;
	
	
	public Account_User() {
		super();
	}
	
	@Override
	public String toString() {
		return "Account_User [Account_User_ID=" + Account_User_ID + ", User_Name=" + User_Name + ", User_Account="
				+ User_Account + ", User_Password=" + User_Password + "]";
	}

	public int getAccount_User_ID() {
		return Account_User_ID;
	}

	public void setAccount_User_ID(int account_User_ID) {
		Account_User_ID = account_User_ID;
	}



	public String getUser_Name(String string) {
		return User_Name;
	}

	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}

	public String getUser_Account() {
		return User_Account;
	}

	public void setUser_Account(String user_Account) {
		User_Account = user_Account;
	}

	public String getUser_Password() {
		return User_Password;
	}

	public void setUser_Password(String user_Password) {
		User_Password = user_Password;
	}


	public Account_User(int account_User_ID, String user_Name, String user_Account, String user_Password) {
		super();
		Account_User_ID = account_User_ID;
		User_Name = user_Name;
		User_Account = user_Account;
		User_Password = user_Password;
	}
}
