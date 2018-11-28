#!/usr/bin/env bash

export PIDO='./pido'

$PIDO --database --dbpath here -b there -v --arch pretty

#exit

echo "Test string operations"
$PIDO --database
$PIDO --query
$PIDO --remove
$PIDO --sync
$PIDO --deptest
$PIDO --files
$PIDO --version
$PIDO --help

echo "Test single letters operations"
$PIDO -D
$PIDO -Q
$PIDO -R
$PIDO -S
$PIDO -T
$PIDO -F
$PIDO -V
$PIDO -h

echo "Test Standard Options"
$PIDO -D --dbpath dbname
$PIDO -D -b dbname
$PIDO -D --verbose
$PIDO -D -v
$PIDO -D --arch architecture

echo "Test Database Options"
$PIDO -D -asdeps
$PIDO -D -asexplicit
$PIDO -D -asdeps asdeps-arg
$PIDO -D -asexplicit asexplicit-arg
$PIDO -D -check
$PIDO -D -k
$PIDO -D -quiet
$PIDO -D -q
