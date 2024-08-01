#!/bin/sh

adb_device=""
adb(){
    if [ -n "$adb_device" ]; then
        adb -s "$adb_device" shell "$@"
        return $?
    else
        "$@"
        return $?
    fi
}