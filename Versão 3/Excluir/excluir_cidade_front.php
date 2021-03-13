<!-- Inicio Excluir -->
<center>
<form method="post" action="excluir_cidade_back.php">
<br> Codigo: <select size="1" name="codcidade">
<?php
// gera lista de cidades // fazer a conexão
$db=mysql_connect("127.0.0.1","root","vertrigo");
mysql_select_db("teste",$db);
$res = mysql_query ("select * from cidade");
while ($registro = mysql_fetch_row ($res))
{
$cod=$registro[0];
$nome=$registro[1];
echo "<option value=\"$cod\">$cod - $nome<option>\n";
}
?>
</select><br><br>

<input type="submit" name="Submit" value="Excluir">
</form>
</center>