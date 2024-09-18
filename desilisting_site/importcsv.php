<?php
// Include the database connection
include('db.php');

if (isset($_POST["submit"])) {
    $filename = $_FILES["file"]["tmp_name"];

    if ($_FILES["file"]["size"] > 0) {
        $file = fopen($filename, "r");

        // Skip the header row
        fgetcsv($file);

        while (($row = fgetcsv($file, 10000, ",")) !== FALSE) {
            $category = $row[0];
            $title = $row[1];
            $location = $row[2];
            $web = $row[3];
            $facebook = $row[4];
            $instagram = $row[5];
            $youtube = $row[6];
            $zomato = $row[7];
            $x = $row[8];
            $bing = $row[9];

            // Check if the category exists
            $result = $conn->query("SELECT id FROM categories WHERE name = '" . $conn->real_escape_string($category) . "'");
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $category_id = $row['id'];
            } else {
                // Insert the new category
                $conn->query("INSERT INTO categories (name) VALUES ('" . $conn->real_escape_string($category) . "')");
                $category_id = $conn->insert_id;
            }

            // Insert the product
            $sql = "INSERT INTO products (category_id, category, locations, title, web, facebook, instagram, youtube, zomato, x, bing)
                    VALUES ('$category_id', '" . $conn->real_escape_string($category) . "', '" . $conn->real_escape_string($location) . "', '" . $conn->real_escape_string($title) . "', '" . $conn->real_escape_string($web) . "', '" . $conn->real_escape_string($facebook) . "', '" . $conn->real_escape_string($instagram) . "', '" . $conn->real_escape_string($youtube) . "', '" . $conn->real_escape_string($zomato) . "', '" . $conn->real_escape_string($x) . "', '" . $conn->real_escape_string($bing) . "')";
            if (!$conn->query($sql)) {
                echo "Insert failed: " . $conn->error . "\n";
            }
        }

        fclose($file);
        $conn->close();

        echo "CSV data successfully imported into the database.";
    } else {
        echo "Invalid file or no file uploaded.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSV Import</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        input[type="file"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            margin-bottom: 20px;
            cursor: pointer;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Upload CSV to Import Categories and Products</h2>
        <form action="" method="post" enctype="multipart/form-data">
            <input type="file" name="file" accept=".csv">
            <br>
            <input type="submit" name="submit" value="Upload">
        </form>
    </div>
</body>
</html>
