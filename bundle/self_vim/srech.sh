#!/bin/bash
conent_dir=~/.vim/bundle/self_vim/content.txt

rm -rf $content_dir

sou=$(whiptail --title "search content" --inputbox "input search content" 10 60 "" 3>&1 1>&2 2>&3)
dir=$(whiptail --title "search directory" --inputbox "directory" 10 60 "/" 3>&1 1>&2 2>&3)

for i in `find $dir -type f -name "*"`
do
	if [ ${i} != $content_dir ];then
		# echo "1-2"|awk 'BEGIN{FS="-";OFS=","}{print $1,$2}
		echo "search directory ---" $i
		echo `grep    -n ${sou} $i|awk -F ':' -v k=$i '{print k}'|sed 's/ /\n/g'|sort |uniq -c` >> $content_dir
	fi
done

R=`cat $content_dir|awk '{print $2,$1}'`

if [ -z $R ];then
	echo "file not exist"
	exit
fi

O=$(whiptail --title "search result" --menu "select open" 15 60 0 $R 3>&1 1>&2 2>&3)

index=`grep "$O" $content_dir|awk '{print $1}'`
echo "open file $O index"
vim $O -c $index

