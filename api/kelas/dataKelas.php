<?php

require_once "../koneksi.php";

$sql = "SELECT * FROM tb_kelas";

$data = [];
$index = 0;

$query = $con->query($sql);

if($query->num_rows) {
    while($row = $query->fetch_object()) {
        $data[]  = $row;
        $data[$index]->NoKelas_ = $index+1;
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