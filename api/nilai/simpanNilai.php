<?php

require_once "../koneksi.php";

$idsiswa = $_POST['IDSiswa_'];
$idmapel = $_POST['IDMapel_'];
$semester = $_POST['Semester_'];
$tugas1 = $_POST['Tugas1_'];
$tugas2 = $_POST['Tugas2_'];
$tugas3 = $_POST['Tugas3_'];
$uts = $_POST['Uts_'];
$uas = $_POST['Uas_'];

//validasi jika update
if(isset($_POST['IDNilai_']) && !empty($_POST['IDNilai_'])) {
    $id = $_POST['IDNilai_'];
    
    //validasi data kosong
    if(!empty($idsiswa) && !empty($idmapel) && !empty($semester) && !empty($tugas1) && !empty($tugas2) && !empty($tugas3) && !empty($uts) && !empty($uas)) {

        $sql = "UPDATE tb_nilai SET
                IDSiswa_='$idsiswa',
                IDMapel_='$idmapel',
                Semester_='$semester',
                Tugas1_='$tugas1',
                Tugas2_='$tugas2',
                Tugas3_='$tugas3',
                Uts_='$uts',
                Uas_='$uas'
                WHERE IDNilai_='$id'";
                
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
    if(!empty($idsiswa) && !empty($idmapel) && !empty($semester) && !empty($tugas1) && !empty($tugas2) && !empty($tugas3) && !empty($uts) && !empty($uas)) {

        $sql = "INSERT INTO tb_nilai(IDSiswa_, IDMapel_, Semester_, Tugas1_, Tugas2_, Tugas3_, Uts_, Uas_, Tgl_) 
                VALUES ('$idsiswa', '$idmapel', '$semester', '$tugas1', '$tugas2', '$tugas3', '$uts', '$uas', NOW())";
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