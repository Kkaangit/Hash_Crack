#!/bin/bash

hash="$1"
wordlist="$2"
if [ $# -ne 2 ]; then 
echo  "Eksik veya fazla argüman girdiniz"
echo  "Kullanım $0 <hash> <wordlist>"
exit 1
fi

while  IFS= read -r sifre; do

 md5=$(echo -n "$sifre" | md5sum | awk '{print $1}')
 sha1=$(echo -n "$sifre" | sha1sum | awk '{print $1}')
 sha256=$(echo -n "$sifre" | sha256sum | awk '{print $1}')
 sha512=$(echo -n "$sifre" | sha512sum | awk '{print $1}')

if [ "$md5" = "$1" ]; then 
echo  "sifre bulundu:" $sifre
echo "hash türü md5"
exit 0 
elif [ "$sha1" = "$1" ]; then 
echo  "sifre bulundu:" $sifre
echo "hash türü sha1"
exit 0
elif [ "$sha256" = "$1" ]; then 
echo  "sifre bulundu:" $sifre
echo "hash türü sha256"
 exit 0
elif [ "$sha512" = "$1" ]; then 
echo  "sifre bulundu:" $sifre
echo "hash türü sha512"
exit 0
fi
done < $wordlist
echo "Bulunamadı"
