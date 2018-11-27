Docker Samplefile for a container that contains an IIS via which a simple HTML page is delivered.

# Note
Works only in Windows-Containern

# Create Docker Container
docker build --rm -f "Dockerfile" -t iis_spike:latest .

# Run Docker Container
docker run -d -p 8000:8000 iis_spike:latest

# Test
http://localhost:8000/index.html