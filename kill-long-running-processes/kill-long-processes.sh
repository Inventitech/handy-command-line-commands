#!/bin/bash

# Source: http://serverfault.com/questions/166034/kill-all-processes-that-are-running-for-more-than-5-minutes-by-a-given-user-in-l

# This script will kill process which running more than X hours
# egrep: the selected process; grep: hours
PIDS="`ps eaxo bsdtime,pid,comm | egrep "spamd|exim|mysqld|httpd" | grep " 1:" | awk '{print $2}'`"

# Kill the process
echo "Killing spamd, exim, mysqld and httpd processes running more than one hour..."
for i in ${PIDS}; do { echo "Killing $i"; kill $i; sleep 10; kill -9 $i; }; done;
