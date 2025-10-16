<?php

define('BROKER_COUNT', 3);

$_iban_fields = ['banking_account1', 'banking_account2', 'banking_account3'];

$form_fieldtype_class = [
    '1' => 'form-control',
    '2' => 'form-control',
    '3' => 'custom-select',
    '4' => 'checkbox-multiple',
    '6' => 'form-check-input',
];

$hostname = 'MySql-8.0';
$dbname = 'ueex_tt';
$dbusername = 'root';
$dbpassword = '';

// Create connection
$mysqli = new mysqli("db", "root", "root", "taskdb");

// Check connection
if ($mysqli->connect_error) {
    die('DB connection failed: ' . $mysqli->connect_error);
}

// Set charset
$mysqli->set_charset('utf8');