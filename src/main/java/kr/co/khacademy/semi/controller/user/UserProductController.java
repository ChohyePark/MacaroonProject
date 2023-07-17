package kr.co.khacademy.semi.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/user/product/*")
public class UserProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String pathInfo = req.getPathInfo();
	    
	    if("/list".equals(pathInfo)) {
	        req.getRequestDispatcher("/WEB-INF/views/user/list.jsp").forward(req, resp);
	    } else if ("/item".equals(pathInfo)) {
	        req.getRequestDispatcher("/WEB-INF/views/user/item.jsp").forward(req, resp);
	    } 
	    
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
