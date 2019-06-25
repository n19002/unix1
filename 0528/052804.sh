sudo ls -lR /var | grep -v ':$' | grep -v '^$' | awk '{print $9, $5}' | sort -k 2 -nr | head -n 5
