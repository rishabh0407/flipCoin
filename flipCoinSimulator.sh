#!/bin/bash -x

isHead=1;
isTail=0;
a=1;
b=1;
i=1;
while (( $i <= 20  ))
do
  toss=$(( RANDOM % 2 ));
  if(( $toss == $isHead ));
  then
    echo "Head"
    (( a++ ))
  else 
    echo "Tails"
    (( b++ ))
  fi
  (( i++ ))
done
if (( $a > $b ));
then
    echo "Heads is a winner"
elif (( a == b ))
then
    sum1=(( $a - $b ));
    sum2=(( $b - $a ));
    while (( $sum1 == 2 || $sum2 == 2 ))
do
  toss=$(( RANDOM % 2 ));
  if(( $toss == $isHead ));
  then
    echo "Head"
    (( a++ ))
  else
    echo "Tails"
    (( b++ ))
  fi
   if(( $sum1 == 2 ));
   then
      echo "Heads is a winner"
   elif(( $sum2 == 2 ))
   then
      echo "Tails is a winner"
   fi 

done
else
    echo "Tails is a winner"
fi

