# `maven:3.5.4-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:ae985854e575b47c0f066006e671e7c1c81f90e40338859c8f650ae412376a8f`
- Created: `2018-08-13T22:51:30.900099741Z`
- Virtual Size: ~ 268.23 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp20`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
