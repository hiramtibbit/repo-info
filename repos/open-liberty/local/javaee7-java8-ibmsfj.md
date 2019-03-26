# `open-liberty:javaee7-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:8962dec3655bc1f59615b1a48b951c5171b08344880e808990d39a6b57d1c42e`
- Created: `2019-03-26T00:29:18.849127731Z`
- Virtual Size: ~ 339.90 Mb  
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
