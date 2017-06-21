<?php
class Library{
	public function __construct(){
		$this->db = new PDO('mysql:host=localhost;dbname=two','root','');
	}
	public function addBook($kode_fakta){
		$sql = "INSERT INTO fakta (id_fakta, kode_fakta) VALUES('', '$kode_fakta')";
		$query = $this->db->query($sql);
		if(!$query){
			return "Failed";
		}
		else{
			return "Success";
		}
	}
	//public function add_data($kode_fakta){
	//	session_start();
	//	$isi_Session=$_SESSION['kode_fakta']
	//	if(!$isi_Session)
	//	$sql = "INSERT INTO fakta (id_fakta, kode_fakta) VALUES('', '$kode_fakta')";
	//	$query = $this->db->query($sql);
	//	if(!$query){
	//		return "Failed";
	//	}
	//	else{
	//		return "Success";
	//	}
	//}
	function ambil_rule($kode_fakta,$kode_proses)
    {
    	if($kode_proses=='proses'){
    		if($kode_fakta=='0'){
	    		$hapus_Semua="DELETE FROM fakta";
	    		$proses_hapus = $this->db->query($hapus_Semua);
	    		$sql = "SELECT * FROM rule INNER JOIN kondisi ON point_rule = id_kondisi WHERE start_rule='0'";
				$query = $this->db->query($sql);
				return $query;
	    	}
	    	else{
	    		$sql = "SELECT * FROM rule WHERE start_rule='$kode_fakta'";
				$query = $this->db->query($sql);
				while($data = $query->fetch(PDO::FETCH_OBJ)){
				    if($data->status_rule=='0'){
				        $cek_rule = "SELECT * FROM rule INNER JOIN kondisi ON point_rule = id_kondisi WHERE start_rule='$kode_fakta'";
						$query = $this->db->query($cek_rule);
						return $query;
				    }
				    else{
						header('Location: Index.php');
				    }
				}
    		}
    	}
    	else if($kode_proses=='insert'){
    		$sql = "INSERT INTO fakta (id_fakta, kode_fakta) VALUES('', '$kode_fakta')";
			$query = $this->db->query($sql);
	    	if(!$query){
					return "Failed";
				}
				else{
					header('Location: Input3.php');
				}
    	}
    }
	public function looping_rule($key)
	{
		$this->db->where('start_rule',$key);
		$query=$this->db->get('rule');
		if($query->num_rows()>0)
		{
			foreach($query->result()as$row)
			{
				$hasil=$row->point_rule;
			}
		}
		else
		{
			$hasil='';
		}
		return $hasil;
	}
	//public function editBook($kode){
	//	$sql = "SELECT * FROM books WHERE kodeBuku='$kode'";
	//	$query = $this->db->query($sql);
	//	return $query;
	//}
	//public function updateBook($kode, $judul, $pengarang, $penerbit){
	//	$sql = "UPDATE books SET judulBuku='$judul', pengarang='$pengarang', penerbit='$penerbit' WHERE kodeBuku='$kode'";
	//	$query = $this->db->query($sql);
	//	if(!$query){
	//		return "Failed";
	//	}
	//	else{
	//		return "Success";
	//	}
	//}
	public function showBooks(){
		$sql = "SELECT * FROM fakta INNER JOIN kondisi ON kode_fakta=id_kondisi";
		$query = $this->db->query($sql);
		return $query;
	}
	//	$sql = "DELETE FROM books WHERE kodeBuku='$kode'";
	//	$query = $this->db->query($sql);
	//}
}
?>