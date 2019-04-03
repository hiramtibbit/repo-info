# `maven:3.6.0-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:17e515e0818c8236bdeef017e3d873dc9542c69f845337dd1361d20df927badc`
- Created: `2019-04-02T23:03:29.692053332Z`
- Virtual Size: ~ 270.04 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp31`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
