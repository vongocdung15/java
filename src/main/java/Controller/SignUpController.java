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

public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SignUpController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String name = request.getParameter("name");
			String accountuser = request.getParameter("accountuser");
			String password = request.getParameter("pass");
			String re_pass = request.getParameter("repass");
			if(!password.equals(re_pass)) {
				request.setAttribute("mess_signup", "Nhập lại mật khẩu không đúng!!");
				request.getRequestDispatcher("Contact.jsp").forward(request, response);
				
				
			}else {
				Account_User_Dao dao = new Account_User_Dao(DBConnection.getConnection());
				Account_User a = dao.checkAccountUserExits(accountuser);
				if (a == null) {
					dao.accountSignup(name, accountuser, password);
					response.sendRedirect("HomePage.jsp");
				}else {
					request.setAttribute("mess_signup", "Tài khoản đã tồn tại!!");
					request.getRequestDispatcher("Contact.jsp").forward(request, response);
				}
			}
			
		}
		
	}

}
