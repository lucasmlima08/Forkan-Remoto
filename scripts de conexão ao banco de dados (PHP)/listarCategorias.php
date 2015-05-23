<?php

	/* 	--------------------------------------------------------------------------------
	*	Esse script lista todas as tabelas dentro do banco de dados.
	*	Tendo que cada tabela é uma categoria, exceto as tabelas "recorde" e "ranking".
	*	------------------------------------------------------------------------------- */

	error_reporting(0);

	$host 		= "servidor";
	$banco 		= "root";
	$usuario 	= "root";
	$senha 		= "root";
	
	$conexao = mysql_connect($host, $usuario, $senha) or die(mysql_error());
	
	$codigo_sql = "SHOW TABLES FROM $banco;";
	$resultado = mysql_query($codigo_sql) or die (mysql_error());
	
	while ($tabela = mysql_fetch_row($resultado)) {
		if (($tabela[0] != "recorde") && ($tabela[0] != "ranking")){
			echo "$tabela[0]#<br>";
		}
	}
	
	mysql_free_result($resultado);
	mysql_close();

?>