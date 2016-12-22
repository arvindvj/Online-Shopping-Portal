

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
 * Servlet implementation class LOGIN1
 */
@WebServlet("/LOGIN1")
public class LOGIN1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LOGIN1() {
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
           
            Class.forName("com.mysql.jdbc.Driver");//driver for connecting to sql. it is a class 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","admin");//make connection
            Statement st=con.createStatement();
            ResultSet r=st.executeQuery("select * from user");
            while(r.next())
            {
                String user=r.getString(1);//extracting first column from database
                String pass=r.getString(2);
                String mail=r.getString(3);

               
              
                if(mail.equals(username) && pass.equals(password))
                {	
                    response.sendRedirect("electronics.jsp?a=10");//request string ? seprates url with pass value , a = 10
                    System.out.println("done");
                    return;
                
                }
            }
            response.sendRedirect("index.jsp?a=10");
        } catch (SQLException ex) {
           Logger.getLogger(LOGIN1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LOGIN1.class.getName()).log(Level.SEVERE, null, ex);
        }
	
	}

}
