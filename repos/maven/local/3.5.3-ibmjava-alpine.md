# `maven:3.5.3-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:c23ce59eb6744bfe5c2a1b1bf00d0147abf071760446d173f5e52014d7b49cc6`
- Created: `2018-06-12T01:52:33.543768628Z`
- Virtual Size: ~ 269.47 Mb  
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
