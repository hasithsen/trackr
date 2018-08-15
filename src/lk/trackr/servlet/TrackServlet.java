package lk.trackr.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lk.trackr.util.UserUtil;

@WebServlet("/TrackServlet")
public class TrackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public TrackServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	    
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		HttpSession session = request.getSession();
	    
		String sql ="insert into info values(?, ?, ?, ?)";

		int i = UserUtil.addInfo((String)session.getAttribute("pid"), (String)session.getAttribute("event"), sql);
		
		if (i!=0) {
			System.out.println("success.");
			
			if ((String)session.getAttribute("event") == "signout") {
				session.invalidate();
				response.sendRedirect("/trackr/signin.jsp");
			}
			else if ((String)session.getAttribute("event") == "signin") {
				response.sendRedirect("/trackr/signedin.jsp");
			}
			else {
				session.invalidate();
				response.sendRedirect("/trackr/signin.jsp");
			}
			
		} else {
			session.invalidate();
			response.sendRedirect("/trackr/signin.jsp");
		}
	}
	
}
