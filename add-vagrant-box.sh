#!/usr/bin/env bash
set -e

box_filename='MSEdge.Win10.Vagrant.zip'
box_url="https://az792536.vo.msecnd.net/vms/VMBuild_20180425/Vagrant/MSEdge/$box_filename"

wget $box_url
unzip $box_filename

vagrant box add 'MSEdge - Win10.box' --name 'ms-win10-edge'

rm $box_filename
rm 'MSEdge - Win10.box'