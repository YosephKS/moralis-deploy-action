#!/bin/sh -l

ls -a

moralis-admin-cli deploy \
--moralisApiKey ${MORALIS_API_KEY} \
--moralisApiSecret ${MORALIS_API_SECRET} \
--moralisSubdomain ${MORALIS_API_SUBDOMAIN} \
--folderPath ${CUSTOM_FOLDER_PATH:=./}