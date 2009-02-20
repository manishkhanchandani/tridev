<?php
class Users {
	public function __construct() {
		global $Common, $dbFrameWork;
		$this->dbFrameWork = $dbFrameWork;
		$this->Common = $Common;
	}
	public function validateLoginForm($post) {
		if(!trim($post['email'])) {
			$msg = "Email field is blank.";
			throw new Exception($msg);
		}
		if(!trim($_POST['password'])) {
			$msg = "Password field is blank.";
			throw new Exception($msg);
		}
		if(!$_POST['validEmail']) {
			$msg = "Email field is not valid.";
			throw new Exception($msg);
		}
		return true;
	}
	public function login($id, $rem, $email, $role) {
		if($rem) $time = time()+(60*60*24*365);
		else $time = 0;
		setcookie("user_id", $id, $time, "/");
		setcookie("email", $email, $time, "/");	
		setcookie("role", $role, $time, "/");	
	}
	public function logout() {
		setcookie("user_id", '', (time()-300), "/");
		setcookie("email", '', (time()-300), "/");	
		setcookie("role", '', (time()-300), "/");	
	}
	public function addNewUser($post) {
		$sql = "select * from jal_users where email = ".$this->dbFrameWork->qstr(trim($post['email']),get_magic_quotes_gpc());
		$rs = $this->dbFrameWork->Execute($sql);
		if($this->dbFrameWork->ErrorMsg()) {
			throw new Exception($this->dbFrameWork->ErrorMsg());
		}
		$num = $rs->RecordCount();
		if($num==0) {
			// register this user
			$post['name'] = substr_replace(trim($post['email']), "", strpos($user, "@"));
			$post['lastlogin'] = date('Y-m-d H:i:s');
			$post['status'] = 1;
			$post['role'] = "User";
			$id = $this->Common->phpinsert('jal_users', 'user_id', $post);
			$this->login($id, addslashes(stripslashes(trim($post['remember']))), addslashes(stripslashes(trim($post['email']))), 'User');	
			// email
			$Emailtemplate = new Emailtemplate;
			$patterns[0] = "{PASSWORD}";
			$replacements[0] = $_POST['password'];		
			$patterns[1] = "{SITEURL}";
			$replacements[1] = SITEURL;
			$patterns[2] = "{EMAIL}";
			$replacements[2] = $post['email'];
			$to = $post['email'];
			$Emailtemplate->template($to, 'register', $patterns, $replacements);			
			$msg = "You are successfully logged on our site";
			// email ends
		} else {
			// check password
			$sql = "select * from jal_users where email = ".$this->dbFrameWork->qstr(trim($post['email']),get_magic_quotes_gpc())." and password = ".$this->dbFrameWork->qstr(trim($post['password']),get_magic_quotes_gpc());
			$rs1 = $this->dbFrameWork->Execute($sql);
			if($this->dbFrameWork->ErrorMsg()) {
				throw new Exception($this->dbFrameWork->ErrorMsg());
			}
			$num1 = $rs1->RecordCount();
			if($num1==0) {
				// password is not matching
				$msg = "Email and Password Does Not Matches";
			} else {
				$rec = $rs->FetchRow();
				$this->login($rec['user_id'], addslashes(stripslashes(trim($post['remember']))), addslashes(stripslashes(trim($rec['email']))), $rec['role']);		
				$msg = "You are successfully logged on our site";
			}
		}
		return $msg;
	}
	public function validate_email($email) {
		if(!trim($email)) {
			throw new Exception("Email field is blank.");
		}
		if(!$this->Common->emailvalidity(trim($email))) {
			throw new Exception("Email field is not valid.");
		}
		return true;
	}
	public function validate_change_password($post, $email) {
		if(!trim($oldpassword)) {
			throw new Exception("Old password field is blank.");
		}
		if(!trim($newpassword)) {
			throw new Exception("New password field is blank.");
		}
		if(!trim($cpassword)) {
			throw new Exception("Confirm password field is blank.");
		}
		if(trim($newpassword)!=trim($cpassword)) {
			throw new Exception("New password does not match with confirm new password.");
		}
		$sql = "select * from jal_users where email = '".addslashes(stripslashes(trim($email)))."' and password = '".addslashes(stripslashes(trim($oldpassword)))."'";
		$rs = $this->dbFrameWork->Execute($sql);
		if($this->dbFrameWork->ErrorMsg()) {
			throw new Exception($this->dbFrameWork->ErrorMsg());
		}
		$num = $rs->RecordCount();
		if($num) {
			$rec = $rs->FetchRow();
			$sql = "update jal_users set password = '".addslashes(stripslashes(trim($post['newpassword'])))."' where user_id = '".$rec['user_id']."'";
			$rs = $this->dbFrameWork->Execute($sql);
			$msg = "Password updated successfully.";
		} else {
			throw new Exception("Old password does not matches with our record.");
		}
		return $msg;
	}
	public function send_forgot_password($email) {
		$sql = "select * from jal_users where email = '".addslashes(stripslashes(trim($email)))."'";
		$rs = $this->dbFrameWork->Execute($sql);
		if($this->dbFrameWork->ErrorMsg()) {
			throw new Exception($this->dbFrameWork->ErrorMsg());
		}
		$num = $rs->RecordCount();
		if($num) {
			$rec = $rs->FetchRow();
			$pass = $rec['password'];
			// email
			$Emailtemplate = new Emailtemplate;
			$patterns[0] = "{PASSWORD}";
			$replacements[0] = $rec['password'];		
			$patterns[1] = "{SITEURL}";
			$replacements[1] = SITEURL;
			$to = $rec['email'];
			$Emailtemplate->template($to, 'forgot', $patterns, $replacements);
			// email ends
			$msg = "Password successfully sent to your email.";
		} else {
			$msg = "Email is not valid. Our database does not contain this email. Please verify your email and try again.";
		}
		return $msg;
	}
}
?>
