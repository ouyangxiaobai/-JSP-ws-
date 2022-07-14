package tyut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tyut.bean.Company;
import tyut.bean.Person;
import tyut.service.imp.ICompanyServiceImp;
import tyut.service.imp.IPersonServiceImp;

/**
 * Servlet implementation class PersonPublishServlet
 */
public class PublishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublishServlet() {
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
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		type = new String(type.getBytes("iso-8859-1"),"utf-8");
		PrintWriter out = response.getWriter();
	    out.println("<html>");      
	    out.println("<script>"); 
		Date date = new Date();
		if("个人".equals(type)){
			Person person = (Person) session.getAttribute("person");
			if(person.getPubtime()!=null){
				out.println("alert('您已发布过简历！不能重复发布！')");
			}else{
				person.setPubtime(date);
				new IPersonServiceImp().publish(person);
				session.setAttribute("person", person);
				out.println("alert('发布成功！')");
			}
			out.println("window.open ('"+request.getContextPath()+"/index.jsp','_top')");
		}
		
		if("公司".equals(type)){
			Company company = (Company) session.getAttribute("company");
			if(company.getPubtime()!=null){
				out.println("alert('您已发布过招聘信息！不能重复发布！')");
			}else{
				company.setPubtime(date);
				new ICompanyServiceImp().publish(company);
				session.setAttribute("company", company);
		    	out.println("alert('发布成功！')");
			}
	    	out.println("window.open ('"+request.getContextPath()+"/c_index.jsp','_top')");
		}
	    out.println("</script>");
	    out.println("</html>");      
	    out.flush();
	    out.close();
	}

}
