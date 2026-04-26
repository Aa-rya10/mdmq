<?php
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

if ($username == "admin" && $password == "1234") {
    $_SESSION['user'] = $username;

    echo "Login successful<br>";
    echo "<a href='dashboard.php'>Go to Dashboard</a>";
} else {
    echo "Invalid credentials";
}
?>