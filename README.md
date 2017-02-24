# Nexus

Nexus3 image which extends [sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3/) image. It fixes problem with setting heap size for Nexus.



## Run Nexus

To run image with default 1200 MB of memory use, it is not neccessary to use any arguments. For using different heap size, add arguments `-e JAVA_MIN_MEM=128m` and `-e JAVA_MAX_MEM=256m`.

```
docker run -d -p 8081:8081 --name nexus -e JAVA_MIN_MEM=128m -e JAVA_MAX_MEM=256m martinhorava/nexus3:latest
```

## Build project

```
docker build --rm -t martinhorava/nexus3:latest .
```