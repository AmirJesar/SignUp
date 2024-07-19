<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body
	style="background: url(images/bs.png); background-size: cover; background-attachment: fixed;">
	<div class="cotainer">
		<div class="row">
			<div class="col m6 offset-m3">
				<div class="card" style="background: #8B0A1A;">
					<div class="card-content">
						<h3 style="color: white;" class="center-align">Register
							here!!</h3>
						<h5 id="succe" class="center-align"></h5>
						<div class="form center-align">
							<form action="SignUp" method="post" id="myform">
								<input type="text" name="user_name"
									placeholder="Enter here......" /> <input type="password"
									name="user_password" placeholder="Enter here......" /> <input
									type="email" name="user_email" placeholder="Enter here......" />
								<button type="submit" class="btn white" style="color:#8B0A1A;">Submit</button>
							</form>
						</div>
						<div class="loader center-align"
							style="margin-top: 20px; display: none">
							<div class="preloader-wrapper big active">
								<div class="spinner-layer spinner-blue">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-red">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-yellow">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-green">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>
							</div>
							<h5>Please Wait......</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>

	<script>
		$(document)
				.ready(
						function() {
							$("#myform")
									.on(
											'submit',
											function(event) {
												event.preventDefault();
												var f = $(this).serialize();
												console.log(f);
												$(".loader").show();
												$(".form").hide();

												$
														.ajax({
															url : "SignUp",
															data : f,
															type : 'POST',
															success : function(
																	data,
																	textStatus,
																	jqXHR) {
																console
																		.log(data);
																console
																		.log("Done.....");
																$(".loader")
																		.hide();
																$(".form")
																		.show();
																if (data.trim() == 'Done') {
																	$("#succe")
																			.html(
																					"Succesfully Registered...")
																	$("#succe")
																			.addClass(
																					"light-green-text");
																} else {
																	$("#succe")
																			.html(
																					"Something went Wrong with Server")
																	$("#succe")
																			.addClass(
																					"red-text");
																}
															},
															error : function(
																	data,
																	textStatus,
																	jqXHR) {
																console
																		.log(data);
																console
																		.log("Error.....");
																$(".loader")
																		.hide();
																$(".form")
																		.show();
																$("#succe")
																		.html(
																				"Something went Wrong with Server")
																$("#succe")
																		.addClass(
																				"red-text");
															}
														})
											})
						})
	</script>
</body>
</html>