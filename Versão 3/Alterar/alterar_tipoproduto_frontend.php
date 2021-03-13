<!--Início Alterar-->
<center>
<form method="post" action="alterar_tipoproduto_backend.php"><br>
<p>

Codigo:<select size="1" name="tpp_codigo">
<?php
// gera lista de conta receber // fazer a conexão
include "conexao.php";
$res = mysql_query ("select * from tb_tipoproduto");
while ($registro = mysql_fetch_row ($res))
{
    $cod=$registro[0];
    $nome=$registro[1];
    echo "<option value=\"$cod\">$cod - $nome<option>\n";
}
?>
</select><br><br>

Descrição:
<input type="text" name="tpp_descricao"><br>
<br>

<input type="submit" name="Submit" value="Alterar">
</form>
</center>
<!--Fim Alterar-->