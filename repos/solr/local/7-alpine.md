# `solr:7.7.1-alpine`

## Docker Metadata

- Image ID: `sha256:0c97bdb47a880720c0e135da15f9ee78f8c143dcea19425d850bbf2c4ddb3fd2`
- Created: `2019-03-01T23:23:19.379342977Z`
- Virtual Size: ~ 300.19 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["solr-foreground"]`
- Environment:
  - `PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre`
  - `JAVA_VERSION=8u191`
  - `JAVA_ALPINE_VERSION=8.191.12-r0`
  - `SOLR_USER=solr`
  - `SOLR_UID=8983`
  - `SOLR_GROUP=solr`
  - `SOLR_GID=8983`
  - `SOLR_VERSION=7.7.1`
  - `SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz`
  - `SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4`
  - `SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C`
  - `GOSU_VERSION=1.11`
  - `GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4`
- Labels:
  - `maintainer=Martijn Koster "mak-docker@greenhills.co.uk"`
  - `repository=https://github.com/docker-solr/docker-solr`
