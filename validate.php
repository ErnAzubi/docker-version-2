<?php
$username = $_POST['username'];
$password = $_POST['password'];

$valid_username = "Azubi";
$valid_password = "CodedAzubi";

if ($username === $valid_username && $password === $valid_password) {
    echo "Congrats you're logged in!";
} else {
    echo "Invalid username or password.";
}
?>
