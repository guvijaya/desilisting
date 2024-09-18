<?php
// Display errors for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include the database connection
include('db.php'); // Make sure this file contains the correct DB connection setup

// Fetch categories
$categories_result = $conn->query("SELECT DISTINCT name FROM categories");
if (!$categories_result) {
    die("Error fetching categories: " . $conn->error);
}
$categories = [];
while ($row = $categories_result->fetch_assoc()) {
    $categories[] = $row['name'];
}

// Fetch items
$items_result = $conn->query("SELECT *, categories.name as category FROM products JOIN categories ON products.category_id = categories.id");
if (!$items_result) {
    die("Error fetching items: " . $conn->error);
}
$items = [];
while ($row = $items_result->fetch_assoc()) {
    $items[] = $row;
}

// Close the connection
$conn->close();

// Output the data as JSON
header('Content-Type: application/json');
echo json_encode([
    'categories' => $categories,
    'items' => $items
]);
?>
