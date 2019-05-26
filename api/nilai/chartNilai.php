<?php

require_once "../koneksi.php";

$id = $_GET['idnilai'];

$data = [];
for ($i=1; $i < 6; $i++) { 
    
    if($i==4){
        $table = "Uts_";
    }elseif($i==5){
        $table = "Uas_";
    }else{
        $table = "Tugas".$i."_";
    }
    $sql = "SELECT $table AS Nilai_ FROM tb_nilai WHERE IDNilai_='$id'";
    $query = $con->query($sql);
    while($row = $query->fetch_object()) {
                $data[]  = $row;
                $data[$i-1]->Nilai_ = (int)$data[$i-1]->Nilai_;
                if($i==4){
                    $data[$i-1]->Label_ = "UTS";
                }elseif($i==5){
                    $data[$i-1]->Label_ = "UAS";
                }else{
                    $data[$i-1]->Label_ = "Tugas ".$i;
                }
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