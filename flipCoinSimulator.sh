#!/bin/bash -x

isHead=1;
isTail=0;
a=1;
b=1;
while (( $a <= 21 || $b <= 21 ))
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
done
if (( a == 21 ));
then
    echo "Heads is a winner"
else
    echo "Tails is a winner"
fi
