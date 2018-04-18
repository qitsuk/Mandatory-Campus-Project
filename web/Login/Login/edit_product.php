<?php
include_once  'dbhandler.php';



$Product_name = $_POST['Product_name'];
$q = "SELECT * FROM products WHERE Product_name='$Product_name'";




$result = mysqli_query($dbc, $q);

if (isset($_POST['Product_ID'])) {

    editProduct($dbc, $_POST['Product_ID']);
    } else {
    while ($row = $result->fetch_assoc()) {
        echo "<legend>Edit product</legend>";
        echo "<form action='edit_product.php' method='post'>";
        echo "<input type='hidden' name='Product_ID' value='" . $row['Product_ID'] . "'>";
        echo "<input type='text' name='Product_name' placeholder='Product Name' value='" . $row['Product_name'] . "' required>";
        echo "<input type='text' name='Category' placeholder='Category' value='" . $row['Category'] . "' required>";
        echo "<input type='text' name='Subcategory' placeholder='Subcategory' value='" . $row['Subcategory'] . "' required>";
        echo "<input type='number' name='Price' placeholder='Price' value='" . $row['Price'] . "' required>";
        echo "<input type='text' name='Information' placeholder='Information' value='" . $row['Information'] . "' required>";
        echo "<input type='text' name='Product_IMG' placeholder='Product Image' value='" . $row['Product_IMG'] . "' required>";
        echo "<button type='submit'>Edit Product</button>";
        echo "</form";
    }
}

function editProduct($databaseLink, $p_id) {
    $q = "UPDATE products SET Product_name='" . $_POST['Product_name'] . "', Category='" . $_POST['Category'] . "', Subcategory='" . $_POST['Subcategory'] . "', Price='" . $_POST['Price'] . "', Information='" . $_POST['Information'] . "', Product_IMG='" . $_POST['Product_IMG'] . "' WHERE Product_ID=$p_id";
    if ($result = mysqli_query($databaseLink, $q)) {
        echo "You have successfully edited the product !<br>";
        echo "<a href='admin_panel.php'> Go back to the admin panel</a>";

    } else {
        echo "There was an error editing the product<br>" ;
        echo "<a href='admin_panel.php'>Go back to the admin panel</a>";
    }
}
