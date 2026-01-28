<?php
$insert = false;
if(isset($_POST['name'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbname = "users";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password, $dbname);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "Success connecting to the db";

    // Collect post variables
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $desc = $_POST['desc'];
    $sql = "INSERT INTO `users`.`enquiry` (`name`, `email`, `phone`, `desc`, `dt`) VALUES ('$name', '$email', '$phone', '$desc', current_timestamp());";
    // echo $sql;

    // Execute the query
    if($con->query($sql) == true){
        // echo "Successfully inserted";

        // Flag for successful insertion
        $insert = true;
      
    }
    else{
        echo "ERROR: $sql <br> $con->error";
    }
    if(preg_match("/^\d+\.?\d*$/",$phone) && strlen($phone)==10){
  header("location:afterenquirypage.html");
  
    }
else{
    header("location:enquiryfail.html");
   
}

    // Close the database connection
    $con->close();
}
?>
