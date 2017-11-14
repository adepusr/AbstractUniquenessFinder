<jsp:include page="headcss-js.jsp"/>
</head>
	<body>

		<!-- Nav -->
                <jsp:include page="menubeforelogin.jsp"/>

	
		

		<!-- Work -->
			<div class="wrapper wrapper-style2">
				<article id="work">
					<header>
						<h2>Login As A Faculty</h2>
					</header>
					<div class="container">
						<div class="row">
							<div class="12u">
								<section class="box box-style1">
									<form method="post" action="facultyloginActionServlet">
									<div>
										<div class="row half">
                                                                                    <%
if(request.getAttribute("remessage")!=null)
       {
    %>
    <spam style="color: red; font-size: 40px; font-weight:bold;"> <%=request.getAttribute("remessage")%> </spam>
    <%
}
%>
											<div class="7u">
												<input type="text" name="fid" id="name" placeholder="Enter Email Id To Login" />
											</div>
                                                                                    <br>
											<div class="7u" style="margin-top: 50px;">
												<input type="password" name="fpsw" id="email" placeholder="Enter Password" />
											</div>
										</div>
									
										<div class="row">
											<div class="7u">
                                                                                            <input type="submit" class="button form-button-submit" value="Login"/>												<input type="reset" class="button button-alt form-button-reset" value="Re Set"/>
											</div>
										</div>
									</div>
								</form></section>
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