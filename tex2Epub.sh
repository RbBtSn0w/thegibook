#!/bin/bash

#---------------pandoc env checking------------------#

if [ `command -v pandoc` ];then
    echo 'pandoc already'
else
    echo 'pandoc need install'

    if [ `command -v brew` ];then
        echo 'Homebrew already'
    else
        echo 'Homebrew need install'

        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    brew install pandoc
fi

#---------------pandoc config------------------#

pandoc  theGIbook.tex --from latex -o theGIbook.epub3 --to epub3