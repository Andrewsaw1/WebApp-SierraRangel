<?php
function conectar(){
    $host="db";
    $user="root";
    $pass="MYSQL_PASSWORD";

    $bd="crud";

    $con=mysqli_connect($host,$user,$pass);

    mysqli_select_db($con,$bd);

    return $con;
}
?>
