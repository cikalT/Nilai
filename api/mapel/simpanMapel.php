<?php

require_once "../koneksi.php";

$nama = $_POST['NamaMapel_'];
$kkm = $_POST['Kkm_'];

//validasi jika update
if(isset($_POST['IDMapel_']) && !empty($_POST['IDMapel_'])) {
    $id = $_POST['IDMapel_'];
    //validasi data kosong
    if(!empty($nama)) {

        $sql = "UPDATE tb_mapel SET 
                NamaMapel_='$nama',
                Kkm_='$kkm' 
                WHERE IDMapel_='$id'";
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

        $sql = "INSERT INTO tb_mapel(NamaMapel_, Kkm_) 
                VALUES ('$nama', '$kkm')";
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