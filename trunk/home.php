<?php
switch($_GET['action']) {
	case 'forgot':
		$PAGETITLE = "Welcome To Tridev Social Network :: Forgot Password";
		$body = $smarty->fetch('forgot.html');
		break;
	case 'register':
		$PAGETITLE = "Welcome To Tridev Social Network :: Register";
		$styleJs = HTTPPATH."/js/register.js";
		$smarty->assign('styleJs', $styleJs);
		$body = $smarty->fetch('register.html');
		break;
	default:
		$PAGETITLE = "Welcome To Tridev Social Network :: Login";
		$styleJs = HTTPPATH."/js/login.js";
		$smarty->assign('styleJs', $styleJs);
		$body = $smarty->fetch('login.html');
		break;
}
$header = $smarty->fetch("preloginheader.html");
$footer = $smarty->fetch("preloginfooter.html");
echo $header.$body.$footer;
exit;
?>