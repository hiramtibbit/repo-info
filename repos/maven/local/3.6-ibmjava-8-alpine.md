# `maven:3.6.0-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:0a098f320657c85f32d7985ae648263261361fb97ce3bcadae14ca938a4dd0ab`
- Created: `2019-03-05T00:57:13.021124322Z`
- Virtual Size: ~ 270.12 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp30`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
