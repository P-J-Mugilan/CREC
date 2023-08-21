<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Gata pass project to CREC student" />
<meta name="author" content="Mugilan" />
<title>CREC Gata_Pass</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">CREC Student Profile</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Portfolio</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#application">Application</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><%=session.getAttribute("name")%></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	
	<!-- Portfolio Section-->
	<section class="page-section bg-primary text-white mb-0" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<br><br>
			<h2
				class="page-section-heading text-center text-uppercase text-white">USER PORTFOLIO</h2>
				
				<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome , <%=session.getAttribute("name")%></h1>
			
			<!-- Masthead Subheading-->
			<br>
			<h1>First Year </h1>
			<p class="masthead-subheading font-weight-light mb-0" style="font-weight: bold ; font-size:45px">
				Department of Computer Applications</p>
				<p style="font-size: 30px">
					Chadalawada Ramanamma Engineering College, Tirupati.
					
				</p>
		
		</div>
	</section>
	

	
	<!-- application Section-->
	<section class="page-section" id="application">
		<div class="container">
			<!-- application Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Application</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN" method="post" action="application">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" name="name"
								placeholder="Enter your name..." data-sb-validations="required" required />
							<label for="name">Enter Full Name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="id" type="text"
								placeholder="name@example.com" name="id"
								data-sb-validations="required,email" required/> <label for="id">Student ID</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel" name="mobile"
								placeholder="Enter the Mobile No ..." required data-sb-validations="required" />
							<label for="phone">Enter Mobile No</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">Please! Enter the message.</div>
						</div>
						<!-- date input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="date" name="dateOf"
								required data-sb-validations="required" />
							<label for="phone"></label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">Please! Enter the message.</div>
						</div>
						<!-- from time input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="time" name="outTime"
								placeholder="Enter the Mobile No ..." required data-sb-validations="required" />
							<label for="phone">OUT TIMING</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">Please! Enter the message.</div>
						</div>
						<!--  to time input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="time" name="inTime"
								placeholder="Enter the Mobile No ..." required data-sb-validations="required" />
							<label for="phone">IN TIMING</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">Please! Enter the message.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required" name="reason" required></textarea>
							<label for="message">Enter the Reason for Apply Gate Pass</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
			
						<input style="width : 400px; font-size: 30px; background: teal" id="submit button" type="submit" value="Send the Request">
					</form>
				</div>	
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Developer Location</h4>
					<p class="lead mb-0">
						Nagari <br /> Andhra Pradesh, 517590
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="whatsapp://send?text=" target="_blank"><i
						class="fab fa-fw fa-whatsapp"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="mailto:pjmugilan@gmail.com" target="_blank"><i
						class="fab fa-fw fa-google"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://www.linkedin.com/in/mugilanjagadeesan" target="_blank"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="https://pjmugilan.000webhostapp.com/" target="_blank"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Developer</h4>
					<p class="lead mb-0">
						Freelancing with fullstack development and Front end design
						<a href="https://pjmugilan.000webhostapp.com/" target="_blank">Visit for more</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
		<style>
			small{
				font-size:20px;
				font-weight: bold;
			}
		</style>
			<small>Copyright &copy; Mugilan Website 2023</small>
		</div>
	</div>
	
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
