# `maven:3.5.4-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:2f1e0b04c365547b7c0db0969d15d1b8d7b0d8dfc0e3eca44bfecade65e966a5`
- Created: `2018-06-22T17:26:59.773743611Z`
- Virtual Size: ~ 269.53 Mb  
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
