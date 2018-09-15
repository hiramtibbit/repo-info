# `maven:3.5.4-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:635ddae1ce2f975bd0308c3ac0027bc79aa106b54825776b158b671986c2d76f`
- Created: `2018-09-12T03:44:18.875119623Z`
- Virtual Size: ~ 267.20 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp21`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`
