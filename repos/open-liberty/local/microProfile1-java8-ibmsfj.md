# `open-liberty:microProfile1-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:39bc365db8a9f7f70e1da48d4416b6551a6345d24817edd4dbc4e1b7c3ca7602`
- Created: `2019-04-03T22:23:38.355515368Z`
- Virtual Size: ~ 340.12 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/opt/ol/helpers/runtime/docker-server.sh"]`
- Command: `["/opt/ol/wlp/bin/server","run","defaultServer"]`
- Environment:
  - `PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp31`
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
