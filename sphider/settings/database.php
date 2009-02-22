<?php
if($_SERVER['HTTP_HOST']=="localhost") {
	$database="tridev";
	$mysql_user = "user";
	$mysql_password = "password"; 
	$mysql_host = "localhost";
	$mysql_table_prefix = "sphider_";
} else {
	$database="tridevinfo";
	$mysql_user = "tridevinfo";
	$mysql_password = "password123"; 
	$mysql_host = "mysql1022.servage.net";
	$mysql_table_prefix = "sphider_";
}



	$success = mysql_connect ($mysql_host, $mysql_user, $mysql_password);
	if (!$success)
		die ("<b>Cannot connect to database, check if username, password and host are correct.</b>");
    $success = mysql_select_db ($database);
	if (!$success) {
		print "<b>Cannot choose database, check if database name is correct.";
		die();
	}
?>

