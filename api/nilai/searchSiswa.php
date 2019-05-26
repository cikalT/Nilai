<?php

require_once "../koneksi.php";

$nis = $_GET['nis'];

$sql = "SELECT IDSiswa_, NamaSiswa_ FROM tb_siswa WHERE Nis_='$nis'";

$query = $con->query($sql);

$id = "";
$data = "";

if($query->num_rows) {
    $value = $query->fetch_object();
    $id = $value->IDSiswa_;
    $data = $value->NamaSiswa_;
} else {
    $data = "NIS TIDAK TERDAFTAR";
}


$success = true;

print_r(
    json_encode(
        array(
            "success" => $success,
            "id" => $id,
            "nama" => $data
        )
    )
);

?>