<?php
error_reporting(0);
include "conexao.php";
$result = mysql_query("select * from tb_fornecedor", $db);
echo "<center><table border='1'>
<tr>
	<td><h1>Código</h1></td>
	<td><h1>Nome</h1></td>
	<td><h1>Endereço</h1></td>
	<td><h1>Número</h1></td>
	<td><h1>Bairro</h1></td>
	<td><h1>Cidade</h1></td>
	<td><h1>UF</h1></td>
	<td><h1>CNPJ CPF</h1></td>
	<td><h1>RG</h1></td>
	<td><h1>Telefone</h1></td>
	<td><h1>Fax</h1></td>
	<td><h1>Celular</h1></td>
	<td><h1>E-mail</h1></td>
</tr>";
// Escreve resultado até que não haja mais linhas na tabela
while($row = mysql_fetch_array($result)) {
echo "<tr><td>".$row["for_codigo"]."</td>
          <td>".$row["for_nome"]."</td>
		  <td>".$row["for_endereco"]."</td>
		  <td>".$row["for_numero"]."</td>
		  <td>".$row["for_bairro"]."</td>
		  <td>".$row["for_cidade"]."</td>
		  <td>".$row["for_uf"]."</td>
		  <td>".$row["for_cnpjcpf"]."</td>
		  <td>".$row["for_rgie"]."</td>
		  <td>".$row["for_telefone"]."</td>
		  <td>".$row["for_fax"]."</td>
		  <td>".$row["for_celular"]."</td>
		  <td>".$row["for_email"]."</td>
	  </tr><br>";
	}
	echo "</table></center>";
	echo "<br />";
mysql_free_result($result);
mysql_close ($db);
?>
<!--Fim Consulta-->