<?php
$name=$_GET["name"];
$email=$_GET["email"];
$phone=$_GET["phone"];
$description=$_GET["desc"];
$subject="New Enquiry (Dummy Enquiry)";
$to="motwanirohit44@gmail.com";
$headers="MIME-Version: 1.0" . "\r\n";
$headers.="Content-type:text/html;charset=UTF-8" . "\r\n";
$headers.="From: enquiry@rollfirstenquiry.com";
$body="<table border=1><tr><th colspan=2>New Enquiry</tr><tr><th>Name : </th><td>$name</td></tr><tr><th>Email : </th><td>$email</td></tr><tr><th>Ph. : </th><td>$phone</td></tr><tr><th>Course : </th><td>$description</td></tr></table>";
mail($to,$subject,$body,$headers);
?>