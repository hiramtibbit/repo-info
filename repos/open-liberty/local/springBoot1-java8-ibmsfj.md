# `open-liberty:springBoot1-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:1ca08e2664a8d5e8fd7584a4a6e2ba7cb8075960d866990bf91a651e8d1d96c0`
- Created: `2019-03-08T04:14:38.945852669Z`
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
