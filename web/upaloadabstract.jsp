<%

String file= request.getParameter("f");
String title= request.getParameter("t");
String fac= request.getParameter("fac");
String tech= request.getParameter("tech");
String modulescount= request.getParameter("modulescount");

String domain= request.getParameter("domain");


java.sql.Connection mycon=   DB.MyDBBean.getConnection();

String htno=session.getAttribute("uid").toString();

String q= "insert into abstract values(0,'"+title+"','"+file+"','"+htno+"','"+fac+"','"+tech+"','"+modulescount+"','"+domain+"')";

java.sql.Statement stmt= mycon.createStatement();

int i= stmt.executeUpdate(q);

if(i>0)
       {
      javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("afterstudentlogin.jsp");
                    request.setAttribute("remessage","Abstract Uploaded");
                     rd.forward(request, response);

}
else
       {
      javax.servlet.RequestDispatcher rd=request.getRequestDispatcher("afterstudentlogin.jsp");
                    request.setAttribute("remessage","Try Again");
                     rd.forward(request, response);


}

%>