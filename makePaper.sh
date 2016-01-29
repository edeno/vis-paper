#!/bin/sh
# Compiles the paper to pdf
pandoc src/Title-Abstract-Keywords.md \
       src/Introduction.md \
       src/Related-Work.md \
       src/Materials-Methods.md \
       src/Results.md \
       src/Discussion.md \
       src/References.md \
       -o public/edenovellis-vis-paper.pdf \
       --filter pandoc-fignos \
       --filter pandoc-citeproc \
       --smart
