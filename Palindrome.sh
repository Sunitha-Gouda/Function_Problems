#!/bin/bash

read -p " Enter a number to check palindrome or not = " number
remainder=0
reverse=" "
temp=$number

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
      echo " Number is Palindrome "
   else
      echo " Number is not a Palindrome "
   fi



