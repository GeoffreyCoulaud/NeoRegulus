#!/bin/bash

SSID_NAME=$(iwgetid -r)
if [[ "${SSID_NAME}" != "" ]]; then
    echo "${SSID_NAME}"
else
	i18n.sh "not connected"
fi
