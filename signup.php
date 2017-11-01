<?php 
include 'connection.php';
$cid=$_POST["cid"];
$pass=$_POST["password"];
$cname=$_POST["cname"];
$pincode=$_POST["pincode"];
$address=$_POST["address"];
$phoneno=$_POST["phoneno"];

$quer="INSERT INTO `customer` (`c_id`, `password`, `c_name`, `pin`, `address`, `phone no`) VALUES ('$cid','$pass', '$cname', '$pincode', '$address', '$phoneno');";
$conn->query($quer);

?>





<html>
<head>
	<title> Calcutta Bistro </title>
	
	<link href="css/style.css" type="text/css" rel="stylesheet">
	
</head>
<body>
	
	<div class="top">
		<div>
		 Contact Us +91 8420314589 | support@calcuttabistro.com 
		</div>
	</div>
	
	<div class="logo">
		<div>
			<table>
				<tr>
					<td width="600px" style="font-size:50px;font-family:Impact, Haettenschweiler, 'Franklin Gothic Bold', 'Arial Black', 'sans-serif'">
					Welcome to <font color="#FFDF00"> Calcutta  </font><font color="#FF0000"> Bistro</font></td>
						<td> <br> <br>
						<font size="4px"> 
							<a href="index.html">HOME</a> 
							<a href="about.html">ABOUT US</a>  
							<a href="service.html">SERVICE</a>
							<a 
							href="login.html">LOG IN</a>
						</font>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div class="middle">
		<div style="background-image:url('img/a.jpg');">
		<p>
			<br> <br>
					SIGNED UP SUCCESSFULLY  <br>
			<font size="5px"> CLICK LOGIN TO ORDER NOW </font>
		</p> 
		</div>
	</div>
	
	<div class="bottom">
		<div>
			<table border="0">
				<tr>
					<td width="700px">
						<font color="#000"> We are making for you </font> <br> <br>

					<font color="#000" size="5px"> We Have Taste Options for You! </font> <br> <br>
</html>


