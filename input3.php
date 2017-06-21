<body>
<h2>Pilih rule</h2>
<?php
require("Library.php");
$Lib = new Library();
session_start();
if (empty($_SESSION['kode_fakta'])) {
 $kode_session=0; // jika belum login, maka dikembalikan ke file form_login.php
 }
else{
	$kode_session=$_SESSION['kode_fakta'];
}
echo $kode_session;
$show = $Lib->ambil_rule($kode_session);?>
<form action="input3.php" method="post">
<div class="form-group">
	<label for="exampleInputEmail1">Pilih : </label>
		<select name="kode_fakta">
			<option>---- Pilih jenis kerusakan ----</option>
			<?php
			while($data = $show->fetch(PDO::FETCH_OBJ)){
				echo "<option value='".$data->point_rule."'> ".$data->point_rule."</option>";
			};?>
			</select>
	</label>
</div>
<input type="submit" name="addBook" value="Submit rule" class="btn btn-success">
</form>
</body>
 
<?php
if(isset($_POST['addBook'])){
	$kode_fakta = $_POST['kode_fakta'];
	$_SESSION['kode_fakta']=$_POST['kode_fakta'];
	$add = $Lib->addBook($kode_fakta);
	if($add == "Success"){
		header('Location: input3.php');
	}
	if($add == "Failed"){
		header('Location: Index.php');
	}
}
?>