## `solr:7-alpine`

```console
$ docker pull solr@sha256:f92e2ad8ea0924122a6f45f33ea9486d8e4235c561160afdb3a4408c2e8326fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:856d01f65defde8ff6636c58fe77f465d2e641c1d52ae3b4fb2999d45df01f8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233845153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff498aae7f6173299e9c0e0866b88804b27d11d5a15dd8dc98b539e7add037b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 04:46:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 12 Sep 2018 04:46:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 12 Sep 2018 04:46:15 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 12 Sep 2018 04:46:16 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 24 Sep 2018 22:20:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 24 Sep 2018 22:20:34 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Sep 2018 22:20:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 24 Sep 2018 22:20:34 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Mon, 24 Sep 2018 22:20:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Sep 2018 22:20:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Mon, 24 Sep 2018 22:20:52 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Mon, 24 Sep 2018 22:20:53 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Mon, 24 Sep 2018 22:20:53 GMT
EXPOSE 8983/tcp
# Mon, 24 Sep 2018 22:20:53 GMT
WORKDIR /opt/solr
# Mon, 24 Sep 2018 22:20:53 GMT
USER [solr]
# Mon, 24 Sep 2018 22:20:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Sep 2018 22:20:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af84ecf48298111086caa876f2c336d74ab50d079f5533bb3913f2aa16705a1f`  
		Last Modified: Wed, 12 Sep 2018 04:50:29 GMT  
		Size: 7.1 MB (7118912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f37ec15eb12aa781c6d612d84128781f58c15fcd9ba71142e07e5b1e1f6f1ce`  
		Last Modified: Wed, 12 Sep 2018 04:50:26 GMT  
		Size: 588.0 KB (587953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a6f57e914c9d492271360ec0351546dda1cd580ced857aee6b2e802021c621`  
		Last Modified: Mon, 24 Sep 2018 22:24:17 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b5b8ee203d7a18d8fe1839a9928c688c4077d9182d10526678e2546c65a4d6`  
		Last Modified: Mon, 24 Sep 2018 22:24:17 GMT  
		Size: 75.5 KB (75490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b8f0e3af1656becc7e52ca40d36ac10899e0a57f94ac861a0757797cc451ae`  
		Last Modified: Mon, 24 Sep 2018 22:24:31 GMT  
		Size: 169.0 MB (169047645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252e8b3bb5a349cfafc8ea3c58198c32c9a3821c9a7fbd244c52a7f8170e1c29`  
		Last Modified: Mon, 24 Sep 2018 22:24:17 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d058f66ff8e8ac199cf6b2d98965773bf565a0f82f56aeadbcf8358c477e0b77`  
		Last Modified: Mon, 24 Sep 2018 22:24:17 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:535f25502fc87cd3a94bfc0edcdc0414f7d5f77645a685511ca604a9b91acd67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230890725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5019f63b129e8425b29e61e65bd75abc064de71b72de451bed2c514e12134031`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:28:56 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:28:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 08:29:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 08:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 08:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 09:01:00 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 12 Sep 2018 09:01:00 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 12 Sep 2018 09:01:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 12 Sep 2018 09:01:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 25 Sep 2018 07:52:30 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 25 Sep 2018 07:52:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 07:52:31 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 07:52:32 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 25 Sep 2018 07:52:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 07:54:06 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 07:54:08 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 07:54:08 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 07:54:09 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 07:54:09 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 07:54:09 GMT
USER [solr]
# Tue, 25 Sep 2018 07:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 07:54:10 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5330a9c830688a5533553fc6f68b39796b550d1e9e2adec9da6321849c3091f`  
		Last Modified: Wed, 12 Sep 2018 08:30:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00747677db18ac2063a80d62c65eb527d42e50b3d18451ed46e66a4695c28ce1`  
		Last Modified: Wed, 12 Sep 2018 08:31:08 GMT  
		Size: 52.3 MB (52277680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa390c48bbf0012549984b7b5abb962459278d8f1832a022a423d0c89f404cf5`  
		Last Modified: Sat, 15 Sep 2018 09:55:36 GMT  
		Size: 6.8 MB (6780485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d48cb4a1123e8b5a6b15fb0cb79999bdf51ae65ecd058d7ecd322832eeef9`  
		Last Modified: Sat, 15 Sep 2018 09:55:33 GMT  
		Size: 578.0 KB (577976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0ed47f1c879dd0fb5f44db95414f9fe14deafc75a3dc5f995beada9ba4e196`  
		Last Modified: Tue, 25 Sep 2018 07:55:06 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16f686c75523038a925a151f7cb06e5beb6e4cd05de930fea8357b4253df5f9`  
		Last Modified: Tue, 25 Sep 2018 07:55:02 GMT  
		Size: 75.5 KB (75523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3cd8913fdb0fe6acb33e618a9de9da9028572a6ed87292d02c3d086e784c4e`  
		Last Modified: Tue, 25 Sep 2018 07:55:23 GMT  
		Size: 169.0 MB (169022419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809d34245e27ff1260efbe7c58611eb9611f97fea0de8373758061309d3a52e`  
		Last Modified: Tue, 25 Sep 2018 07:55:02 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ae02e4737f20b07605bade3080bb648241b584b91b436a032340ae01c9930`  
		Last Modified: Tue, 25 Sep 2018 07:55:02 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
