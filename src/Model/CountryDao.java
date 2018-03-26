package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class CountryDao {
	
	
	public  static ArrayList<film> getCountryName(String  id)  {
		 Connection connection = null;
   PreparedStatement ps = null;
   ResultSet resultSet = null;
   ArrayList<film> data=new ArrayList<film>();
   
   try {
       // fetch a connection
   	Class.forName("com.mysql.jdbc.Driver");  
   	 connection=DriverManager.getConnection( "jdbc:mysql://localhost/films","root","");  
   	 System.out.println("test");
       if (connection != null) {
           ps = connection.prepareStatement("select id,titre  from  film where titre like ? ");
           ps.setString(1, "%"+id+"%");
           
           resultSet =ps.executeQuery();
           while(resultSet.next())
           {
        	   film c=new film();
         	  c.setNom(resultSet.getString(2));
         	  data.add(c);
           }
           
       }

   } catch (Exception e) {
       e.printStackTrace();
   } finally {
       if (resultSet != null) try { resultSet.close(); } catch (SQLException e) {e.printStackTrace();}
       if (ps != null) try { ps.close(); } catch (SQLException e) {e.printStackTrace();}
       if (connection != null) try { connection.close(); } catch (SQLException e) {e.printStackTrace();}
   }
   return data;
}

}
