<?php
ini_set('memory_limit','500M');
ini_set('max_execution_time','-1'); 
ob_start();
session_start();

header("Expires: Mon, 26 Jul 1997 05:00:00 GMT" );
header("Last-Modified: " . gmdate( "D, d M Y H:i:s" ) . "GMT" );
header("Cache-Control: no-cache, must-revalidate" );
header("Pragma: no-cache" ); 

// put full path to Smarty.class.php
require('includes/smarty/Smarty.class.php');
$smarty = new Smarty();

$smarty->template_dir = 'includes/templates';
$smarty->compile_dir = 'includes/templates_c';
$smarty->cache_dir = 'includes/cache';
$smarty->config_dir = 'includes/configs';

define('FOLDER', "/tridevlocal");
define('HTTPPATH', "http://".$_SERVER['HTTP_HOST'].FOLDER);
define('DOCPATH', $_SERVER['DOCUMENT_ROOT'].FOLDER);

$PAGETITLE = "Tridev Social Networking Site";
$smarty->assign('HTTPPATH', HTTPPATH);
$smarty->assign('FOLDER', FOLDER);
$smarty->assign('DOCPATH', DOCPATH);
$smarty->assign('PAGETITLE', $PAGETITLE);

if($_GET['p']) $p = $_GET['p'].".php";
if(!$p) $p = "home.php";
if(!file_exists($p)) $p = "error.php";
include_once($p);

function __autoload($classname) {
	include("Classes/{$classname}.php");
}
spl_autoload_register('spl_autoload');
if (function_exists('__autoload')) {
	spl_autoload_register('__autoload');
}

if(!$body) $body = "Content Will be Displayed Here.";
$header = $smarty->fetch("header.html");
$footer = $smarty->fetch("footer.html");
echo $header.$body.$footer;
?>