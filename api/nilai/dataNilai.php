<?php

require_once "../koneksi.php";

$cond = "";

$start = 0;
$limit = 25;

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

if (isset($_GET['MapelNilai_']) && !empty($_GET['MapelNilai_'])) {
    $mapel = $_GET['MapelNilai_'];
    $cond .= " AND tb_nilai.IDMapel_='$mapel'";
}

if(isset($_GET['SemesterNilai_']) && !empty($_GET['SemesterNilai_'])) {
    $semester = $_GET['SemesterNilai_'];
    $cond .= " AND tb_nilai.Semester_='$semester'";
}

$data = [];
$index = 0;
$no = $start;

$sql = "SELECT tb_nilai.*, tb_siswa.Nis_, tb_siswa.NamaSiswa_, tb_mapel.NamaMapel_, tb_siswa.IDKelas_, tb_kelas.NamaKelas_ 
        FROM ((( tb_nilai 
        INNER JOIN tb_siswa ON tb_nilai.IDSiswa_ = tb_siswa.IDSiswa_) 
        INNER JOIN tb_mapel ON tb_nilai.IDMapel_ = tb_mapel.IDMapel_) 
        INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_) 
        WHERE 1=1 $cond ORDER BY tb_nilai.Tgl_ ASC LIMIT $start, $limit";

$query = $con->query($sql);

if($query->num_rows) {
    while($row = $query->fetch_object()) {
        $data[]  = $row;
        $data[$index]->NoNilai_ = $no+1;
        $index++;
        $no++;
    }
}

$total = $con->query("SELECT COUNT(tb_nilai.IDNilai_) AS Total_ 
                        FROM ((( tb_nilai 
                        INNER JOIN tb_siswa ON tb_nilai.IDSiswa_ = tb_siswa.IDSiswa_) 
                        INNER JOIN tb_mapel ON tb_nilai.IDMapel_ = tb_mapel.IDMapel_) 
                        INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_) 
                        WHERE 1=1 $cond");

$total = $total->fetch_object()->Total_;

print_r(
    json_encode(
        array(
            "success"=>true,
            "data"=>$data,
            "total"=>$total,
            "sql"=>$sql,
            "msg"=>"loaded data"
        )
    )
);

?>