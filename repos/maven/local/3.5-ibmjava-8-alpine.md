# `maven:3.5.4-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:526f1468e1c8c3836d1c8cf77fd0d4647dba3af2593403f8842a80f3146fa5aa`
- Created: `2018-09-05T21:43:28.331274771Z`
- Virtual Size: ~ 268.42 Mb  
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
