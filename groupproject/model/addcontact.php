<?php
// Get the product data
$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];

// Validate inputs
if ( empty($message) ) {
    $error = "Please Fill out the comment section";
    include('error.php'); 
} else {
    // If valid, add the product to the database
    require_once('../model/database.php');
    $query = "INSERT INTO mail (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";
    $db->exec($query);

    // Display the Product List page
    header( 'Location: ../index.php' ) ; ;
}
?>
