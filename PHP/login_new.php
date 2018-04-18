<?php
/**
 * Created by PhpStorm.
 * User: da_ph
 * Date: 18/04/2018
 * Time: 12:27
 */

include_once 'dbfactory.php';

$username = $_POST['username'];
$password = $_POST['password'];

$salt1 = 'JhnYjuml9p';
$salt2 = 'Gldh7jUy65';

$hashedPassword = hash('whirlpool', '$salt1$password$salt2');

