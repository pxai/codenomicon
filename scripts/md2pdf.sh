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
    ${TEXT}prologue.md \
    ${TEXT}00.languages/*.md \
    ${TEXT}01.web/*.md \
    ${TEXT}02.testing/*.md \
    ${TEXT}03.sqlnosql/*.md \
    ${TEXT}04.nonprogramminglang/*.md \
    ${TEXT}05.tulebox/*.md \
    ${TEXT}06.sysadmin/*.md \
    ${TEXT}07.scripting/*.md \
            --toc
