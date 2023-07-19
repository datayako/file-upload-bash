#!/bin/bash

# Function to download a file from a given URL
function download_file() {
    local url="$1"
    local filename="$2"

    echo "Downloading $filename..."
    curl -L -o "$filename" "$url"
}

# Example usage: download_file "URL" "output_filename"
# For multiple files, you can call the function with different URLs and filenames.

# Example: Downloading a single file
# download_file "https://example.com/somefile.txt" "somefile.txt"

# Example: Downloading multiple files
# download_file "https://example.com/file1.txt" "file1.txt"
# download_file "https://example.com/file2.txt" "file2.txt"
