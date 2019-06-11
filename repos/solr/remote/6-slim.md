## `solr:6-slim`

```console
$ docker pull solr@sha256:5c6bc6a49ce691c5ffe0e41ebb9ab3ef1e152f8def2f17bbe549b069d959af6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6-slim` - linux; amd64

```console
$ docker pull solr@sha256:e43da6a667cbff3879f803972e50d85c149ab5bbc4035286e59549bc766c44b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220088120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336a58e61e0d9e59bfb5e2b35b7f541e4ed8cc2f573e0cee594a8064da63ee6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:18:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:53 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:20:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:20:07 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:20:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:20:08 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:21:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Tue, 11 Jun 2019 07:21:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:21:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Tue, 11 Jun 2019 17:20:10 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 11 Jun 2019 17:20:10 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Tue, 11 Jun 2019 17:20:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 11 Jun 2019 17:20:22 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 17:20:23 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 17:20:23 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 17:20:23 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 11 Jun 2019 17:20:24 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Tue, 11 Jun 2019 17:20:28 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 11 Jun 2019 17:20:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Tue, 11 Jun 2019 17:20:43 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Tue, 11 Jun 2019 17:20:44 GMT
EXPOSE 8983
# Tue, 11 Jun 2019 17:20:44 GMT
WORKDIR /opt/solr
# Tue, 11 Jun 2019 17:20:44 GMT
USER solr
# Tue, 11 Jun 2019 17:20:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 17:20:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f08ce352c86de44048828a8c20f22011f46efd4d03cab7269354f97b131688`  
		Last Modified: Tue, 11 Jun 2019 07:23:33 GMT  
		Size: 2.9 MB (2905854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac271a34b404ba767f634cb690410caaec27aa4e5f1b1bc1c8b73ef11f343c0`  
		Last Modified: Tue, 11 Jun 2019 07:24:50 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba0eff2619227518a10d996a7be0abadb807b670019cec49d95ee300ae1d0fa`  
		Last Modified: Tue, 11 Jun 2019 07:25:50 GMT  
		Size: 40.4 MB (40377599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d905495f1898d882748ea20292ab9a6eb58a4e04142a22a9c5ea99f1c51b9d72`  
		Last Modified: Tue, 11 Jun 2019 17:27:00 GMT  
		Size: 5.9 MB (5871058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061d9f40a727edacf3ca7be0ddd13788091f43c94433ee636bd329021010d1f9`  
		Last Modified: Tue, 11 Jun 2019 17:26:56 GMT  
		Size: 4.3 KB (4292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24c7cc3a26ae4ca2b358b9cac31b12a12dd92f4bd55e7400ee7b767669e9441`  
		Last Modified: Tue, 11 Jun 2019 17:26:56 GMT  
		Size: 74.1 KB (74139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c22d15e265612474a2b19a5e50953fbd5df367cb35a075396772d78d57a1f5`  
		Last Modified: Tue, 11 Jun 2019 17:27:12 GMT  
		Size: 148.4 MB (148361428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfbe4a326b16297441f1446841953aa89f510cafe14608dc6da1d3b82441f94`  
		Last Modified: Tue, 11 Jun 2019 17:26:56 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
