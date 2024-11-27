<?php
$host = 'localhost';  // MySQL host (usually localhost)
$user = 'root';        // MySQL username
$pass = '';            // MySQL password (empty if not set)
$db = 'my_database';   // Database name

// Create connection
$conn = new mysqli($host, $user, $pass, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
