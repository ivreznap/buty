#!/bin/bash

if [ -d $1 ]
then
        echo './buty.sh <list of subdomains>'
        exit 1
fi

        #Removing NO_IN_SCOPE_TABLE word
                sed -i 's/NO_IN_SCOPE_TABLE//g' $1

        #Removing Github Projects
                sed -i '/github.com/d' $1

        #Removing  Empty lines
                sed -i '/^$/d' $1

        #Removing Lines With Spaces
                sed -i '/[ \t]/d' $1

        #Making a file with *
                cat $1 | grep "*" > temp-wild$1

        #Removing wildcard directoris 'com/*'
                sed -i 's~/\*~~g' temp-wild$1
