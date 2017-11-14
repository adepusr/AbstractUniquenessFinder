/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alekhya rao
 */
@WebServlet(name = "StudentregActionServlet", urlPatterns = {"/StudentregActionServlet"})
public class StudentregActionServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection mycon=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/abstractuniqness","root","");
            out.println("connection sucess");
            
            
            String name=null,id=null,psw=null,dept=null,year=null,sem=null,sec=null,mail=null,ph=null,parentph=null,classid=null;
            
            name=request.getParameter("sname");
            id=request.getParameter("sid");
            psw=request.getParameter("spsw");
            dept=request.getParameter("sdept");
            year=request.getParameter("syear");
            sem=request.getParameter("ssem");
            sec=request.getParameter("ssec");
            mail=request.getParameter("smail");
            parentph=request.getParameter("sparentph");
             ph=request.getParameter("sph");
             classid=dept+"-"+year+"-"+sem+"-"+sec;
           // java.sql.Connection mycon=new DB.MyDBBean.getConnection();
            Statement st=(Statement) mycon.createStatement();
            PreparedStatement ps=(PreparedStatement) mycon.prepareStatement("insert into studentdata values('"+name+"','"+id+"','"+psw+"','"+dept+"','"+year+"','"+sem+"','"+sec+"','"+classid+"','"+mail+"','"+ph+"','"+parentph+"')");
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                out.println("registered sucess");
                            }
            
            else
                    {
                out.println(" not registered ");        
                    }

    
            
        }
            catch(Exception e)
            {
                out.println(e);
            }
         finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
