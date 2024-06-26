#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
echo ""
echo "***********************************************************"
echo "   Starting Nginx server                    "
echo "***********************************************************"

set -e

/usr/sbin/nginx -g "daemon off;"