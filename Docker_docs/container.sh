#!/bin/bash

I=0
while  [ $I -lt 11 ]
do 
docker run -itd --name c$I ubuntu:16.04
I=$(( $I + 1 ))
done
