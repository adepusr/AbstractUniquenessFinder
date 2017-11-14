

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
    <jsp:include page="menu_for_fac.jsp"/>

    <!-- Home -->


    <!-- Work -->
    <div class="wrapper wrapper-style2">
        <article id="work">
            <header>
                
            </header>
            <div class="container">
                <div class="row">
                    <div class="12u">
                        <section class="box box-style1">
        <h1>Welcome To Faculty Page</h1>
       
        <h2>List Of Projects Accepted</h2>
        
        <%
               java.sql.Connection mycon1= DB.MyDBBean.getConnection();
String facid= session.getAttribute("fid").toString();
String q1="select * from abstract where facid='"+facid+"' ";
java.sql.Statement stmt1= mycon1.createStatement();

java.sql.ResultSet rs1 = stmt1.executeQuery(q1) ;

while(rs1.next())
               {
    
    String studnetid= rs1.getString(4);
    String abtitle=rs1.getString(2);
    
    String aburl= rs1.getString(3);
   
    %>
    <div style="border:4px solid salmon; font-size: 30px ;color: blue; padding: 10px;">
        Student Hall Ticket Number:  <%=studnetid%>
        <br>
        Abstract Title : <%=abtitle%>
        <br>
        Download Abstract :<a href="abstracts/<%=aburl%>" >Click</a>
       
    </div>
        <%


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
                <p>Developed BY Bhavani & </p>
                <a href="#" class="button button-big">Guided By </a>
            </footer>
        </article>
    </div>




</body>
</html>

