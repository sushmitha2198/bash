#!/bin/bash

#commands used: mkdir, cd, echo, cat, cp, mv, touch, head, tail, pwd, ls, read, sleep, rm

#Create directory and goto created directory
if [ ! -d "dir1" ]
then
 mkdir dir1
fi
cd dir1

#create a file and write a content
echo "This is data.txt" >> data.txt
echo "Content of data.txt:"
cat data.txt

#create another file named data.txt and copy the content of data.txt
touch datacopy.txt
cp data.txt datacopy.txt

#replace content of datacopy.txt
echo -e "line1 \nline2 \nline3" > datacopy.txt
#print first two lines of datacopy.txt
echo -e "\nFirst two lines of datacopy.txt:"
head -2 datacopy.txt


#print last two lines of datacopy.txt
echo -e "\nLast two lines of datacopy.txt:"
tail -2 datacopy.txt

#create another file named datamove.txt and move content of data.txt to datamove.txt
touch datamove.txt
mv data.txt datamove.txt

#replace content of datamove.txt
echo -e "\nReplaced content of datamove.txt: \nThis is datamove.txt" > datamove.txt
cat datamove.txt

#print working directory
echo -e "\nWorking directory:"
pwd

#list of files before removing datacopy.txt
echo -e "\nList of files before removing datacopy.txt"
ls

rm datacopy.txt

#list of files after removing datacopy.txt
echo -e "\nlist of files after removing datacopy.txt"
ls

#Read, Write and sleep
echo -e "\nPausing......"
read -p "Enter your name: > " name
echo “Hi $name! Wait for 4 seconds”
sleep 4
echo “Thank you!”
