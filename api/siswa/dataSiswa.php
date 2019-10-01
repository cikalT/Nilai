<?php
// show list data siswa
require_once "../koneksi.php";

$cond = "";

$start = 0;
$limit = 40;

if(isset($_GET['start']) && !empty($_GET['start'])) {
    $start = $_GET['start'];
}

if(isset($_GET['limit']) && !empty($_GET['limit'])) {
    $limit = $_GET['limit'];
}

if(isset($_GET['NamaSiswa_']) && !empty($_GET['NamaSiswa_'])) {
    $nama = $_GET['NamaSiswa_'];
    $cond .= " AND tb_siswa.NamaSiswa_ LIKE '%$nama%'";
}

if(isset($_GET['KelasSiswa_']) && !empty($_GET['KelasSiswa_'])) {
    $kelas = $_GET['KelasSiswa_'];
    $cond .= " AND tb_siswa.IDKelas_='$kelas'";
}

$data = [];
$index = 0;
$no = $start;

$sql = "SELECT tb_siswa.*, tb_kelas.NamaKelas_, tb_jurusan.NamaJur_ FROM (( tb_siswa INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_) INNER JOIN tb_jurusan ON tb_siswa.IDJur_ = tb_jurusan.IDJur_) WHERE 1=1 $cond ORDER BY tb_siswa.Nis_ ASC LIMIT $start, $limit";

$query = $con->query($sql);

if($query->num_rows) {
    while($row = $query->fetch_object()) {
        $data[]  = $row;
        $data[$index]->NoSiswa_ = $no+1;
        $index++;
        $no++;
    }
}

$total = $con->query("SELECT COUNT(IDSiswa_) AS Total_ FROM tb_siswa WHERE 1=1 $cond");

$total = $total->fetch_object()->Total_;

print_r(
    json_encode(
        array(
            "success"=>true,
            "data"=>$data,
            "total"=>$total,
            "msg"=>"loaded data"
        )
    )
);

?>