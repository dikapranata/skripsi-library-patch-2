<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>List Book</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h2>Daftar Fakta yang ada</h2>
<table class="table">
<tr>
<td>ID_Fakta</td>
<td>Kode_Fakta</td>
</tr>
<?php
require("Library.php");
$Lib = new Library();
session_start();
session_destroy();
$show = $Lib->showBooks();
while($data = $show->fetch(PDO::FETCH_OBJ)){
echo "
<tr>
<td>$data->id_fakta</td>
<td>$data->kode_fakta</td>
</tr>";
};
?>
</table>
<a href="Input3.php" class="btn btn-success">Run Rule</a>
</div>
</body>
</html>
 
<?php
if(isset($_GET['delete'])){
$del = $Lib->deleteBook($_GET['delete']);
 
}
?>