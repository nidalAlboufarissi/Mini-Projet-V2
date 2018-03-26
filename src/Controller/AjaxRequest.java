package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Model.CountryDao;
import net.sf.json.JSONArray;
@WebServlet("/AjaxRequest")

public class AjaxRequest extends HttpServlet {
   
    private static final long serialVersionUID = 1L;
   
 

    public AjaxRequest() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        response.setHeader("Cache-control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "-1");
        String query = request.getParameter("term");

		ArrayList<Model.film> o=CountryDao.getCountryName(query);

        Gson gson =new Gson();
		String json = gson.toJson(o);
      
        out.println(json);
        out.close();
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Do something       
    }

}
