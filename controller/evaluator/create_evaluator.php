<?php
include_once("../database.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $full_name = $_POST['full_name'];
    $university_email = $_POST['university_email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($password !== $confirm_password) {
        echo json_encode(["status" => "error", "message" => "Passwords do not match."]);
        exit();
    }

    // Insert into the database
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Fetch the next ID (e.g., find the current maximum ID and increment)
    $result = $connection->query("SELECT MAX(id) AS max_id FROM evaluators");
    $row = $result->fetch_assoc();
    $next_id = $row['max_id'] !== null ? str_pad((int)$row['max_id'] + 1, 4, '0', STR_PAD_LEFT) : '0001';

    $stmt = $connection->prepare("INSERT INTO evaluators (id, full_name, university_email, password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $next_id, $full_name, $university_email, $hashed_password);

    if ($stmt->execute()) {
        echo json_encode(["status" => "success", "message" => "Registration successful!", "id" => $next_id]);
    } else {
        echo json_encode(["status" => "error", "message" => "Registration failed. Please try again later."]);
    }

    $stmt->close();
}

$connection->close();
?>
