<?php

require_once "../koneksi.php";

$sql = "SELECT 
        (SELECT COUNT(IDKelas_) FROM tb_kelas) AS ValueKelas_,
        (SELECT COUNT(IDJur_) FROM tb_jurusan) AS ValueJur_,
        (SELECT COUNT(IDMapel_) FROM tb_mapel) AS ValueMapel_,
        (SELECT COUNT(IDSiswa_) FROM tb_siswa) AS ValueSiswa_
        FROM dual";

$query = $con->query($sql);

if($query->num_rows) {
    $value = $query->fetch_object();
    
    $valueKelas = $value->ValueKelas_;
    $valueJur = $value->ValueJur_;
    $valueMapel = $value->ValueMapel_;
    $valueSiswa = $value->ValueSiswa_;

    $success = true;

    print_r(
    json_encode(
            array(
                "success" => $success,
                "ValueKelas_" => $valueKelas,
                "ValueJur_" => $valueJur,
                "ValueMapel_" => $valueMapel,
                "ValueSiswa_" => $valueSiswa
            )
        )
    );

} else {
    $success = false;
    $data = "NUL MAMANK";
    print_r(
        json_encode(
            array(
                "success" => $success,
                "data" => $data
            )
        )
    );
}

?>