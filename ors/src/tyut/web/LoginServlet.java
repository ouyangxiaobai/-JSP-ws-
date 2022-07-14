package tyut.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tyut.bean.Company;
import tyut.bean.Person;
import tyut.service.imp.ICompanyServiceImp;
import tyut.service.imp.IPersonServiceImp;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String remember = request.getParameter("rem");
		if(remember!=null){
			Cookie c1 = new Cookie("username",username);
			Cookie c2 = new Cookie("password",password);
			c1.setMaxAge(60*60*24*365);
			c2.setMaxAge(60*60*24*365);
			response.addCookie(c1);
			response.addCookie(c2);
		}
		String type = request.getParameter("type");
		HttpSession session = request.getSession();
		if("个人".equals(type)){
			Person person = new IPersonServiceImp().login(username, password);
			if(person == null){
				response.sendRedirect("login.jsp");
			}else {
				session.setAttribute("person",person);
				response.sendRedirect("index.jsp");
			}
		}
		if("公司".equals(type)){
			Company company = new ICompanyServiceImp().login(username, password);
			if(company == null){
				response.sendRedirect("login.jsp");
			}else {
				session.setAttribute("company",company);
				response.sendRedirect("c_index.jsp");
			}
		}
	}

}
