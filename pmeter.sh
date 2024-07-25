#!/bin/bash

####################################################
#            Metadata                              #
####################################################
#                                                  #
# Author: ABHISHEK C                               #
# Date: 23-07-2024                                 #
#                                                  #
####################################################


#Question:  Script to check the  positional parameters are provided or not.


#set -x # Debug mode
#set -e # Exit the script if there is an error
#set -o # If pipe failed, then exit from the script



#Define function

check_param()
{
	
ar=3          # "ar" is the varaiable which stores number of parameters 
	
if [[ $# != $ar ]]; then
	
	 echo "Positional parameters are missing. Please check."
         exit
 
else 

         echo "The provided parameters are $@"
fi	

}


check_param "$@" #Calling the  function 



