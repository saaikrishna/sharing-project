import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



@WebServlet("/Main")
public class Main extends HttpServlet {

	
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id=request.getParameter("category");
		//int ud=Integer.valueOf(vendor_id);
		PreparedStatement ps=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SAI","hrs");
			if(id.equals("PRODUCT")){
			 ps=con.prepareStatement("select vendor_id,first_name,last_name,age,gender,contact,Email,category,p_id,p_name,p_price,description from product,new2 where  p_vendor_id= vendor_id and category=?");
			ps.setString(1, id);
			}
			else if(id.equals("SERVICE"))
	
			{
				 ps=con.prepareStatement("select vendor_id,first_name,last_name,age,gender,contact,Email,category,service_id,service_name,service_price,service_description from new2,service where  service_vendor_id= vendor_id and category=?");
				ps.setString(1, id);
			}
			else
			{
				out.println("Invalid");
			}
			//ps.setString(8, id);
			
		
		
			System.out.println(id);
			
			
			out.print("<table style='width:100%; border:1; font-family:helvetica;'>");
			out.print("<caption><h1><b> Report </b></h1></caption>");
			ResultSet rs=ps.executeQuery();
			
			/* Printing column names */
			ResultSetMetaData rsmd=rs.getMetaData();
			int total=rsmd.getColumnCount();
			out.print("<tr >");
			for(int i=1;i<=total;i++)
			{
				out.print("<th style='background-color:green ;color:white;'>"+rsmd.getColumnName(i)+"</th>");
				
			}
			out.print("</tr>");
			
			/* Printing result */
			while(rs.next())
			{
				out.print("<tr style='text-align:center'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td>+<td>"+rs.getString(12)+"</td></tr>");
				
			}
			out.print("</table>");
			out.println("<br><br><a href='usercategory.jsp'>BACK</a>");
			 out.println("<br><br><a href='home.jsp'>LOGOUT</a>");


			 
		
			
		}catch (Exception e2) {e2.printStackTrace();}
		
		finally{out.close();}
	
		
	}

}
