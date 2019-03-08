# `open-liberty:javaee8-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:d44a4855e7af78eae0725449463ebe7a1fa9e3a65096da608c87d046b6f810f5`
- Created: `2019-03-08T04:11:31.675058027Z`
- Virtual Size: ~ 322.92 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/opt/ol/docker/docker-server"]`
- Command: `["/opt/ol/wlp/bin/server","run","defaultServer"]`
- Environment:
  - `PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp30`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `LOG_DIR=/logs`
  - `WLP_OUTPUT_DIR=/opt/ol/wlp/output`
  - `WLP_SKIP_MAXPERMSIZE=true`
  - `KEYSTORE_REQUIRED=true`
