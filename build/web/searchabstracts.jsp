

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
            
            <div class="container">
                <div class="row">
                    <div class="12u">
                        <section class="box box-style1">
        <h1>Filter For Abstracts</h1>
        <form action="searchabstracts.jsp" method="post">
            <input type="text" name="sattvaq" placeholder="Enter Keywords (Technology Name, Domain , Modules Count)">
            <div style="clear:both;"></div>
            <input type="submit" class="button form-button-submit" value="Filter Abstracts"/>												<input type="reset" class="button button-alt form-button-reset" value="Re Set"/>
        </form>
        
        <%
        if(request.getParameter("sattvaq")!=null)
                     
        {
            String fid= session.getAttribute("fid").toString();
            String sattvaq=request.getParameter("sattvaq");
        
            
            java.sql.Connection mycon = DB.MyDBBean.getConnection();
            
            
            String q="select * from abstract where tech like '%"+sattvaq+"%' or domain like '%"+sattvaq+"%' or modulescount like '%"+sattvaq+"%' or studentid like '%"+sattvaq+"%' or abstracttitle like '%"+sattvaq+"%'";
            
            java.sql.Statement stmt= mycon.createStatement();
            java.sql.ResultSet rs= stmt.executeQuery(q);
            
            if(rs.next())
                               {
            
            rs.previous();
            
            while(rs.next())
                               {
            
                String atitle= rs.getString(2);
                
                String abstrcturl=rs.getString(3);
                String studentid=rs.getString(4);
                
                
                String facid=rs.getString(5);
                String tech= rs.getString(6);
                String nom=rs.getString(7);
                String domain= rs.getString(8);
                
                
                %>
        
                <div style="border: 4px solid skyblue; line-height: 30px; margin: 10px;padding: 10px; line-height: 20px; color: black; ">
                    Abstract Title : <%=atitle%><br></br>
                    Student Id:<%=studentid%><br>
                    Domain :<%=domain%><br>
                    Technology :<%=tech%><br>
                    Number Of Modules:<%=nom%><br>
                    
                    <%
                    
                    if(facid.equals(fid))
                                               {
                    %>
                    
                    
                    <a style="font-size: 30px; color: red;"href="abstracts/<%=rs.getString(3)%>">Down Load</a>
                    <%
                    
                    
                    }
                    %>
                
                </div>
        
        <%
                        
                
                
            }
            
            }
            else
                               {
            
            %>
        
            <h2>No Results Found</<h2>
                
        <%
            }
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
           
        </article>
    </div>




</body>
</html>

