package Controller.Admin.Login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Context.DBConnection;
import Dao.AccountDao;
import Model.Account;


public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logincontroller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String username = request.getParameter("user");
			String password = request.getParameter("pass");
			AccountDao accdao = new AccountDao(DBConnection.getConnection());
			Account account = accdao.accountLogin(username, password);
			if(account == null) {
				request.setAttribute("mess", "Tài khoản hoặc mật khẩu sai!!");
			    request.getRequestDispatcher("login.jsp").forward(request, response); // chuyển trang cần mang theo dữ liệu
			}else {
				
				request.getSession().setAttribute("auth", account);
				response.sendRedirect("Admin_Layout.jsp");  // chuyển trang k cần chuyền dữ liệu 
				
			}
			
		}
	}

}
