# `open-liberty:webProfile7-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:6ed4502ff5ad8f2103de8f808f025de0c095f2ada93f9a94f63bc2f59e01713c`
- Created: `2019-03-08T04:13:16.116794115Z`
- Virtual Size: ~ 339.38 Mb  
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
