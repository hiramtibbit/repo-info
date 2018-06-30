# `maven:3.5.4-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:7aa61c67985579ac222c1af600ff4e6f13158b1ed4aded0c22a3412fc3a869f6`
- Created: `2018-06-27T06:08:31.039649323Z`
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
