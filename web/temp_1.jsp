<jsp:include page="headcss-js.jsp"/>
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
                            <form method="post" action="a.jsp">
                                <div>
                                    <div class="row half">
                                        <div class="4u">
                                            <select name="domain">
                                                <option value="">Select Project Type</option>
                                                <option value="Desktop Application">Desktop Application</option>
                                                <option vale="Web Application">Web Application</option>
                                                <option value="IEEE Application">IEEE Application</option>
                                                <option value="Mobile Application">Mobile Application</option>
                                            </select>
                                        </div>
                                        <div class="4u">
                                            <select name="tech">
                                                <option value="">Select Technology</option>
                                                <option value="Java Technology">Java Technology</option>
                                                <option vale="Dot Net Technology">Dot Net Technology</option>
                                                <option value="Android Technology">Android Technology</option>
                                            </select>
                                        </div>
                                        <div class="4u">
                                            <select name="modulecount">
                                                <option value="">Select Number OF Modules</option>
                                                <option vale="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option vale="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option vale="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>

                                                <option value="10">10</option>


                                            </select>
                                        </div>
                                    </div>
                                    <div class="row half">
                                        <div class="12u">
                                            <input type="text" name="title" id="subject" placeholder="Enter Abstract Title" />
                                        </div>
                                    </div>
                                    <div class="row half">
                                        <div class="12u">
                                            <textarea name="ab" id="message" placeholder="Copy Your Abstract Content Here"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="12u">
                                            <a href="#" class="button form-button-submit">Send Message</a>
                                            <a href="#" class="button button-alt form-button-reset">Clear Form</a>
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