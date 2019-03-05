# `open-liberty:kernel-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:be3477d9cf6b263e63aa89b9c407b8ff5e0063b14bf69187ea76f03aa8e7577d`
- Created: `2019-03-05T00:46:03.347503634Z`
- Virtual Size: ~ 254.01 Mb  
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
