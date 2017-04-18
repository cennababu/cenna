if ! [ $# -eq 2 ]
then
echo "usage:addnames[class list][username]"
fi
if ! [ -f $1 ]
then  
echo "File named $1 not found"
fi
result=$(grep -w "$2" "$1")
if [ -n "$result" ]
then 
echo "Username:$2.Exists"
else
echo $2>>$1
fi

