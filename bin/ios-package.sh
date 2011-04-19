#!/bin/bash
TARGET=ipa-debug
KEYSTORE=~/Downloads/dww-iphone.p12
PROVISIONING=~/Downloads/Flash_Profile.mobileprovision
HOST_IP=127.0.0.1
DESCRIPTOR=PlayingPunkApp-app.xml
OUTPUT_NAME=PlayingPunkApp.ipa

INPUT_FILES="\
PlayingPunkApp.swf \
"

adt -package -target $TARGET -connect $HOST_IP -storetype pkcs12 -keystore $KEYSTORE -provisioning-profile $PROVISIONING $OUTPUT_NAME $DESCRIPTOR $INPUT_FILES
