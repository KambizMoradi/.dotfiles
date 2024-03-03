#!/usr/bin/sh


for i in $(seq $1 $2)
do
	url=https://f2m$i.fun
	brave $url
done
