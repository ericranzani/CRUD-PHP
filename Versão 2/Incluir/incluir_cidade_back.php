<?php
error_reporting(0);
$db = mysql_connect ("127.0.0.1", "root", "vertrigo");
mysql_select_db("teste",$db);
$codcidade1=$_POST['codcidade'];
$cidade1=$_POST['cidade'];
$uf1=$_POST['uf'];

$inserir = mysql_query("INSERT INTO cidade (codcidade,cidade,uf)
                        VALUES('$codcidade1','$cidade1','$uf1')") 
						or die (mysql_error());
mysql_close ($db);
include "consulta_cidade.php";
?>