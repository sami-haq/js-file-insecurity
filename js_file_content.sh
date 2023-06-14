#!/bin/bash

# Check if the input file is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

# Check if the input file exists
if [ ! -f "$1" ]; then
  echo "Input file not found: $1"
  exit 1
fi

# Create a directory to store the fetched files
output_dir="fetched_files"
mkdir -p "$output_dir"

# Read each line (URL) from the input file
while IFS= read -r url; do
  # Extract the last part of the URL as the file name
  file_name=$(basename "$url")

  # Fetch the content of the URL and save it to a file
  curl -s "$url" -o "$output_dir/$file_name"

  echo "Fetched: $url"
done < "$1"
