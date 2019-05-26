<?php

require_once "../koneksi.php";

$nama = $_POST['NamaJur_'];

//validasi jika update
if(isset($_POST['IDJur_']) && !empty($_POST['IDJur_'])) {
    $id = $_POST['IDJur_'];
    //validasi data kosong
    if(!empty($nama)) {

        $sql = "UPDATE tb_jurusan SET 
                NamaJur_='$nama' 
                WHERE IDJur_='$id'";
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

        $sql = "INSERT INTO tb_jurusan(NamaJur_) 
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