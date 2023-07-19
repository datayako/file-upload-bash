# file-upload-download-with-bash

A simple bash script to download files from a given URL and another script to upload files to a server using curl. Before running the upload script, make sure you have the appropriate permissions and credentials to access the server.


1. Download Files Bash Script (`download_files.sh`):

```bash
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
```

2. Upload Files Bash Script (`upload_files.sh`):

```bash
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
```

Make sure to make the scripts executable using the following commands:

```bash
chmod +x download_files.sh
chmod +x upload_files.sh
```

To download a file, run the `download_files.sh` script with appropriate arguments:

```bash
./download_files.sh "https://example.com/somefile.txt" "somefile.txt"
```

To upload a file, run the `upload_files.sh` script with appropriate arguments:

```bash
./upload_files.sh "local_file.txt" "https://example.com/upload"
```

Please note that the upload script uses a simple POST request with `curl`, assuming that the server accepts file uploads via form data. If your server requires more complex handling, you might need to modify the script accordingly or consider using a different tool for file uploads.