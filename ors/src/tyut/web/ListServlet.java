package tyut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tyut.bean.Company;
import tyut.bean.Person;
import tyut.service.imp.ICompanyServiceImp;
import tyut.service.imp.IPersonServiceImp;

/**
 * Servlet implementation class ListSerlvet
 */
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
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
		String type = request.getParameter("type");
		Map<String, String> map = new HashMap<String, String>();
	    ServletContext servletContext = request.getServletContext();
		Enumeration<String> paramNames = request.getParameterNames();  
	    // 通过循环将表单参数放入键值对映射中  
	    while(paramNames.hasMoreElements()) {  
	        String key = paramNames.nextElement();  
	        String value = request.getParameter(key);
	        if(!"".equals(value)){
	        	map.put(key, value);
	        }
	    }  
		PrintWriter out = response.getWriter(); 
	    out.println("<html>");      
	    out.println("<script>"); 
		if("个人".equals(type)){
			List<Company> companies = new ICompanyServiceImp().listAllCompaniesByParams(map);
			servletContext.setAttribute("companies", companies);
		    out.println("window.open ('"+request.getContextPath()+"/index.jsp?source=listServlet','_top')"); 
	    }
		if("公司".equals(type)){
			List<Person> persons = new IPersonServiceImp().listAllPersonsByParams(map);
			servletContext.setAttribute("persons", persons);
		    out.println("window.open ('"+request.getContextPath()+"/c_index.jsp?source=listServlet','_top')"); 
	    }
	    out.println("</script>");
	    out.println("</html>");      
	    out.flush();
	    out.close();
	}

}
