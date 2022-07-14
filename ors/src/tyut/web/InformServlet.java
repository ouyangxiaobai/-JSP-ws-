package tyut.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tyut.service.imp.IEmployeeServiceImp;

/**
 * Servlet implementation class InformServlet
 */
@WebServlet("/InformServlet")
public class InformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InformServlet() {
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
		long id = Long.parseLong(request.getParameter("id"));
		long isAgreed = Long.parseLong(request.getParameter("isAgreed"));
		new IEmployeeServiceImp().update(isAgreed,id);
		PrintWriter out = response.getWriter();
	    out.println("<html>");      
	    out.println("<script>");
		out.println("alert('发送成功！')"); 
		out.println("window.open ('"+request.getContextPath()+"/c_index.jsp','_top')"); 
	    out.println("</script>");
	    out.println("</html>");      
	    out.flush();
	    out.close();
	}
}
