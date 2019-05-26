<?php

require_once "../koneksi.php";

$sql = "SELECT COUNT(tb_siswa.IDSiswa_) AS Jumlah_, tb_siswa.IDKelas_, tb_kelas.NamaKelas_ 
        FROM tb_siswa INNER JOIN tb_kelas 
        ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_ GROUP BY tb_siswa.IDKelas_";

$data = [];
$index = 0;

$query = $con->query($sql);

if($query->num_rows) {
    while($row = $query->fetch_object()) {
        // $data[]  = $row;
        $data[$index]['Jumlah_'] = $row->Jumlah_;
        $data[$index]['Label_'] = $row->NamaKelas_;
        $index++;
    }
}

print_r(
    json_encode(
        array(
            "success"=>true,
            "data"=>$data,
            "msg"=>"loaded data"
        )
    )
);

?>