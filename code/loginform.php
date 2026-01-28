<?php
$username=$_GET["user"];
$pwd=$_GET["pass"];
$con = mysqli_connect("localhost","root","","users");
$stmt = $con->prepare("SELECT * FROM users WHERE username =? and pwd=?");
$stmt->bind_param("ss",$username,$pwd);
$stmt->execute();
$result = $stmt->get_result();
if($result->num_rows == 0)
{
	header("Location:invaliduser.html");
}
else
{
	header("Location:afterlogined.html");
}
$stmt->close();

?>