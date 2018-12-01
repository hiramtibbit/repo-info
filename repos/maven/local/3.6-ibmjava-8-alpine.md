# `maven:3.6.0-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:6930a76d3007c9d58e49f20797b43ca00623d32c703da451330b8f051811d8ec`
- Created: `2018-11-30T01:48:36.070803619Z`
- Virtual Size: ~ 267.71 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp26`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
