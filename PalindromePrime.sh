#!/bin/bash

read -p  " Enter a number to check number is a prime and also a palindrome = "  number
remainder=0
reverse=" "
temp=$number

   for (( counter=1; counter<=$number; counter++ ))
   do
         if (( $number%$counter==0 ))
         then
           (( count++ ))
         else(( count==2 ))
         fi
   done

func_Palindrome () {
   while(($number!=0))
   do
      remainder=$(($number%10))
      reverse=$((reverse*10+remainder))
      number=$(($number/10))
   done
      echo $reverse
}

reverse="$( func_Palindrome $num )"

   if(($temp==$reverse))
   then
       echo " Number is a  Prime number and also a Palindrome  "
   else
       echo " Number is not a Prime number "
   fi
