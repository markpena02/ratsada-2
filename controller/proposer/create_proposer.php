<?php
// Include your database connection file
include_once("../database.php");

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $full_name = $_POST['full_name'];
    $college_office = $_POST['college_office'];
    $university_email = $_POST['university_email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Add validation checks here if needed
    if ($password !== $confirm_password) {
        echo json_encode(["success" => false, "message" => "Passwords do not match."]);
        exit;
    }

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert data into the database
    $stmt = $connection->prepare("INSERT INTO proponents (full_name, college_office, university_email, password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $full_name, $college_office, $university_email, $hashed_password);

    if ($stmt->execute()) {
        // Registration successful
        echo json_encode(["success" => true, "message" => "Registration successful!"]);
    } else {
        // Registration failed
        echo json_encode(["success" => false, "message" => "Registration failed. Please try again later."]);
    }

    $stmt->close();
} else {
    echo json_encode(["success" => false, "message" => "Invalid request method."]);
}

// Close the database connection
$connection->close();
?>
