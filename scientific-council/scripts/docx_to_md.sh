#!/usr/bin/env bash

find tmp/*.docx -exec pandoc -r docx -w markdown \{} -o \{}.md \;

mv tmp/*.md ../data