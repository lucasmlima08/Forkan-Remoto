<?php

	error_reporting(0);
	
	$tabela = $_GET['tabela'];

	$host 		= "servidor";
	$banco 		= "root";
	$usuario 	= "root";
	$senha 		= "root";
	
	$conexao = mysql_connect($host, $usuario, $senha) or die (mysql_error());
	mysql_select_db($banco, $conexao) or die (mysql_error());
	
	$comando = "SELECT COUNT(*) FROM $tabela;";
	$execucao = mysql_query($comando) or die (mysql_error());
	$valor = mysql_fetch_row($execucao);
	
	echo "$valor[0]";
	
	mysql_close();
?>