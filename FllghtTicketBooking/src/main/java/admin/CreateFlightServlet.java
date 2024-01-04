
package admin;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connectionPackage.DBConnection;

/**
 * Servlet implementation class CreateFlightServlet
 */
@WebServlet("admin/CreateFlightServlet")
public class CreateFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateFlightServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con=null;
		String source = request.getParameter("source");
	        String destination = request.getParameter("destination");
	        String takeoffTimeStr = request.getParameter("takeoffTime");
	    
	        int pricing = Integer.parseInt(request.getParameter("pricing"));
	        try {
				con=DBConnection.getConnection();
				PreparedStatement ps=con.prepareStatement("inser into flight (source,destination,takeoff_timing,price) values(?,?,?,?)");
				ps.setString(1, source);
				ps.setString(2,destination);
				ps.setString(3,takeoffTimeStr);
				ps.setInt(4,pricing);
				
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					RequestDispatcher rd=request.getRequestDispatcher("admin_login_successfull.jsp");
					rd.forward(request, response);
				}
				else
				{
					RequestDispatcher rd=request.getRequestDispatcher("create_flight.jsp");
					rd.forward(request, response);
				}
		
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
