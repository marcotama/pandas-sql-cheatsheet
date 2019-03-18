#!/usr/bin/env bash

DOCUMENT=cheatsheet


echo -n "Generating HTML..."
asciidoctor -a stylesheet=asciidoctor.css -a stylesdir=styles/ "${DOCUMENT}.adoc" -o "${DOCUMENT}.html" --trace
echo " Done"


#echo -n "Generating DOCX..."
#pandoc -f html -s "${DOCUMENT}.html" -t docx -o "${DOCUMENT}.docx"
#echo " Done"

#echo -n "Generating PDF..."
#asciidoctor-pdf -a pdf-stylesdir=styles/ -a pdf-style=basic -a pdf-fontsdir=fonts/ "${DOCUMENT}.adoc"
#echo " Done"
