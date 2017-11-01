<?php 
include 'connection.php';
$custid=$_POST["c_id"];
$phno=$_POST["ph_no"];
$pincode=$_POST["pincode"];
$address=$_POST["address"];

echo $custid;

$quer="INSERT INTO `customer` (`cid`, `phno`, `address`, `pincode`) VALUES ('$custid', '$phno', '$pincode', '$address');
";
if($conn->query($quer)===true)
	echo "yo";
else echo $conn->error;
?>


