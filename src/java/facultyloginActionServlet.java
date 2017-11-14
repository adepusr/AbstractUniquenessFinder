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
@WebServlet(name = "facultyloginActionServlet", urlPatterns = {"/facultyloginActionServlet"})
public class facultyloginActionServlet extends HttpServlet {

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
            java.sql.Connection mycon=DB.MyDBBean.getConnection();
            out.println("connection sucess");
            
            String uid=null,psw=null;
            uid=request.getParameter("fid");
            psw=request.getParameter("fpsw");
            
          
            String q="select * from facultydata where fmail='"+uid+"'";
            java.sql.Statement stmt=mycon.createStatement();
            
            java.sql.ResultSet rs=stmt.executeQuery(q);
            
            
                    
            if(rs.next())
            {
                String tpsw=rs.getString(3);
                String tid=rs.getString(1);
                if(psw.equals(tpsw))
                {
                      HttpSession session=request.getSession(true);
                    session.setAttribute("fid",uid);
                    session.setAttribute("id",tid);
                    javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("afterfacultylogin.jsp");
                    rd.forward(request, response);
                }
            else
                {
                     javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("facultyloginform.jsp");
                    request.setAttribute("remessage","password is wrong");
                     rd.forward(request, response);

                }
            
            }
            else
            {
                 javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("facultyloginform.jsp");
                request.setAttribute("remessage","mail is wrong");    
                 rd.forward(request, response);

            }
        }
        
            
            
           catch(Exception e) {            
            out.print(e);
        }
    }
}

