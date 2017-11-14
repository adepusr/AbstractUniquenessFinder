<jsp:include page="headcss-js.jsp"/>
</head>
	<body>

		<!-- Nav -->
                <jsp:include page="menubeforelogin.jsp"/>

	
		

				<div class="wrapper wrapper-style1 wrapper-first">
				<article class="container" id="top">
					<div class="row">
						<div class="4u">
							<span class="me image image-full"><img src="images/me.jpg" alt="" /></span>
						</div>
						<div class="8u">
						<h1>STUDENT REGISTRATION</h1>
<form action="StudentregActionServlet" method="post">
    <table border="0" style="font-size: 20px;">
      
        <tbody>
            <tr>
                <td>Student Name</td>
                <td><input type="text" name="sname" value="" /></td>
            </tr>
            <tr>
                <td>Hall Ticket Number</td>
                <td><input type="text" name="sid" value="" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="spsw" value="" /></td>
            </tr>
            <tr>
                
                   
                <td>Department</td>
                <td><select name="sdept">
                        <option>Select Department</option>
                        <option>IT</option>
                        <option>CSE</option>
                        <option>ECE</option>
                        <option>EEE</option>
                       
                    </select></td>
            </tr>
            <tr>
                
                    
                <td>Year</td>
                <td><select name="syear">
                        <option>Select Year</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select></td>
            </tr>
            <tr>
                
                    
                <td>Semister</td>
                <td><select name="ssem">
                        <option>Select Semister</option>
                        <option>I</option>
                        <option>II</option>
                    </select></td>
            </tr>
            
                <tr>
                <td>Section</td>
                <td><select name="ssec">
                        <option>Select Section</option>
                        <option>A</option>
                        <option>B</option>
                    </select></td>
            </tr>
            <tr>
            
           
                
                <td>Mail Id</td>
                <td><input type="text" name="smail" value="" /></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><input type="text" name="sph" value="" /></td>
            </tr>
            <tr>
                 <td>Parent Phone Number</td>
                 <td><input type="text" name="sparentph" value="" /></td>
                <tr>
                
            </tr>
            <tr><td>												<input type="reset" class="button button-alt form-button-reset" value="Re Set"/>
                
                
                <input type="submit" class="button form-button-submit" value="Sign Up"/>
                </td>
            </tr>
            
        </tbody>
    </table>

</form></div>
					</div>
				</article>
			</div>



	</body>
</html>
