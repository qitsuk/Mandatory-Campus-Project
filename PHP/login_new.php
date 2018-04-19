<?php
/**
 * Created by PhpStorm.
 * User: da_ph
 * Date: 18/04/2018
 * Time: 12:27
 */

include_once 'dbfactory.php';


$salt1 = 'JhnYjuml9p';
$salt2 = 'Gldh7jUy65';

$hashedPassword = hash('whirlpool', '$salt1$password$salt2');

$stmt = $dbc->prepare("SELECT * FROM users WHERE Username=?");
echo $dbc->error_list;
$stmt->bind_param('s', $username);
$username = 'qitsuk';//$_POST['username'];
$password = 'test';//$_POST['password'];
$stmt->execute();
$stmt->bind_result($user);
$stmt->fetch();
echo $user;