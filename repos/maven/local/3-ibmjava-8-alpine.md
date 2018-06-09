# `maven:3.5.3-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:3e051c85f686116df1115fb6586571307775b0cf3af69b5587acc7980e55dcec`
- Created: `2018-06-06T22:46:10.994522166Z`
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
