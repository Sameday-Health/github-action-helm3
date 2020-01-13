#!/bin/sh

echo -e "\033[36mSetting up kubectl configuration\033[0m"
mkdir ~/.kube/
echo "${KUBECONFIG_FILE_CONTENTS}" > ~/.kube/config

echo -e "\033[36mExecuting helm\033[0m"
sh ${INPUT_EXEC}

echo -e "\033[36mCleaning up\033[0m"
rm ~/.kube/ -Rf
