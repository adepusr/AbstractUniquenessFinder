

<jsp:include page="headcss-js.jsp"/>

<style>
    
div.custom_file_upload {
	width: 230px;
	height: 20px;
	margin: 40px auto;
}

input.file {
	width: 150px;
	height: 20px;
	border: 1px solid #BBB;
	border-right: 0;
	color: #888;
	padding: 5px;
	
	-webkit-border-top-left-radius: 5px;
	-webkit-border-bottom-left-radius: 5px;
	-moz-border-radius-topleft: 5px;
	-moz-border-radius-bottomleft: 5px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	
	outline: none;
}

div.file_upload {
	width: 80px;
	height: 24px;
	background: #7abcff;
	background: -moz-linear-gradient(top,  #7abcff 0%, #60abf8 44%, #4096ee 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#7abcff), color-stop(44%,#60abf8), color-stop(100%,#4096ee));
	background: -webkit-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: -o-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: -ms-linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	background: linear-gradient(top,  #7abcff 0%,#60abf8 44%,#4096ee 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=0 );

	display: inline;
	position: absolute;
	overflow: hidden;
	cursor: pointer;
	
	-webkit-border-top-right-radius: 5px;
	-webkit-border-bottom-right-radius: 5px;
	-moz-border-radius-topright: 5px;
	-moz-border-radius-bottomright: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	
	font-weight: bold;
	color: #FFF;
	text-align: center;
	padding-top: 8px;
}
div.file_upload:before {
	content: 'UPLOAD';
	position: absolute;
	left: 0; right: 0;
	text-align: center;
	
	cursor: pointer;
}

div.file_upload input {
	position: relative;
	height: 30px;
	width: 250px;
	display: inline;
	cursor: pointer;
	opacity: 0;
}
    
</style>
</head>
<body>

    <!-- Nav -->
    <jsp:include page="menubeforelogin.jsp"/>

    <!-- Home -->


    <!-- Work -->
    <div class="wrapper wrapper-style2">
        <article id="work">
            <header>
                <h2>Find Your Abstract Unique Score Here</h2>
            </header>
            <div class="container">
                <div class="row">
                    <div class="12u">
                        <section class="box box-style1">
<%@page import="java.io.File"%>
<%

String ab = request.getParameter("ab");


String htno=session.getAttribute("uid").toString();

                      String gj="hi";
 String x="c:\\"+htno+".txt";
			
 File file = new File(x);

SattvaQ.WriteToFile.createFileTemp(x, ab);

java.sql.Connection mycon= DB.MyDBBean.getConnection();

String q="select * from abstractlinedata";
java.sql.Statement stmt= mycon.createStatement();

java.sql.ResultSet rs = stmt.executeQuery(q) ;
int percentagescore=0;
int cc=0;
while(rs.next())
       {
cc=cc+1;


String l=rs.getString(2);
//percentagescore=percentagescore+SattvaQ.filereader.getLines(x, rs.getString(2));

if(ab.contains(l))
       {

percentagescore=percentagescore+1;


}
}
//out.print(cc);



float per= (percentagescore*100)/cc;
if((100-per)>60)
       {

// your project can be accepted
    
   %>
   
   <h1>You Can Upload Your Project</h1>
   <h2>Your Abstract Unique Score is :<%=(100-per)%></h2>
   <form action="upaloadabstract.jsp" method="POST">
       
       <%
       java.sql.Connection mycon1= DB.MyDBBean.getConnection();

String q1="select * from facultydata";
java.sql.Statement stmt1= mycon1.createStatement();

java.sql.ResultSet rs1 = stmt1.executeQuery(q1) ;


       
       
       %>
       
       <select name="fac">
           
           <option value="">Select Your In-charge Faculty</option>
           <%
           
           while(rs1.next())
                             {
               String fid= rs1.getString(4);
               String fname= rs1.getString(2);
           %>
           
           <option value="<%=fid%>"><%=fname%></option>
           <%
           
           }
           %>
       
       </select>
           
       <input type="hidden" name="t" value="<%=request.getParameter("title")%>"/>
       <input type="hidden" name="tech" value="<%=request.getParameter("tech")%>"/>
       <input type="hidden" name="modulescount" value="<%=request.getParameter("modulecount")%>"/>
       <input type="hidden" name="domain" value="<%=request.getParameter("domain")%>"/>
       
       
       
       <h3>Upload Abstract File: </h3><input type="file" name="f" value="" />
       <br>
     <input type="submit" class="button form-button-submit" value="Upload Abstract Now"/>												<input type="reset" class="button button-alt form-button-reset" value="Re Set"/>
   </form>


<%
    

}
else
       {
    %>
 <h2>Your Abstract Unique Score is :<%=(100-per)%></h2>
   
   <%
    
        out.print("Try To Upload Another Abstract");
    
    // This is not a unique project
                
}



%>
</section>
                    </div>
                    <!--							<div class="4u">
								<section class="box box-style1">
									<span class="icon featured-icon icon-file-alt"></span>
									<h3>Lorem dolor tempus</h3>
									<p>Ornare nulla proin odio consequat sapien vestibulum ipsum primis sed amet consequat lorem dolore.</p>
								</section>
							</div>-->
                    <!--							<div class="4u">
								<section class="box box-style1">
									<span class="icon featured-icon icon-thumbs-up"></span>
									<h3>Feugiat posuere</h3>
									<p>Ornare nulla proin odio consequat sapien vestibulum ipsum primis sed amet consequat lorem dolore.</p>
								</section>
							</div>-->
                </div>
            </div>
            <footer>
                <p>Lorem ipsum dolor sit sapien vestibulum ipsum primis?</p>
                <a href="#portfolio" class="button button-big">See some of my recent work</a>
            </footer>
        </article>
    </div>




</body>
</html>

