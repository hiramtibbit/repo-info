# `maven:3.5.3-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:b48bb3a67e580bdf8094078e16d862afced408fedaf1599dccdd8a22a8d7df2a`
- Created: `2018-06-01T18:46:47.168762115Z`
- Virtual Size: ~ 269.46 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp16`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
