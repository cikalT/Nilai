<?php

require_once "../koneksi.php";

$id = $_GET['idnilai'];

$sql = "SELECT tb_nilai.*, tb_siswa.Nis_, tb_siswa.NamaSiswa_, tb_siswa.Alamat_, tb_mapel.NamaMapel_, tb_siswa.IDKelas_, tb_kelas.NamaKelas_, tb_siswa.IDJur_, tb_jurusan.NamaJur_
FROM (((( tb_nilai 
INNER JOIN tb_siswa ON tb_nilai.IDSiswa_ = tb_siswa.IDSiswa_) 
INNER JOIN tb_mapel ON tb_nilai.IDMapel_ = tb_mapel.IDMapel_) 
INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_)
INNER JOIN tb_jurusan ON tb_siswa.IDJur_ = tb_jurusan.IDJur_)
WHERE tb_nilai.IDNilai_='$id'";

$query = $con->query($sql);

if($query->num_rows) {
    $value = $query->fetch_object();
    
    $idNilai = $value->IDNilai_;
    $idSiswa = $value->IDSiswa_;
    $idMapel = $value->IDMapel_;
    $semester = $value->Semester_;
    $tugas1 = $value->Tugas1_;
    $tugas2 = $value->Tugas2_;
    $tugas3 = $value->Tugas3_;
    $uts = $value->Uts_;
    $uas = $value->Uas_;
    $tgl = $value->Tgl_;
    $nis = $value->Nis_;
    $namaSiswa = $value->NamaSiswa_;
    $alamat = $value->Alamat_;
    $namaMapel = $value->NamaMapel_;
    $idKelas = $value->IDKelas_;
    $namaKelas = $value->NamaKelas_;
    $idJur = $value->IDJur_;
    $namaJur = $value->NamaJur_;

    $rataRata = ($tugas1+$tugas2+$tugas3+$uts+$uas)/5;

    if ($rataRata>=70) {
        $statusLulus = "Lulus";
    } else {
        $statusLulus = "Tidak Lulus";
    }

    switch ($rataRata) {
        case ($rataRata>=85):
            $point = "A";
            break;
        case ($rataRata>=80 AND $rataRata<=84.9):
            $point = "A-";
            break;
        case ($rataRata>=75 AND $rataRata<=79.9):
            $point = "B+";
            break;  
        case ($rataRata>=70 AND $rataRata<=74.9):
            $point = "B";
            break;  
        case ($rataRata>=65 AND $rataRata<=69.9):
            $point = "B-";
            break;  
        case ($rataRata>=60 AND $rataRata<=64.9):
            $point = "C+";
            break;  
        case ($rataRata>=55 AND $rataRata<=59.9):
            $point = "C";
            break;  
        case ($rataRata>=50 AND $rataRata<=54.9):
            $point = "C-";
            break;  
        case ($rataRata>=40.0 AND $rataRata<=49.9):
            $point = "D";
            break;  
        case ($rataRata<39.9):
            $point = "E";
            break;  
        default:
            $point = "F";
            break;
    }

    $success = true;

    print_r(
    json_encode(
            array(
                "success" => $success,
                "IDNilai_" => $idNilai,
                "IDSiswa_" => $idSiswa,
                "IDMapel_" => $idMapel,
                "Semester_" => $semester,
                "Tugas1_" => $tugas1,
                "Tugas2_" => $tugas2,
                "Tugas3_" => $tugas3,
                "Uts_" => $uts,
                "Uas_" => $uas,
                "Tgl_" => $tgl,
                "Nis_" => $nis,
                "NamaSiswa_" => $namaSiswa,
                "Alamat_" => $alamat,
                "NamaMapel_" => $namaMapel,
                "IDKelas_" => $idKelas,
                "NamaKelas_" => $namaKelas,
                "IDJur_" => $idJur,
                "NamaJur_" => $namaJur,
                "RataRata_" => $rataRata,
                "Point_" => $point,
                "StatusLulus_" => $statusLulus
            )
        )
    );

} else {
    $success = false;
    $data = "ID NILAI KOSONG";
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