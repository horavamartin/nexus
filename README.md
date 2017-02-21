# Nexus

Nexus3 with maximal 256 MB of memory.

## Build project

```
docker build -t nexus3:latest .
```

## Run Nexus
```
docker run -d -p 8081:8081 --name nexus -e JAVA_MAX_MEM=1500m -e JAVA_MIN_MEM=1500m nexus3:latest
```

docker run -d -p 8081:8081 --name nexus -e JAVA_MAX_MEM=256M -e JAVA_MIN_MEM=128m nexus3:latest