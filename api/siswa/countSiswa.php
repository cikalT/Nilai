<?php
// to paginate page siswa
require_once "../koneksi.php";

$cond = "";

if(isset($_GET['NamaSiswa_']) && !empty($_GET['NamaSiswa_'])) {
    $nama = $_GET['NamaSiswa_'];
    $cond .= " AND NamaSiswa_ LIKE '%$nama%'";
}

if(isset($_GET['KelasSiswa_']) && !empty($_GET['KelasSiswa_'])) {
    $kelas = $_GET['KelasSiswa_'];
    $cond .= " AND IDKelas_='$kelas'";
}

$sql = "SELECT COUNT(IDSiswa_) AS Total_ FROM tb_siswa WHERE 1=1 $cond";

$query = $con->query($sql);

if($query->num_rows) {
    $value = $query->fetch_object();
    
    $total = $value->Total_;

    $success = true;

    print_r(
    json_encode(
            array(
                "success" => $success,
                "total" => $total
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