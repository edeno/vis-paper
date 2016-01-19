#!/bin/sh
# Compiles the paper to pdf
pandoc src/Title.md \
       src/Abstract.md \
       src/Keywords.md \
       src/Introduction.md \
       src/Related-Work.md \
       src/Materials-Methods.md \
       src/Results.md \
       src/Discussion.md \
       src/References.md \
       -o public/edenovellis-vis-paper.pdf \
       -V geometry:margin=0.5in \
       -V fontsize=12pt \
       --filter pandoc-crossref \
       --smart
