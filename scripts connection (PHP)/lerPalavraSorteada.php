<?php

	error_reporting(0);
	
	$tabela = $_GET['tabela'];
	$id 	= $_GET['id'];

	$host 		= "servidor";
	$banco 		= "root";
	$usuario 	= "root";
	$senha 		= "root";
	
	$conexao = mysql_connect($host, $usuario, $senha) or die (mysql_error());
	mysql_select_db($banco, $conexao) or die (mysql_error());
	
	$comando = "SELECT nome FROM $tabela WHERE id=$id;";
	$execucao = mysql_query($comando);
	
	while ($palavra = mysql_fetch_array($execucao)){
		echo "$palavra[nome]";
	}
	
	mysql_free_result($execucao);
	mysql_close();
	
?>