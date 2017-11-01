<?php 
include 'connection.php';

$user = $_POST['cid'];
$pass = $_POST['password'];
if($user=="admin" && $pass=="admin")
{
?>
<html>
<head>
	<title> Calcutta Bistro </title>
	
	<link href="css/loginstyle1.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="css/loginstyle.css">
	
</head>
<style>
	.btn{	
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 45;
  -moz-border-radius: 45;
  border-radius: 45px;
  -webkit-box-shadow: 1px 2px 7px #666666;
  -moz-box-shadow: 1px 2px 7px #666666;
  box-shadow: 1px 2px 7px #666666;
  font-family: Arial;
  color: #ffffff;
  font-size: 23px;
		td{margin: 1em;};
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}</style>
<body>
	<div class="top">
		<div>
		 WELCOME TO ADMIN PANEL 
		</div>
	</div>
	
	<div class="logo">
		<div>
			<table>
				<tr>
					<td width="600px" style="font-size:50px;font-family:Impact, Haettenschweiler, 'Franklin Gothic Bold', 'Arial Black', 'sans-serif'"> <font color="#FFDF00"> Calcutta  </font><font color="#FF0000"> Bistro</font> </td>
					<td> <br> <br>
						<font size="4px"> 
							
						</font>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<table style="width:50%">
	<tr>
		<td><a href="chef.php" class="btn">CHEF'S DETAILS</a></td>
		<td><a href="customer.php" class="btn">CUSTOMER'S DETAILS</a></td>
	</tr>
	<tr>
		<td><a href="dboy.php" class="btn">DELIVERY BOY'S DETAILS</a></td>
		<td><a href="item.php" class="btn">ITEM'S DETAILS</a></td>
	</tr>
	<tr>
		<td><a href="manager.php" class="btn">MANAGER'S DETAILS</a></td>
		<td><a href="waiter.php" class="btn">WAITER'S DETAILS</a></td>
	</tr>
		
	</table>
	</body>
</html>
<?php
}
	else{
    $quer = "SELECT `password` FROM customer WHERE `c_id`='$user';";

	$result = mysqli_query($conn,$quer) or die ("Couldn’t execute query.");

	$row = mysqli_fetch_assoc($result);

	if($result->num_rows == 0) echo "chos chos ";
	else extract($row);

	if($pass == $password) echo "yo, signed in";
	else echo "chos";
	}
?>
