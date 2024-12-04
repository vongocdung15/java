package Model;

public class Account {
	private int Account_ID;
	private String Account_Email;
	private String Account_Password;
	private String Account_Name;
	
	public Account() {
	}
	
	public Account(int account_ID, String account_Email, String account_Password, String account_Name) {
 		Account_ID = account_ID;
		Account_Email = account_Email;
		Account_Password = account_Password;
		Account_Name = account_Name;
	}

	
	public int getAccount_ID() {
		return Account_ID;
	}

	public void setAccount_ID(int account_ID) {
		Account_ID = account_ID;
	}

	public String getAccount_Email() {
		return Account_Email;
	}

	public void setAccount_Email(String account_Email) {
		Account_Email = account_Email;
	}

	public String getAccount_Password() {
		return Account_Password;
	}

	public void setAccount_Password(String account_Password) {
		Account_Password = account_Password;
	}

	public String getAccount_Name() {
		return Account_Name;
	}

	public void setAccount_Name(String account_Name) {
		Account_Name = account_Name;
	}

	@Override
	public String toString() {
		return "Account [Account_ID=" + Account_ID + ", Account_Email=" + Account_Email + ", Account_Password="
				+ Account_Password + ", Account_Name=" + Account_Name + "]";
	}

	
	
	

	
	
	
}
