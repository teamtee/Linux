#!/bin/bash
if echo 0 && ls  /boofsfs
then
	echo "test1"
fi
if ls $FILE_NAME >/dev/null 2>&1
then
        echo "test2"
fi
if $(ls $FILE_NAME >/dev/null 2>&1)
then
        echo "test3"
fi
if [  $(ls $FILE_NAME >/dev/null 2>&1) ]
then
        echo "test4"
fi
if [  $(ls $FILE_NAME >/dev/null 2>&1) -eq 0 ]
then
        echo "test5"
fi
if [  $(ls $FILE_NAME >/dev/null 2>&1) -eq 0 ]
then
        echo "test6"
fi
#echo "[FILE]$FILE_NAME $?"
        #echo [ ! $(ls $FILE_NAME >/dev/null 2>&1) ]
        #echo [  $(ls $FILE_NAME >/dev/null 2>&1) ]
        #echo [ ! ls $FILE_NAME >/dev/null 2>&1 ]
        #echo [  ls $FILE_NAME >/dev/null 2>&1 ]
        #       echo [ ! ls $FILE_NAME >/dev/null ]
        #echo [  ls $FILE_NAME >/dev/null ]
        #echo [ ! ls $FILE_NAME >/dev/null ]
        #echo [  ls $FILE_NAME >/dev/null ]
        #echo $(ls $FILE_NAME >/dev/null 2>&1)
        #echo ls $FILE_NAME >/dev/null 2>&1

