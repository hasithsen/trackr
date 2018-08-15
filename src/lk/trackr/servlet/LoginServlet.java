package lk.trackr.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import lk.trackr.model.User;
import lk.trackr.util.UserUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid=(request.getParameter("pid"));
        String passwd=(request.getParameter("passwd"));
        
		HttpSession session = request.getSession();
	    
	    session.setAttribute("pid", request.getParameter("pid"));
	    session.setAttribute("event", "signin");
        
        if(pid.equals(null) || pid=="" || passwd.equals(null) || passwd=="") {
            request.setAttribute("msg", "All fields are required");
            response.sendRedirect("/trackr/signin.jsp");
        }
         
        else {
        User user = new User();
        user.setPid(pid);
        user.setPasswd(passwd);
        
        String sql ="select pid from user where pid=? and passwd=?";

        ResultSet rs = UserUtil.loginUser(user, sql);
            try {
                if(rs.next()) {
                	request.setAttribute("msg", "Login successful.");
                	 getServletContext().getRequestDispatcher("/TrackServlet").forward(request, response);
                }
                else {
                   request.setAttribute("msg", "Sorry, invalid credentials. Please try again."); 
                   response.sendRedirect("/trackr/signin.jsp");
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            
        }
    }
}