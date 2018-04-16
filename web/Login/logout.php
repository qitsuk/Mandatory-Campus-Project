<?php
include_once "dbhandler.php";

session_start();
session_destroy();
header("Location: login.php");