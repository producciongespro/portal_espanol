<?php
session_start();
$host = "localhost"; /* Host name */
$user = "recursos_gespro"; /* User */
$password = "Hola123Gespro"; /* Password */
$dbname = "recursos_espanol"; /* Database name */


$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}
?>