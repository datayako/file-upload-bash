#!/bin/bash

# Function to upload a file to a server using curl
function upload_file() {
    local local_file="$1"
    local destination_url="$2"

    echo "Uploading $local_file to $destination_url..."
    curl -F "file=@$local_file" "$destination_url"
}

# Example usage: upload_file "local_file_path" "destination_url"
# For multiple files, you can call the function with different local files and destination URLs.

# Example: Uploading a single file
# upload_file "local_file.txt" "https://example.com/upload"

# Example: Uploading multiple files
# upload_file "file1.txt" "https://example.com/upload"
# upload_file "file2.txt" "https://example.com/upload"
