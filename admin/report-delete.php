<?php
	require_once 'includes/init.php';
	require_once 'includes/db-conn.php';

	if(isset($_GET['id']) && !empty($_GET['id'])) {
		$id = $_GET['id'];

		$sql = "DELETE FROM report WHERE id = '{$id}'";

		if(db_query($con, $sql)) {
			header('location:reports.php?msg=Comment deleted.');
		}
		else {
			header('location:reports.php?error=Problem while deleting reports. Please try again.');
		}
	}
	else {
		header('location:reports.php?error=Problem while deleting reports. Please try again.');
	}
