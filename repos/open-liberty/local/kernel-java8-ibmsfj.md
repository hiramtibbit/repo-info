# `open-liberty:kernel-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:73c26cb57eee03a55fe4de7514c8da9365ba93c0c729ca42536b2b8a99682538`
- Created: `2019-03-26T00:20:41.782762362Z`
- Virtual Size: ~ 254.03 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/opt/ol/helpers/runtime/docker-server.sh"]`
- Command: `["/opt/ol/wlp/bin/server","run","defaultServer"]`
- Environment:
  - `PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp30`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `LOG_DIR=/logs`
  - `WLP_OUTPUT_DIR=/opt/ol/wlp/output`
  - `WLP_SKIP_MAXPERMSIZE=true`
  - `RANDFILE=/tmp/.rnd`
  - `JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/`
  - `KEYSTORE_REQUIRED=true`
- Labels:
  - `github=https://github.com/OpenLiberty/ci.docker`
  - `maintainer=Arthur De Magalhaes`
  - `url=https://openliberty.io/`
  - `vendor=Open Liberty`
