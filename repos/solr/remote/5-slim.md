## `solr:5-slim`

```console
$ docker pull solr@sha256:6262acc575d384a8c49f0380b66673d31c5e38fa4df0ad9d1d3619f4e39de9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `solr:5-slim` - linux; amd64

```console
$ docker pull solr@sha256:14b9323cb13a162bdb40902e743eedf5a13f3ab671dda02a631e111c9217a6fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215729346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f188d518146de9161d82ddd1957311f6effd22f0b71ffb14ed4676fb316f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:17:38 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 28 Mar 2019 00:17:38 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Thu, 28 Mar 2019 00:17:38 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 28 Mar 2019 00:17:45 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:19:13 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:19:14 GMT
ENV GOSU_VERSION=1.11
# Thu, 28 Mar 2019 00:19:14 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 28 Mar 2019 00:19:16 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 28 Mar 2019 00:19:19 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 28 Mar 2019 00:19:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Thu, 28 Mar 2019 00:19:38 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Thu, 28 Mar 2019 00:19:38 GMT
EXPOSE 8983
# Thu, 28 Mar 2019 00:19:39 GMT
WORKDIR /opt/solr
# Thu, 28 Mar 2019 00:19:39 GMT
USER solr
# Thu, 28 Mar 2019 00:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:19:40 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d944e3d00df7bedd2f9a6aa678132a1fb785f7d56b16fdf24c22d5c7c3b7a1`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 454.9 KB (454886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009424738d11baed50ff14373dbd5384530a9f0cf2d5d78d444162b3010575b9`  
		Last Modified: Thu, 28 Mar 2019 00:21:42 GMT  
		Size: 4.0 MB (3974292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af1abe16e984fffcd1ea19576a37bb5ebe45f17da8391b710b86c571b53007`  
		Last Modified: Thu, 28 Mar 2019 00:22:28 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcec8592cd405d30bece8928c7e7010ace1256b11139ac81649f9a009f7f75d`  
		Last Modified: Thu, 28 Mar 2019 00:22:28 GMT  
		Size: 88.8 KB (88766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15540345f8df638df53b58a254ba06648331b4b5e8d16322ccdb0f22e7dba03`  
		Last Modified: Thu, 28 Mar 2019 00:22:38 GMT  
		Size: 132.8 MB (132820480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bd545b83acd1a36a5b6b57ac155e979566ca22296a69d84413f160235decc`  
		Last Modified: Thu, 28 Mar 2019 00:22:28 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:6d0d37c6636a39fb4d344d151af0ae8cda0a8fc640887b228df27ab770684d19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204848607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1673c6c3ac5d46292418e179db2252b6b213d198eb8d86c31462ec588bef155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:05:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:05:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:05:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:07:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 12:07:04 GMT
ENV JAVA_VERSION=8u181
# Wed, 27 Mar 2019 12:07:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 27 Mar 2019 12:07:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 16:59:04 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Mar 2019 16:59:04 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 27 Mar 2019 16:59:05 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Mar 2019 16:59:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:00:53 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 17:00:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 17:00:54 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 27 Mar 2019 17:00:55 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Mar 2019 17:00:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Mar 2019 17:02:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 27 Mar 2019 17:02:13 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 27 Mar 2019 17:02:14 GMT
EXPOSE 8983
# Wed, 27 Mar 2019 17:02:14 GMT
WORKDIR /opt/solr
# Wed, 27 Mar 2019 17:02:15 GMT
USER solr
# Wed, 27 Mar 2019 17:02:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:02:16 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f184019a96fee337c84a360b1e91acc9c23da4c079fff811b4063c86f948174`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 447.7 KB (447747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8cd2997515211b07b46ad7c489c674b0bc97d1df09588ab2f9963460d643b51`  
		Last Modified: Wed, 27 Mar 2019 12:23:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fbfcae4e9de3c126a4d1d2f1cc0dff41d9c4c2444c6d9e6b9ee756d626e0c`  
		Last Modified: Wed, 27 Mar 2019 12:23:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b546e793d4f53cb9c115b3f28c7e34c0d81f74cadb6735a2c3c157c510189d`  
		Last Modified: Wed, 27 Mar 2019 12:23:16 GMT  
		Size: 46.6 MB (46583496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd342e357d6de3628bd9b0c32b6b085068b5b92928011cda181de1ba6e16c51`  
		Last Modified: Wed, 27 Mar 2019 17:06:31 GMT  
		Size: 3.8 MB (3778578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5237008f1a5a855de421463769a22cf90d7c3b3d542759f0a65711fd231d8e42`  
		Last Modified: Wed, 27 Mar 2019 17:07:00 GMT  
		Size: 4.2 KB (4220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb54775d1b861a07cb584740e4aac8ef739806685bf0f0c3a063dd0bcd3bad9`  
		Last Modified: Wed, 27 Mar 2019 17:06:59 GMT  
		Size: 88.8 KB (88803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36ce38d6bae60ff98be5b0592d114cfeb81d126c703d413a3c7e4990dcbd67b`  
		Last Modified: Wed, 27 Mar 2019 17:07:18 GMT  
		Size: 132.8 MB (132780462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9f539b045b4eec788ead42d83945479df680113fd444af8de09033e1dcd5de`  
		Last Modified: Wed, 27 Mar 2019 17:07:00 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:d015ed48f81e883d853c71bb0784b36e3bb1b4ff37a7495ad7e8e2dfbb0a86e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202064058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f84f0881d1c396e570dd786f2d0c0dde27b84ea4e0e150797e6babc4cd9cd88`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:56:58 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:56:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 14:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 14:58:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 14:58:02 GMT
ENV JAVA_VERSION=8u181
# Wed, 27 Mar 2019 14:58:02 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 27 Mar 2019 14:59:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 17:55:33 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Mar 2019 17:55:33 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 27 Mar 2019 17:55:34 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Mar 2019 17:55:47 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:57:21 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 17:57:21 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 17:57:21 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 27 Mar 2019 17:57:24 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Mar 2019 17:57:28 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Mar 2019 17:58:54 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 27 Mar 2019 17:58:55 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 27 Mar 2019 17:58:55 GMT
EXPOSE 8983
# Wed, 27 Mar 2019 17:58:56 GMT
WORKDIR /opt/solr
# Wed, 27 Mar 2019 17:58:57 GMT
USER solr
# Wed, 27 Mar 2019 17:58:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 17:58:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888f20f45f0d3a93af43fe90bc4fc53f8cc5b16e2aadd9293c17d5240834576`  
		Last Modified: Wed, 27 Mar 2019 15:18:13 GMT  
		Size: 430.6 KB (430598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d674838132a5a5385f8853a4b8a7552c8974e29f5510f132faf0108233dd9e7`  
		Last Modified: Wed, 27 Mar 2019 15:18:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d896a11dd7a1ed1ad83271ad576dbe4013f2a9f45dc422703c439e9e9c9d7208`  
		Last Modified: Wed, 27 Mar 2019 15:18:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857e96945987a3ab1d307e2b3e89198421c481a46015a7989e257df0201b551`  
		Last Modified: Wed, 27 Mar 2019 15:18:27 GMT  
		Size: 46.0 MB (45990926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef57039c5cf5104e56295ebe79176277e7ccfbdee3cb098c0389764f02e15074`  
		Last Modified: Wed, 27 Mar 2019 17:59:28 GMT  
		Size: 3.5 MB (3490033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e0966167f474b2b7c7e015579abee129d7fdf8acb8d789830869de54e3e41e`  
		Last Modified: Wed, 27 Mar 2019 18:00:03 GMT  
		Size: 4.2 KB (4221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196d92a81722ae73e33d5afac11b8ab1f855edd1cf371b5602fdef3df4add308`  
		Last Modified: Wed, 27 Mar 2019 18:00:03 GMT  
		Size: 88.8 KB (88802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bec679c629d105794b9632cab1ab72e20e149cdeb031cbb9911e2395ee843f`  
		Last Modified: Wed, 27 Mar 2019 18:00:24 GMT  
		Size: 132.8 MB (132772401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4a9936649c5843b9f51e930bc68f8d71e0aae294b0d1453c9e7489f471a829`  
		Last Modified: Wed, 27 Mar 2019 18:00:03 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:8508f333e0cfbf47a673e812310f2404e0f944cde31688a0471c5ba3150652d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205305763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3013acba69f7bd69c2e3800c5da00f04e4b89526b72488b5022080cec17f0d6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:18:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:28:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:28:17 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:28:24 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:31:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Feb 2019 12:52:09 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Feb 2019 12:52:09 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 13 Feb 2019 12:52:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Feb 2019 12:52:45 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 13 Feb 2019 12:59:37 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Feb 2019 12:59:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Feb 2019 12:59:38 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 13 Feb 2019 12:59:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 13 Feb 2019 12:59:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Feb 2019 13:00:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 13 Feb 2019 13:00:13 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 13 Feb 2019 13:00:14 GMT
EXPOSE 8983
# Wed, 13 Feb 2019 13:00:14 GMT
WORKDIR /opt/solr
# Wed, 13 Feb 2019 13:00:15 GMT
USER solr
# Wed, 13 Feb 2019 13:00:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 13:00:16 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857c9abd17ad597c20509970fbf55c7260550d870bd68c188e4aef3de5e7e24`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 440.9 KB (440887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af475183dd776a3bc6f1848588e7bed68865d8ed0a3b9d7443228cabd1a92cf3`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efcd9790a6dbfb5bc228474fdafa0870db0d257c606550c02ec06fee85650f2`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed8efee4b97b2c8150a89a35adaa4a0cd72bdfa37ea59837f5cdf302091dd43`  
		Last Modified: Wed, 06 Feb 2019 12:44:34 GMT  
		Size: 48.0 MB (48015709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b51a1b4d30aa44be56350b2e3cd6ff377e89917cdbd91930ceb72d5168b28e7`  
		Last Modified: Wed, 13 Feb 2019 13:12:17 GMT  
		Size: 3.6 MB (3646104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfe39d919f2dbb923e15949adf1806de8879b1a03e0c827c7f8cf022c6c79b1`  
		Last Modified: Wed, 13 Feb 2019 13:17:14 GMT  
		Size: 4.3 KB (4334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37f03c03c8c0ae9e000e21490db7dd129ca1bf532c5e1bdf65e57a31f0b0a53`  
		Last Modified: Wed, 13 Feb 2019 13:17:14 GMT  
		Size: 88.8 KB (88769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7598e6e7197ed4a97b06e4c969913918bd8441a91d61db7a342302efc795a3fd`  
		Last Modified: Wed, 13 Feb 2019 13:17:35 GMT  
		Size: 132.8 MB (132755195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a6beb1746bfe219726a13e76426f1587f85c9e46db2e4f6210a95a7be6351c`  
		Last Modified: Wed, 13 Feb 2019 13:17:14 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; 386

```console
$ docker pull solr@sha256:194cbf742b712804e505e1647f80b86ff7d8884ad102b8de6283aecaf60a7a10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216079598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be78a25dfda5d8fe85ef6f09784849dec3834ab7bee3e7aeedc9f4add3c66fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:06:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 17:06:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 17:06:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 17:07:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 17:07:00 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 17:07:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 17:07:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 00:29:49 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 06 Mar 2019 00:29:49 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 06 Mar 2019 00:29:50 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 06 Mar 2019 00:29:57 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 00:30:30 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 00:30:30 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Mar 2019 00:30:30 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 06 Mar 2019 00:30:31 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 06 Mar 2019 00:30:34 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 06 Mar 2019 00:30:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 06 Mar 2019 00:30:49 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 06 Mar 2019 00:30:50 GMT
EXPOSE 8983
# Wed, 06 Mar 2019 00:30:50 GMT
WORKDIR /opt/solr
# Wed, 06 Mar 2019 00:30:50 GMT
USER solr
# Wed, 06 Mar 2019 00:30:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Mar 2019 00:30:50 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b06ce80122efda7e25322475d460635ab000deda54dfc1fff4b70841c791c`  
		Last Modified: Tue, 05 Mar 2019 17:18:17 GMT  
		Size: 463.5 KB (463541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77eb7233c56af916b52013392131c40f4af7d65425eb931c52b7024ab25339a1`  
		Last Modified: Tue, 05 Mar 2019 17:19:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01218695064ac9b69b96ca92a9a8419c94b861dd26e34218ef938ef0163ac2d4`  
		Last Modified: Tue, 05 Mar 2019 17:19:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2b996e9e991c231dc7d66c273eeef03da608fce006393249ee0ece06908a24`  
		Last Modified: Tue, 05 Mar 2019 17:20:01 GMT  
		Size: 55.4 MB (55392681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc076a500c0849ad99bc97c9eff6718f59ad1ff436709e0be6268a39c007a56`  
		Last Modified: Wed, 06 Mar 2019 00:32:14 GMT  
		Size: 4.2 MB (4212774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad49c1cc3fa89226bc840e89dc5a4dc050abf500ed6d3e9524df62831ab1f8f`  
		Last Modified: Wed, 06 Mar 2019 00:32:31 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d706a976776db5e770562f3fba0d515b21e7932ab4e92796775b681790a415`  
		Last Modified: Wed, 06 Mar 2019 00:32:31 GMT  
		Size: 88.8 KB (88769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab9415aa3c4c7676a06b3e8dec02fa8447759437e9b64714e25e1a6023eac9`  
		Last Modified: Wed, 06 Mar 2019 00:32:42 GMT  
		Size: 132.8 MB (132787319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c610ce4f07036a99054b957e5e4a0f6e878e63cf949d17c4115a1a07726ed`  
		Last Modified: Wed, 06 Mar 2019 00:32:30 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:246bddc04b38cb22f41164f1742775864a70f4d420747e218130de9538defa04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208465222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a479dee9aa641a2a6fff5558eaad7f6bfa997a3e98d92797e8e10b2431286dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 12:49:15 GMT
ENV JAVA_VERSION=8u181
# Wed, 27 Mar 2019 12:49:19 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 27 Mar 2019 12:51:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 20:09:24 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Mar 2019 20:09:26 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 27 Mar 2019 20:09:28 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Mar 2019 20:09:58 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:12:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 20:12:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 20:12:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 27 Mar 2019 20:12:25 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Mar 2019 20:12:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Mar 2019 20:13:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 27 Mar 2019 20:13:52 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 27 Mar 2019 20:13:53 GMT
EXPOSE 8983
# Wed, 27 Mar 2019 20:13:55 GMT
WORKDIR /opt/solr
# Wed, 27 Mar 2019 20:13:57 GMT
USER solr
# Wed, 27 Mar 2019 20:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 20:14:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945fa8d0ebb59b7a9080958527a126b684d68ce1af2c32555975da70823c1d6`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 449.8 KB (449831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234690687d04ae2a2aff7cb35a154b093d786af5f9fec4ada6d747c9c192e84a`  
		Last Modified: Wed, 27 Mar 2019 12:59:51 GMT  
		Size: 48.5 MB (48475396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366caf108ddd0cf0f8543e576e46b8c65fe0ec99aa16715fe87c1140f5d12535`  
		Last Modified: Wed, 27 Mar 2019 21:45:21 GMT  
		Size: 3.9 MB (3947096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd0640fcdfef5845db8fd682861102c86709b4ee678f9496211c1fd2c182b1a`  
		Last Modified: Wed, 27 Mar 2019 21:57:00 GMT  
		Size: 4.3 KB (4300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa7bbc18c1e7527def5fa4cf22d01f092c4a9a2b63b587f6dfc9ec3d41142e`  
		Last Modified: Wed, 27 Mar 2019 21:57:00 GMT  
		Size: 88.8 KB (88803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd53c7752f66e5013a34fc874dd2141e7c8d45bc8d864ce268c07e148cb549b`  
		Last Modified: Wed, 27 Mar 2019 22:08:29 GMT  
		Size: 132.7 MB (132743774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3b3ce7fd97205bf39694017dba3bcd9e339d9fd488369f2dff3bfe146c97e8`  
		Last Modified: Wed, 27 Mar 2019 21:57:01 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; s390x

```console
$ docker pull solr@sha256:bec8deca1be804b6110d0140185909cdf9cef877a5e7c668c8b30616a1a5c245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207439250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8046e80a9e43c58e90c50dcdc25a2181f9b98c13c92e454f7fd12fa9afb43f3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:27:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:27:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:27:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:28:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 15:28:09 GMT
ENV JAVA_VERSION=8u181
# Wed, 27 Mar 2019 15:28:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 27 Mar 2019 15:28:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 20:35:11 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Mar 2019 20:35:12 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 27 Mar 2019 20:35:12 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Mar 2019 20:35:19 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:35:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 20:35:54 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 20:35:54 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 27 Mar 2019 20:35:55 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 27 Mar 2019 20:35:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 27 Mar 2019 20:36:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 27 Mar 2019 20:36:18 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 27 Mar 2019 20:36:19 GMT
EXPOSE 8983
# Wed, 27 Mar 2019 20:36:19 GMT
WORKDIR /opt/solr
# Wed, 27 Mar 2019 20:36:19 GMT
USER solr
# Wed, 27 Mar 2019 20:36:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 20:36:19 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873fe20cf16e09acaa32a84770546a724019d27f9da4b456666341fadae1ea88`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 465.8 KB (465770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445408b0902c2419b7cc3d1762ee0bc078d31c2d81f29966541fec2914ebe400`  
		Last Modified: Wed, 27 Mar 2019 15:32:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bc0dd8dea0f699a84937a5b9a07cc30cd2ab90383d1893ca850f6110f7a5b9`  
		Last Modified: Wed, 27 Mar 2019 15:32:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c9069bbfa8903ae7c05fc6ee7afab5effb3d4a2e0ce9f5f754cdc1a942edd`  
		Last Modified: Wed, 27 Mar 2019 15:32:31 GMT  
		Size: 47.7 MB (47686145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c51a73bb72b49c95ea6fe0c26f06981aa054fe042464f46e6f3d443bc3418`  
		Last Modified: Wed, 27 Mar 2019 20:38:46 GMT  
		Size: 4.0 MB (4034945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a78050aa253b3d6719c235aee54f6f2f57af03fd0756830704532610de955c2`  
		Last Modified: Wed, 27 Mar 2019 20:39:02 GMT  
		Size: 4.3 KB (4325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2707c464f1749f75296cae9c99482833ce0038c18e6ff86d228586312219986e`  
		Last Modified: Wed, 27 Mar 2019 20:39:02 GMT  
		Size: 88.8 KB (88764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b800ac545fabd17c9c2d24961abd17b7290a5a30027ad1be48a9acc187500f`  
		Last Modified: Wed, 27 Mar 2019 20:39:11 GMT  
		Size: 132.8 MB (132809409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac65445b2c8da317b581f5a5117620298b9df2d7a5c4a0073b2d6234e8c9a5c6`  
		Last Modified: Wed, 27 Mar 2019 20:39:02 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
