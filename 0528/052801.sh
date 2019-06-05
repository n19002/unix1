find /var -type f | xargs du | -exec du \{\}\; | sort -nr | head -n 5
