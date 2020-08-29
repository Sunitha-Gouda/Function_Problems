#!/bin/bash

echo " List of operations: "

   echo "1.Degree Celsius to Degree Fahrenheit "
   echo "2.Degree Fahrenheit to Degree Celsius "

   read -p " Enter the conversion number to be performed:- " conversionNumber

function degCtodegF() {
read -p " Enter  Celsius Temperature:  " celsius
   degF=$(echo | awk '{print '$celsius*9/5+32'}')
   echo " Degree Celsius to Degree Fahrenheit : " $degF

}

function degFtodegC() {
read -p " Enter Fahrenheit Temperature :  " Fahrenheit
   echo $Farenheit
   degC=$(echo | awk '{print '$Fahrenheit-32*5/9'}')
   echo " Degree Fahrenheit to Degree Celsius : " $degC

}


case $conversionNumber in
      "1")
         degCtodegF
         ;;
      "2")
         degFtodegC
         ;;
      *)
         echo " Please enter option 1 or 2 "
esac
