<?php
// Caskade Programming Language Adapter for PHP
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

define('TRUE', 1);
define('FALSE', 0);

function caskade_not($x) {
    return ($x === TRUE) ? FALSE : TRUE;
}

function caskade_and($a, $b) {
    return ($a === TRUE && $b === TRUE) ? TRUE : FALSE;
}

function caskade_or($a, $b) {
    return ($a === TRUE || $b === TRUE) ? TRUE : FALSE;
}

function caskade_eq($a, $b) {
    return ($a === $b) ? TRUE : FALSE;
}

function caskade_neq($a, $b) {
    return ($a !== $b) ? TRUE : FALSE;
}

function caskade_to_bool($x) {
    return ($x == 0) ? FALSE : TRUE;
}
?>
