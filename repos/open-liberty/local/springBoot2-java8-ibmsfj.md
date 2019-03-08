# `open-liberty:springBoot2-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:fad52a14482036ed701033b033f239a912b82b680f1e00509c7d1fc37c538e5d`
- Created: `2019-03-08T04:12:43.108568676Z`
- Virtual Size: ~ 338.66 Mb  
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
- Labels:
  - `github=https://github.com/OpenLiberty/ci.docker`
  - `maintainer=Alasdair Nottingham`
  - `url=https://openliberty.io/`
  - `vendor=Open Liberty`
