# Einleitung
Docker Samplefile für einen Container der einen IIS enthält über den eine einfache HTML Seite ausgeliefert wird.

# Anmerkungen
Läuft nur in Windows-Containern

# Create Docker Container
docker build --rm -f "Dockerfile" -t iis_spike:latest .

# Run Docker Container
docker run -d -p 8000:8000 iis_spike:latest

#Test
http://localhost:8000/index.html