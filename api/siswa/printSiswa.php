<?php

require_once "../koneksi.php";

if(isset($_GET['idkelas']) && !empty($_GET['idkelas'])) {

$idkelas = $_GET['idkelas'];
$index = 0;

$sql = "SELECT tb_siswa.*, tb_kelas.NamaKelas_, tb_jurusan.NamaJur_ 
FROM (( tb_siswa INNER JOIN tb_kelas ON tb_siswa.IDKelas_ = tb_kelas.IDKelas_) 
INNER JOIN tb_jurusan ON tb_siswa.IDJur_ = tb_jurusan.IDJur_) 
WHERE tb_siswa.IDKelas_='$idkelas' ORDER BY tb_siswa.Nis_ ASC ";
$sql2 = "SELECT * FROM tb_kelas WHERE IDKelas_='$idkelas'";
$sql3 = "SELECT COUNT(IDSiswa_) AS Jumlah_ FROM tb_siswa WHERE IDKelas_='$idkelas'";

$query = $con->query($sql);
$query2 = $con->query($sql2);
$query3 = $con->query($sql3);
$dataKelas = $query2->fetch_array();
$dataJumlah = $query3->fetch_array();
?>

<html>
<head>
    <title>Daftar Siswa - <?php echo $dataKelas['NamaKelas_']; ?></title>
    <style>
        .title {
            font-size : 30px;
        }
        .title-table {
        	font-size: 25px;
        }
        .tgl {
            font-size: 20px;
        }
        .text {
        	margin-left: 10px;
        }
        .margin {
            margin-left: 60px;
        }
    </style>
</head>
<body width="100%">
    <img src="../../icon/logokemenperin2.png" height="8%" align="center"/> 
    <br>
    <?php
    if ($query->num_rows == 0) {
        	echo "<div align='center' class='title'>Tidak ada daftar siswa untuk kelas ".$dataKelas['NamaKelas_']."</div>";
        } else {
    ?>

    <div align="center" class="title">DAFTAR SISWA</div>
    <br>
    <!-- <div class="margin">Jumlah Siswa : <?php echo $dataJumlah['Jumlah_']; ?></div> -->
    <div class="margin tgl">Tgl : </div>
    <br>
    <table border=".5" width="85%" class="margin">
    	<tr>
    		<th colspan="4"><div class="title-table"><?php echo $dataKelas['NamaKelas_']; ?></div></th>
    	</tr>
        <tr>
            <th width="10%">NO</th>
            <th width="10%">NIS</th>
            <th width="60%">Nama</th>
            <th width="5%"> </th>
        </tr>
        <?php
        if($query->num_rows) {
        	 while($dataSiswa = $query->fetch_assoc()) {
        ?>
        <tr>
            <th>
            	<?php 
            	$index++;
            	echo $index; 
            	?> 
            </th>
            <td align="center"><?php echo $dataSiswa['Nis_']; ?></td>
            <td><div class="text"><?php echo $dataSiswa['NamaSiswa_']; ?></div></td>
            <td></td>
        </tr>
        <?php
        	}
		}
        ?>
    </table>

    <?php
		}
    ?>

</body>
</html>

<?php
} else {
    echo "error";
}
?>