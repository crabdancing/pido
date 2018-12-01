#!/usr/bin/env bash

export PIDO='./pido'

export TRANSACTION_OPTIONS='-D'
#$PIDO --database --dbpath here -b there -v --arch pretty

echo "Testing sync options"
# sync options
$PIDO -Sccggiilquuwyy -s a -s b
# sync standard options
$PIDO -S -b /pacman -v --arch linux --color when --config config-file --debug \
      --gpgdir gpgdir --logfile sync.log --disable-download-timeout --sysroot /sysroot \
      --cachedir /a --cachedir /b --hookdir /c --hookdir /d --noconfirm --confirm
$PIDO -S --noconfirm
$PIDO -S --confirm
$PIDO -S --noconfirm --confirm
$PIDO -S --confirm --noconfirm
# sync transaction options
$PIDO -Sddp --assume-installed oops=1.0 --dbonly --noprogressbar --noscriptlet --print-format "%l"
# upgrade options
$PIDO -S --asdeps --asexplicit --ignore p1 --ignoregroup p2 --needed --overwrite glob*
$PIDO -S --ignore p1,p2,p3
$PIDO -S --ignoregroup g1,g2,g3
$PIDO -S --overwrite g1*,g2*,g3*

#$PIDO --help
#$PIDO -Dkq --asdeps p1 --asexplicit p2 t1 t2
#$PIDO -Qcdegiklmnpqtu -o dog -s oops t1 
#$PIDO -Scgilquwyd -s oops t1 t2
#$PIDO --sync --nodeps --assume-installed p=v2 --dbonly --noprogressbar --noscriptlet --print --print-format "%d" t1
#$PIDO -Sps oops
#$PIDO -Sps
#$PIDO - t1 t2 t3
exit


test/query.exp

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
