<?php

require_once "../koneksi.php";

$id = $_POST['IDJur_'];

$sql = "DELETE FROM tb_jurusan WHERE IDJur_='$id'";

$query = $con->query($sql);

if($query) {
    $success = true;
    $msg = "berhasil menghapus data";
} else {
    $success = false;
    $msg = "gagal menghapus data";
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