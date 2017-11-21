#!/bin/bash

# run from the content 

TEXT=
TEMPL=../utils/

pandoc --template=${TEMPL}plantilla-kdp.latex \
    -V language=spanish -V lang=spanish \
    -V author='Pello Xabier Altadill Izura' -V title='Codenomicon'\
    -V documentclass=book\
    -S --latex-engine=xelatex  \
    -o codenomicon.pdf  \
    ${TEXT}prologue.md  ${TEXT}languages.md  ${TEXT}frameworks.md \
    ${TEXT}scripting.md ${TEXT}utils.md \
    ${TEXT}services.md ${TEXT}references.md --toc
