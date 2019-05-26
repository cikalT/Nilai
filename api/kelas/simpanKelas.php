<?php

require_once "../koneksi.php";

$nama = $_POST['NamaKelas_'];

//validasi jika update
if(isset($_POST['IDKelas_']) && !empty($_POST['IDKelas_'])) {
    $id = $_POST['IDKelas_'];
    //validasi data kosong
    if(!empty($nama)) {

        $sql = "UPDATE tb_kelas SET 
                NamaKelas_='$nama' 
                WHERE IDKelas_='$id'";
        $query = $con->query($sql);
    
        if($query) {
            $success = true;
            $msg = "berhasil update data";
        } else {
            $success = false;
            $msg = "gagal update data";
        }
    } else {
        $success = false;
        $msg = "data kurang lengkap";
    }
}
//validasi jika simpan
else {
    //validasi data kosong
    if(!empty($nama)) {

        $sql = "INSERT INTO tb_kelas(NamaKelas_) 
                VALUES ('$nama')";
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