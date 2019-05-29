<?php
	if(!check_user()) {
		header('location: login.php?error='.urlencode('Please login to continue.'));
	}