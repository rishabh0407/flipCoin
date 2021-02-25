#!/bin/bash -x

isHead=1;
isTail=0;
for(( i=0; i<=10; i++ ))
do
  toss=$(( RANDOM % 2 ));
  if(( $toss == $isHead ));
  then
    echo "Head"
  else 
    echo "Tails"
  fi
done
