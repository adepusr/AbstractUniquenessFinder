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
    <h1>FACULTY REGISTRATION</h1>


<form action="FacregActionServlet" method="post">
    <table border="0" style="font-size: 20px;">
        <thead>
            <tr>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Faculty Name:</td>
                <td><input type="text" name="fname" value="" /></td>
            </tr>
         
            <tr>
                <td>Password</td>
                <td><input type="password" name="fpsw" value="" /></td>
            </tr>
            <tr>
                <td>Fmail:</td>
                <td><input type="text" name="fmail" value="" /></td>
            </tr>
            <tr>
                <td>Qualification</td>
                <td><select name="qual">
                        <option>Select Qualification</option>
                        <option value="B.Tech">B.Tech</option>
                        <option value="M.Tech">M.Tech</option>
                        <option value="Ph.D">Ph.D</option>
                    </select></td>
            </tr>
            <tr>
                <td>Experience</td>
                <td><select name="fexp">
                         <option>Select Experience</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                    </select></td>
            </tr>
            <tr>
                <td>Department</td>
                <td><select name="fdept">
                         <option>Select Department</option>
                        <option>GBH</option>
                        <option>IT</option>
                        <option>CSE</option>
                        <option>ECE</option>
                        <option>EEE</option>
                    </select></td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td><input type="text" name="fph" value="" /></td>
            </tr>
            <tr>
                <td>												<input type="reset" class="button button-alt form-button-reset" value="Re Set"/>
                
                <input type="submit" class="button form-button-submit" value="Sign Up"/>
                </td>
                <td></td>
            </tr>
        </tbody>
    </table>

</form></center></div>
					</div>
				</article>
			</div>



	</body>
</html>
