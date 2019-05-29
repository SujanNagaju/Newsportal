<?php
	require_once 'includes/init.php';
	require_once 'includes/db-conn.php';
	
	$username = $_POST['username'];
	$password = sha1($_POST['password']);

	$sql = "SELECT id, first_name, middle_name, last_name, email, username, contact, address, type FROM users WHERE password = '{$password}' AND (email = '{$username}' OR username = '{$username}') AND status = 'ACTIVE'";

	$result = db_query($con, $sql);

	if(db_num_rows($result) > 0) {
		$user = db_fetch_assoc($result);

		$_SESSION['user'] = $user;

		$id = user_id();
		$ip = ip();
		$datetime = now();

		if (isset($_POST['remember']) && $_POST['remember'] == 'yes') {
			setcookie('np_user', $users['username'], time()+(60*60*24*30));
		}

		$sql = "INSERT INTO login_logs SET user_id = '{$id}', ip_address = '{$ip}', created_at = '{$datetime}'";
		db_query($con, $sql);

		header('location:index.php');
	}
	else {
		header('location:login.php?error='.urlencode('Invalid username or password.'));
	}