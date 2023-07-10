#!/usr/bin/env python3
import subprocess

# Get the container start time
result = subprocess.run(['docker', 'inspect', '-f', '{{.State.StartedAt}}', 'web-server'], capture_output=True, text=True)
start_time = result.stdout.strip()

# Generate the HTML content
html = f'''
<html>
<body>
<h1>Docker is cool</h1>
<p>Container was started at {start_time}</p>
</body>
</html>
'''

# Print the HTML content
print(html)
