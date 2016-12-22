

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LOGIN2
 */
@WebServlet("/LOGIN2")
public class LOGIN2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LOGIN2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
            String username=request.getParameter("name");
            String password=request.getParameter("pass");
            String eid=request.getParameter("email");
            String doorn=request.getParameter("door");
            String stret=request.getParameter("street");
            String areaa=request.getParameter("area");
            String citty=request.getParameter("city");
            String pinc=request.getParameter("pin");
            String stat=request.getParameter("state");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
            Statement st=con.createStatement();
            String insert="insert into user values('"+username+"','"+password+"','"+eid+"','"+doorn+"','"+stret+"','"+areaa+"','"+citty+"','"+pinc+"','"+stat+"')";
            int res = st.executeUpdate(insert);
            
            if(res>0) {
            response.sendRedirect("index.jsp?suc=20");
            }
        } catch (SQLException ex) {
           Logger.getLogger(LOGIN2.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LOGIN2.class.getName()).log(Level.SEVERE, null, ex);
        }
	
	}

}
