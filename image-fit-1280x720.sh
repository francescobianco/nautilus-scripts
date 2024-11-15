#!/bin/bash

# Verifica che un file sia passato come argomento
if [ -z "$1" ]; then
  echo "Utilizzo: $0 <file immagine>"
  exit 1
fi

# File di input
input_file="$1"

# Estrae nome file senza estensione e l'estensione
filename="${input_file%.*}"
extension="${input_file##*.}"

# Nome del file di output con la dimensione aggiunta
output_file="${filename}_1280x720.${extension}"

# Ridimensiona, centra e crop usando ImageMagick
convert "$input_file" -resize 1280x720^ -gravity center -extent 1280x720 "$output_file"

# Messaggio di conferma
echo "Immagine convertita e salvata come $output_file"
