

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
 * Servlet implementation class cart
 */
@WebServlet("/cart")
public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cart() {
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
			String prd = request.getParameter("proid");
			
			
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","admin");
	        Statement st=con.createStatement();
	        ResultSet r=st.executeQuery("select * from product");
	   
	        while(r.next())
	        {
	    
	        	String prid=r.getString(1);
	            String product=r.getString(2);
	            String value=r.getString(3);

	    
	            if(prd.equals(prid))
	            {	
	            	Statement st1=con.createStatement();
	                String insert="insert into cart values('"+product+"','"+value+"')";
	            
	                int res = st1.executeUpdate(insert);
	                System.out.println(prd);
	                if(res>0)
	                {
	                response.sendRedirect("cart.jsp?a=10");
	              
	                return;
	                }
	            }
	        }
	        response.sendRedirect("index.jsp?a=10");
	    } catch (SQLException ex) {
	       Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
	    } catch (ClassNotFoundException ex) {
	        Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
	    }


		}

	}

