<?php

	session_start();

?>

<!doctype html>
<html lang="en">

	<head>
  
		<title>Login</title>
		
		<?php include 'link/links.php'; ?>
		
		<?php include 'css/style.php'; ?>

		<link rel="stylesheet" type="text/css" href="bootstrap.css">
		
	</head>
	
	<body>
	
		<?php
		
			include 'dbcon.php';
		
			if(isset($_POST['submit'])){
				
				$email = mysqli_real_escape_string($con, $_POST['email']);
				$password = mysqli_real_escape_string($con, $_POST['password']);
				
				$email_search = "select * from registration where email='$email'";
				$query = mysqli_query($con, $email_search);
				
				$email_count = mysqli_num_rows($query);
				
				if($email_count){
					$email_pass = mysqli_fetch_assoc($query);
					
					$db_pass = $email_pass['password'];
					
					$pass_decode = password_verify($password, $db_pass);
					
					if($pass_decode){
						?>
							<script>
								alert("Login Successfully");
							</script>
						<?php
					}else{
						?>
							<script>
								alert("Password Incorrect");
							</script>
						<?php
					}
				}else{
					?>
						<script>
							alert("Invalid Email");
						</script>
					<?php
				}
			}
		
		?>
	
		<div class="card bg-light">
		
		<article class="card-body mx-auto" style="max-width: 400px;">
	
			<h4 class="card-title mt-3 text-center">Create Account</h4>
		
			<p class="text-center">Get started with your free account</p>
			
			<p>
			
				<a href="#" class="btn btn-block btn-gmail bg-danger text-white"><i class="fa fa-google pr-2"></i>Login via Gmail</a>
				
				<a href="#" class="btn btn-block btn-facebook bg-primary text-white"><i class="fa fa-facebook-f pr-2"></i>Login via facebook</a>
			
			</p>
			
			<p class="divider-text">
			
				<span class="bg-light">OR</span>
			
			</p>
			
		<form action="<?php echo htmlentities($_SERVER['PHP_SELF']);?>" method="POST">
			
			<div class="form-group input-group">
			
				<div class="input-group-prepend">
				
					<span class="input-group-text"><i class="fa fa-envelope"></i></span>
				
				</div>
				
				<input type="email" class="form-control" name="email" placeholder="Email Address" required autocomplete="off">
			
			</div>
			
			<div class="form-group input-group">
			
				<div class="input-group-prepend">
				
					<span class="input-group-text"><i class="fa fa-lock"></i></span>
				
				</div>
			
				<input type="password" class="form-control" name="password" placeholder="password" required autocomplete="off">
			
			</div>
			
			<div class="form-group">
			
				<button type="submit" class="btn btn-block btn-primary mb-3" name="submit">Login Now</button>
				
			</div>
				
		</form>
		
		<p class="text-center">Don't Have an account?<a href="regis.php" class="p-2">SignUp Here</a></p>
		
		</article>
		
		</div>
	
	</body>
	
</html>