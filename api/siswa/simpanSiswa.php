<?php

require_once "../koneksi.php";

$nis = $_POST['Nis_'];
$nama = $_POST['NamaSiswa_'];
$alamat =  $_POST['Alamat_'];
$idkelas = $_POST['IDKelas_'];
$idjur = $_POST['IDJur_'];

//validasi jika update
if(isset($_POST['IDSiswa_']) && !empty($_POST['IDSiswa_'])) {
    $id = $_POST['IDSiswa_'];
    
    //validasi data kosong
    if(!empty($nama) && !empty($alamat)) {

        $sql = "UPDATE tb_siswa SET
                Nis_='$nis',
                NamaSiswa_='$nama',
                Alamat_='$alamat',
                IDKelas_='$idkelas',
                IDJur_='$idjur'
                WHERE IDSiswa_='$id'";
        $query = $con->query($sql);
    
        if($query) {
            $success = true;
            $msg = "berhasil update data";
        } else {
            $success = false;
            $msg = "gagal update data nis=".$nis." nama=".$nama." alamat=".$alamat." kelas=".$idkelas." jurusan=".$idjur." id=".$id;
        }
    } else {
        $success = false;
        $msg = "data kurang lengkap";
    }
}
//validasi jika simpan
else {
    //validasi data kosong
    if(!empty($nis) && !empty($nama) && !empty($alamat) && !empty($idkelas) && !empty($idjur)) {

        $sql = "INSERT INTO tb_siswa(Nis_, NamaSiswa_, Alamat_, IDKelas_, IDJur_) 
                VALUES ('$nis', '$nama', '$alamat', '$idkelas', '$idjur')";
        $query = $con->query($sql);
    
        if($query) {
            $success = true;
            $msg = "berhasil menyimpan data";
        } else {
            $success = false;
            $msg = "gagal menyimpan data";
        }
    } else {
        $success = false;
        $msg = "data kurang lengkap";
    }
}

print_r(
    json_encode(
        array(
            "success" => $success,
            "message" => $msg
        )
    )
);

?>