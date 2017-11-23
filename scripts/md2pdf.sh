#!/bin/bash

# run from the content

TEXT=
TEMPL=../scripts/
DIST=../dist/


#FILES=${TEXT}prologue.md ${TEXT}level1.md ${TEXT}level7.md
pandoc --template=${TEMPL}plantilla-kdp.latex \
    -V language=spanish -V lang=spanish \
    -V author='Pello Xabier Altadill Izura' -V title='Codenomicon'\
    -V documentclass=book\
    -S --latex-engine=xelatex  \
    -o ${DIST}codenomicon.pdf  \
    ${TEXT}prologue.md ${TEXT}00/*.md ${TEXT}01/*.md --toc
