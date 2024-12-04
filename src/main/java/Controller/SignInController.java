package Controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Context.DBConnection;
import Dao.Account_User_Dao;
import Model.Account_User;

public class SignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SignInController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String accountuser = request.getParameter("accountuser");
			String password = request.getParameter("pass");
			Account_User_Dao accdao = new Account_User_Dao(DBConnection.getConnection());
			Account_User account = accdao.accountSignin(accountuser, password);
			if(account != null) {
				request.getSession().setAttribute("auth", account);
				response.sendRedirect("HomePage.jsp");  // chuyển trang k cần chuyền dữ liệu 
			}else {
				request.setAttribute("mess_signin", "Tài khoản hoặc mật khẩu sai!!");
			    request.getRequestDispatcher("Contact.jsp").forward(request, response); // chuyển trang cần mang theo dữ liệu
				
				
			}
			
		}
	}

}
