# `maven:3.6.0-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:a272531bc990ca6eb1c112b32f9789b8de39389f8eb7b88c560386b8fb9deb8e`
- Created: `2019-01-15T00:52:05.235400214Z`
- Virtual Size: ~ 267.75 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp27`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
