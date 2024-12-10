<?php
// Establish a connection to the MySQL database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registration_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = $_POST["firstName"];
    $lastName = $_POST["lastName"];
    $birthday = $_POST["birthday"];
    $gender = $_POST["gender"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $passwordConfirmation = $_POST["confirmPassword"];

    // Check if Password and Confirm Password match
    if ($password === $passwordConfirmation) {
        // Insert user data into the database
        $sql = "INSERT INTO users (first_name, last_name, birthday, gender, email, password, password_confirmation)
                VALUES ('$firstName', '$lastName', '$birthday', '$gender', '$email', '$password', '$passwordConfirmation')";

        if ($conn->query($sql) === TRUE) {
            echo "User successfully added to the database.";
        }
        // } else {
        //     echo "Failed to add user to the database.";
        // }
    } else {
        echo '<script type="text/javascript">alert("Passwords do not match.");</script>';
        echo "Failed to add user to the database.";
    }
}

// Close the database connection
$conn->close();
?>