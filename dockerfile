# Dockerfile
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y g++ make

# Maak een werkmap
WORKDIR /app

# Kopieer je C++ code en HTML file
COPY server.cpp .
COPY index.html .

# Compileer het programma
RUN g++ server.cpp -o server

# Poort openzetten
EXPOSE 8080

# Run het programma
CMD ["./server"]
