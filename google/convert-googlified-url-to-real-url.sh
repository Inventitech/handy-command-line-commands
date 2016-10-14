#!/bin/bash

# Convert URL received via 'copy link' on google search results into its original URL
COMMAND="\$p = CGI->new(\"${1}\"); print \$p->param('url'); print \"\\n\""
echo $COMMAND

eval "perl -MCGI -e '$COMMAND'"
