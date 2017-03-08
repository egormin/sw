#!/usr/bin/bash

echo "#####SUBLIME 3 SOFTWARE INSTALLATION#####"

sleep 1

echo "STAGE 1: Software downloading"
wget https://download.sublimetext.com/sublime_text_3_build_3126_x64.tar.bz2

echo "STAGE 2: Unpacking (to /opt)"
tar -vxjf sublime_text_3_build_3126_x64.tar.bz2 -C /opt

echo "STAGE 3: Link creation"
ln -s /opt/sublime_text_3/sublime_text /usr/bin/subl

echo "Subilme 3 has been installed successfully"
echo "To use it type 'subl'"
~                                                          
