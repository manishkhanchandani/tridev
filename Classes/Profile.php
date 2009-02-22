<?php
class Profile {
	public function __construct() {
		global $Common, $dbFrameWork;
		$this->dbFrameWork = $dbFrameWork;
		$this->Common = $Common;
	}
	
	public function getGeneralDetails($userId) {
		$sql = "select * from users where user_id = '".$userId."'";
		$record['users'] = $this->Common->selectCacheRecord($sql);
		$sql = "select gender from profile1 WHERE user_id = '".$userId."'";
		$record['profile1'] = $this->Common->selectCacheRecord($sql);
		return $record;
	}
}
?>