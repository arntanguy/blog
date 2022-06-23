#!/bin/bash    
HOST="arntanguy.fr"
USER="arnta1906968"
PASS="u3Q2e8A4q8r"
FTPURL="ftp://$USER:$PASS@$HOST"
LCD="_site"
RCD="/"
#DELETE="--delete"
lftp -c "set ftp:list-options -a; set ssl:check-hostname no;
open $FTPURL;
lcd $LCD;
cd $RCD;
mirror --reverse \
       --ignore-time \
       $DELETE \
       --verbose \
       --exclude-glob a-dir-to-exclude/ \
       --exclude-glob a-file-to-exclude \
       --exclude-glob a-file-group-to-exclude* \
       --exclude-glob other-files-to-exclude"
