<?php

$cond = "";
require_once "../koneksi.php";

if(isset($_GET['idnilai']) && !empty($_GET['idnilai'])) {
    $id = $_GET['idnilai'];
    $cond .= " WHERE tb_nilai.IDNilai_='$id'";

    $sql = "SELECT tb_nilai.*, tb_siswa.Nis_, tb_siswa.NamaSiswa_, tb_siswa.Alamat_, tb_mapel.NamaMapel_, tb_mapel.Kkm_, tb_siswa.IDKelas_, tb_kelas.NamaKelas_, tb_siswa.IDJur_, tb_jurusan.NamaJur_
    FROM (((( tb_nilai 
    INNER JOIN tb_siswa ON tb_nilai.IDSiswa_ = tb_siswa.IDSiswa_) 
    INNER JOIN tb_mapel ON tb_nilai.IDMapel_ = tb_mapel.IDMapel_) 
    INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_)
    INNER JOIN tb_jurusan ON tb_siswa.IDJur_ = tb_jurusan.IDJur_)
    $cond";

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
        $kkm = $value->Kkm_;
        $namaMapel = $value->NamaMapel_;
        $idKelas = $value->IDKelas_;
        $namaKelas = $value->NamaKelas_;
        $idJur = $value->IDJur_;
        $namaJur = $value->NamaJur_;
    
        $rataRata = ($tugas1+$tugas2+$tugas3+$uts+$uas)/5;
    
        if ($rataRata>=$kkm) {
            $statusLulus = "Lulus";
        } else {
            $statusLulus = "Tidak Lulus";
        }
    
        switch ($rataRata) {
            case ($rataRata>=90):
                $point = "A";
                break;
            case ($rataRata>=85 AND $rataRata<=89.9):
                $point = "A-";
                break;
            case ($rataRata>=80 AND $rataRata<=84.9):
                $point = "B+";
                break;  
            case ($rataRata>=75 AND $rataRata<=79.9):
                $point = "B";
                break;  
            case ($rataRata>=70 AND $rataRata<=74.9):
                $point = "C";
                break;  
            case ($rataRata>=60 AND $rataRata<=69.9):
                $point = "D";
                break;  
            case ($rataRata<60):
                $point = "E";
                break;  
            case ($rataRata==0):
                $point = "F";
                break;  
        }
    } else {
       echo "error php";
    }
        
?>
<html>
<head>
    <title>Nilai Raport - <?php echo $nis; ?></title>
    <style>
        .title {
            font-size : 40px;
        }
        .text-nilai {
            font-size : 20px;
        }
        .text-point {
            font-size: 80px;
        }
        .text-lulus {
            font-size: 20px;
        }
    </style>
</head>
<body width="100%">
    <img src="../../icon/logokemenperin2.png" height="8%" align="center"/> <div class="title" align="center">Hasil Penilaian Belajar Siswa</div>
    <br><br>
    <table width="60%" align="center" border="0">
        <tr>
            <td width="9%"><h3>NIS</h3></td>
            <td width="1%"><h3>:</h3></td>
            <td width="60%"><h3><?php echo $nis ?></h3></td> 
        </tr>
        <tr>
            <td width="9%"><h3>Nama</h3></td>
            <td width="1%"><h3>:</h3></td>
            <td width="60%"><h3><?php echo $namaSiswa ?></h3></td> 
        </tr>
        <tr>
            <td width="9%"><h3>Kelas</h3></td>
            <td width="1%"><h3>:</h3></td>
            <td width="60%"><h3><?php echo $namaKelas ?></h3></td> 
        </tr>
        <tr>
            <td width="9%"><h3>Jurusan</h3></td>
            <td width="1%"><h3>:</h3></td>
            <td width="60%"><h3><?php echo $namaJur ?></h3></td> 
        </tr>
        <tr>
            <td width="9%"><h3>Alamat</h3></td>
            <td width="1%"><h3>:</h3></td>
            <td width="60%"><h3><?php echo $alamat ?></h3></td> 
        </tr>
    </table>

    <br><br>

    <table border="0">
        <tr>
            <td><div class="text-nilai">Mata Pelajaran</div></td>
            <td>:</td>
            <td><div class="text-nilai"><?php echo $namaMapel ?></div></td>
        </tr>
        <tr>
            <td><div class="text-nilai">Semester</div></td>
            <td>:</td>
            <td><div class="text-nilai"><?php echo $semester ?></div></td>
        </tr>
    </table>
    <br>
    <table border="1" width="40%">
        <tr>
            <th width="5%"><div class="text-nilai">No</div></th>
            <th width="20%"><div class="text-nilai">Ket</div></th>
            <th width="5%"><div class="text-nilai">Nilai</div></th>
        </tr>
        <tr>
            <th><div class="text-nilai">1</div></th>
            <td><div class="text-nilai">Tugas 1</div></td>
            <th><div class="text-nilai"><?php echo $tugas1 ?></div></th>
        </tr>
        <tr>
            <th><div class="text-nilai">2</div></th>
            <td><div class="text-nilai">Tugas 2</div></td>
            <th><div class="text-nilai"><?php echo $tugas2 ?></div></th>
        </tr>
        <tr>
            <th><div class="text-nilai">3</div></th>
            <td><div class="text-nilai">Tugas 3</div></td>
            <th><div class="text-nilai"><?php echo $tugas3 ?></div></th>
        </tr>
        <tr>
            <th><div class="text-nilai">4</div></th>
            <td><div class="text-nilai">UTS</div></td>
            <th><div class="text-nilai"><?php echo $uts ?></div></th>
        </tr>
        <tr>
            <th><div class="text-nilai">5</div></th>
            <td><div class="text-nilai">UAS</div></td>
            <th><div class="text-nilai"><?php echo $uas ?></div></th>
        </tr>
        <tr>
            <th colspan="2"><div class="text-nilai">Rata-rata</div></th>
            <th><div class="text-nilai"><?php echo $rataRata ?></div></th>
        </tr>
    </table>
    <table align="right" border="1">
        <tr>
            <td align="center"><div class="text-lulus"><?php echo $statusLulus ?></div></td>
        </tr>
        <tr>
            <th><div class="text-point"><?php echo $point ?></div></th>
        </tr>
    </table>

</body>
</html>
<?php
} else {
    echo "error";
}
?>