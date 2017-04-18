#! /bin/sh
read enter two numbers a b
while [ $o= "y" ]
do
echo "1.add 2.sub 3.mul 4.div "
echo  "enter ur choice"
read ch
case $ch in
   1)s= 'expr $a + $b'
     echo "sum is"$s;;
   2)d= 'expr $a - $b'
     echo "difference  is"$d
   3)m= 'expr $a * $b';;
     echo "product is"$m
   4)di='expr $a / $b';;
     echo "divided is"$di
     echo "invalid"
esac
echo "do u want to continue"
read o
if [ $o !="y"]
then 
 exit
fi
 done
