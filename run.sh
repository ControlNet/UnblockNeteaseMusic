#!/bin/bash

DEVELOPMENT=false ENABLE_FLAC=true ENABLE_LOCAL_VIP=true NO_CACHE=false SIGN_KEY="./server.key" SIGN_CERT="./server.crt" node ./app.js -p 7890:7891

