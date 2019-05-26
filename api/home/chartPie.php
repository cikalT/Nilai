<?php

require_once "../koneksi.php";

$sql = "SELECT COUNT(tb_siswa.IDSiswa_) AS Jumlah_, tb_jurusan.NamaJur_, tb_jurusan.IDJur_ AS IDJur_, tb_jurusan.NamaJur_
        FROM (( tb_siswa 
        INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_)
        INNER JOIN tb_jurusan ON tb_siswa.IDJur_ = tb_jurusan.IDJur_)
        GROUP BY tb_siswa.IDJur_ ORDER BY tb_jurusan.IDJur_ DESC";

$data = [];
$index = 0;

$jurusan = array(1 => 'KK', 'KB', 'GB', 'TL', 'TP', 'PM', 'TKR', 'TSM', 'EKA', 'RPL', 'TKJ', 'MM');

$query = $con->query($sql);

if($query->num_rows) {
    while($row = $query->fetch_object()) {
        $data[$index]['Jumlah_'] = $row->Jumlah_;
        $data[$index]['Label_'] = $jurusan[$row->IDJur_];
        // $data[$index]['Label_'] = $row->NamaJur_;
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