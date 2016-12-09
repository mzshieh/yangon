#!/bin/sh
a=10

until [ $a -lt 10 ]
do
	wget http://172.16.39.199:9000/
	git add index.html
	git commit -m "."
	git push --set-upstream origin gh-pages
	sleep 30
	rm index.html
done
