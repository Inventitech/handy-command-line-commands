#!/bin/bash

/usr/sbin/service nginx stop
letsencrypt renew
/usr/sbin/service nginx start
