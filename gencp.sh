#! /bin/bash

if [ -f "${HOME}/.gencp" ]
then
  source "${HOME}/.gencp"
fi

echo -e "Hey \033[32m${USER}\033[m! \n\033[0;31mgencp\033[0m: Tool made by @codadept"

if [[ -z ${CP_PATH} ]] || [[ -z ${CP_NAME} ]] || [[ -z ${CP_USERNAME} ]]
then
  echo -e "\nThis is a one time setup.\n"
  CP_PATH=${HOME}/coding
  read -e -i "$CP_PATH" -p "Please enter your coding directory: " INPUT
  CP_PATH="${INPUT:-$CP_PATH}"
  CP_NAME=${USER}
  read -e -i "$CP_NAME" -p "Please enter your full name: " INPUT
  CP_NAME="${INPUT:-$CP_NAME}"
  CP_USERNAME=${USER}
  read -e -i "$CP_USERNAME" -p "Please enter coding handle/username: " INPUT
  CP_USERNAME="${INPUT:-$CP_USERNAME}"
  echo -e "# GENCP CPP TEMPLATE GENERATOR \n" > ${HOME}/.gencp
  echo "export CP_PATH='${CP_PATH}'" >> ${HOME}/.gencp
  echo "export CP_NAME='${CP_NAME}'" >> ${HOME}/.gencp
  echo "export CP_USERNAME='${CP_USERNAME}'" >> ${HOME}/.gencp
fi

if [ ! -d $CP_PATH ]
then
  mkdir $CP_PATH
fi

CP_PLATFORM_NAME='codeforces'
read -e -i "$CP_PLATFORM_NAME" -p "Enter the name of the coding platform: " INPUT
CP_PLATFORM_NAME="${INPUT:-$CP_PLATFORM_NAME}"

CP_PLATFORM_FOLDER="${CP_PATH}/${CP_PLATFORM_NAME}"

if [ ${CP_PATH: -1} == '/' ]
then
  CP_PLATFORM_FOLDER="${CP_PATH}${CP_PLATFORM_NAME}"
fi

if [ ! -d $CP_PLATFORM_FOLDER ]
then
  mkdir $CP_PLATFORM_FOLDER
  echo -e "\n$CP_PLATFORM_NAME folder created in your coding directory!" 
fi

CP_CONTEST_NAME=''
read -e -i "$CP_CONTEST_NAME" -p "Enter the name of the coding contest: " INPUT
CP_CONTEST_NAME="${INPUT:-$CP_CONTEST_NAME}"

if [ -d "${CP_PLATFORM_FOLDER}/${CP_CONTEST_NAME}" ]
then
  echo "Folder with the given contest name exists!"
  exit
fi

CP_CONTEST_FOLDER="${CP_PLATFORM_FOLDER}/${CP_CONTEST_NAME}"

mkdir "$CP_CONTEST_FOLDER"

QUESTIONS="abcdefghijklmnopqrstuvwxyz"

echo -n "Enter total number of questions in the contest: "
read CP_QUESTIONS

NUMBER_RE='^[0-9]+$'

while [[ ! $CP_QUESTIONS =~ $NUMBER_RE ]]
do
  echo -e "Please enter a number!\n: \c"
  read CP_QUESTIONS
done

while ! [ $CP_QUESTIONS -ge 1 -a $CP_QUESTIONS -le 26 ]
do
  echo -e "The number should be greater than 0 and less than or equal to 26!\n: \c"
  read CP_QUESTIONS
done

for (( FILES=0; FILES<$CP_QUESTIONS; FILES++ ))
do
  echo ${QUESTIONS:$FILES:1}
done


