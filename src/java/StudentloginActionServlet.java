/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alekhya rao
 */
@WebServlet(name = "StudentloginActionServlet", urlPatterns = {"/StudentloginActionServlet"})
public class StudentloginActionServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
  public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection mycon=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/abstractuniqness","root","");
            out.println("connection sucess");
            
            String uid=null,psw=null;
            uid=request.getParameter("sid");
            psw=request.getParameter("spsw");
            
          
            String q="select * from studentdata where sid='"+uid+"'";
            java.sql.Statement stmt=mycon.createStatement();
            
            java.sql.ResultSet rs=stmt.executeQuery(q);
           if(rs.next())
            {
                String tpsw=rs.getString(3);
                String clsid=rs.getString(8);
                if(psw.equals(tpsw))
                {
                    HttpSession session=request.getSession(true);
                    session.setAttribute("uid",uid);
                     session.setAttribute("class",clsid);
                    javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("afterstudentlogin.jsp");
                    rd.forward(request, response);
                }
            else
                {
                     javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("studentloginform.jsp");
                    request.setAttribute("remessage","password is wrong");
                     rd.forward(request, response);

                }
            
            }
            else
            {
                 javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("studentloginform.jsp");
                request.setAttribute("remessage","Student Id  is wrong");    
                 rd.forward(request, response);

            }
        }
        
            
            
           catch(Exception e) {            
            out.print(e);
        }
    }
}

