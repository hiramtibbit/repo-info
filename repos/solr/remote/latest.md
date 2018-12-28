## `solr:latest`

```console
$ docker pull solr@sha256:d00a069d777e85848565d2885d143e68c2767b083190958dc2a5961af0af11fc
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

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:1285ca1dab6b5ffe6122c76bf74d24a42eebeb9828b4d4729912391562227151
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.9 MB (366893286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197318a2cf543be5f225dd92946a76ba618cd71299966ff4e8d39ff33b93bfee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:31:53 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:31:53 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:31:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:31:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 00:23:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 01:04:48 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 28 Dec 2018 01:04:48 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 28 Dec 2018 01:04:54 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 01:04:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Dec 2018 01:04:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 28 Dec 2018 01:04:54 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 01:04:55 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 28 Dec 2018 01:04:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 28 Dec 2018 01:05:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Fri, 28 Dec 2018 01:05:10 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Fri, 28 Dec 2018 01:05:11 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 28 Dec 2018 01:05:11 GMT
EXPOSE 8983
# Fri, 28 Dec 2018 01:05:11 GMT
WORKDIR /opt/solr
# Fri, 28 Dec 2018 01:05:12 GMT
USER solr
# Fri, 28 Dec 2018 01:05:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 28 Dec 2018 01:05:12 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82a464a94a255e749944ca261ed491ab6a3db6a203f53dbf76f734ab9b2f491`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0528c41ab21c2be1fe8656e506819163feb0acbff020fcc29beaa72172c54a`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3222b055390f2eaf05b990df33ef8e7820a20156f528a955709691a8d76b7a3c`  
		Last Modified: Wed, 26 Dec 2018 08:39:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ceeef749aaa6c2d0d7afcc5e00601b9cf355fc1623799542d73ff906a27e52`  
		Last Modified: Fri, 28 Dec 2018 00:29:03 GMT  
		Size: 131.4 MB (131383436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14426226fe21dde237d8063e288045b7d1d15ea1f6c85a6b8429b9f4164f9200`  
		Last Modified: Fri, 28 Dec 2018 01:08:16 GMT  
		Size: 2.9 MB (2910317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954f1b0b9e93bcd65bde21c25983b6406d5bcb2209eb6fb0728aa3f898fa0e82`  
		Last Modified: Fri, 28 Dec 2018 01:08:14 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcec98da397c98714b7b5c0d86b9925d26eace5f509dd40399b998c235e9bd4f`  
		Last Modified: Fri, 28 Dec 2018 01:08:14 GMT  
		Size: 73.1 KB (73123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c0ca9a041a128a981d368d48ed8ab7ceb6c29ec1655799e4efdd2d21b07fe9`  
		Last Modified: Fri, 28 Dec 2018 01:08:27 GMT  
		Size: 171.3 MB (171259565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7fd010c2eb1f5e54fe91f48eacef02115465bd6972de58e134ac186b9b74e6`  
		Last Modified: Fri, 28 Dec 2018 01:08:14 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13136a983aa15425ba9d13ae357af3d8e4f9ad9783e1888438f07ae24e6da0e9`  
		Last Modified: Fri, 28 Dec 2018 01:08:14 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v5

```console
$ docker pull solr@sha256:6ed8a5c294f642590f6d00afb2501daecc67c660234450e0b2c7b4a647f9f758
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347591032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5428e832ffa2cdc9e6e583479f5ed9ba54f996c21a6f5b6dfc61e0cadcc8844a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:40:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:54:21 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:54:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:54:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:54:25 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:54:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:55:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:44:19 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 10:44:19 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 10:44:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:44:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:44:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 10:44:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 10:44:35 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 10:44:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 10:46:08 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 10:46:09 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 10:46:10 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 10:46:11 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 10:46:11 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 10:46:11 GMT
USER solr
# Wed, 26 Dec 2018 10:46:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:46:12 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3ec87c57f9cf33f41de82dee0e503ca8135f14dfeeacae2e2358b4d6ca3e38`  
		Last Modified: Fri, 16 Nov 2018 19:05:46 GMT  
		Size: 845.9 KB (845916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2cd809412d5312cc494043b8145059532a12edc1b17906e967b20430ea6f5a`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ed5811415371973ccdd060c98c03f5a33495426263a4e442511addae2fc1d1`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aac1768c1d6e183c7f11099b59b9f37fb0f219a4d6e947d3c3351ca0620169d`  
		Last Modified: Wed, 26 Dec 2018 10:05:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89f7946fc876087eb8769fc572d8f88d165313ddf84fbda6cd71bce387704a7`  
		Last Modified: Wed, 26 Dec 2018 10:05:35 GMT  
		Size: 114.5 MB (114523613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2484ee52d9dfe11d813fa4ac3d05a39aba522ae9e0cf27bc713c9b288a8c1b71`  
		Last Modified: Wed, 26 Dec 2018 11:06:11 GMT  
		Size: 2.9 MB (2884374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719f1f37703f51ba8e5216dc21aa122140151184d9bb4fa91a0e39437cc0f88b`  
		Last Modified: Wed, 26 Dec 2018 11:06:09 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976312315faf847e9f974b8cc1862edecd321a410a9db5775d9e79c4f3e552e5`  
		Last Modified: Wed, 26 Dec 2018 11:06:09 GMT  
		Size: 73.2 KB (73154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d2fec445a93e5b1d79212ea8a354555194093fb8f778164659e59137968954`  
		Last Modified: Wed, 26 Dec 2018 11:06:33 GMT  
		Size: 171.2 MB (171249710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364052080bd95867b8172c5e4e6e10f5b3d5295a946ad0230e331002e4a170d`  
		Last Modified: Wed, 26 Dec 2018 11:06:09 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2b9d0a5ba2d5625f0498144348ab6324e1d09b182fd1a0449eec3cc3e5f26e`  
		Last Modified: Wed, 26 Dec 2018 11:06:09 GMT  
		Size: 4.2 KB (4233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v7

```console
$ docker pull solr@sha256:3ddecf30458ef811e17c9a59a030bafd367b6b627d0f729066354df05c4641d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.4 MB (346366114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d881bca0228cd6d943a534650499ccdad69dada965b31fcab38bcf944df73f9c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 15:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:08:14 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:08:14 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:08:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:08:17 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:08:17 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:08:18 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:08:18 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 13:09:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:49:45 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 13:49:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 13:49:55 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:49:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 13:49:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 13:49:56 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 13:49:58 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 13:50:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 13:51:51 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 13:51:52 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 13:51:53 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 13:51:54 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 13:51:54 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 13:51:55 GMT
USER solr
# Wed, 26 Dec 2018 13:51:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 13:51:56 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832cab46ef49309eb9b4bf28f85a50155cdd61331d44fa4f6646a95d991cfb67`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 830.2 KB (830166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f0755528f14a31838bda938b593f120e0aa65c1f5db820ba6714dbfbef64a1`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cb0ade604d585c2a6ec82142572f4b7f8ecb46a8ea3e4ade5ce13468870ec9`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266cb7f573826cfcfcaf9b2e53771cbadc68c736fb766035f22877caf9667784`  
		Last Modified: Wed, 26 Dec 2018 13:22:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd25339b24d25a9c5e09dc7de2fbf6549242ceb79e654c82cc210b11b500f657`  
		Last Modified: Wed, 26 Dec 2018 13:22:48 GMT  
		Size: 116.0 MB (116013008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627a2208c903278ac1934483a93e5d0e2e9743763a84cbef3a35b8c8c68f61bd`  
		Last Modified: Wed, 26 Dec 2018 13:58:59 GMT  
		Size: 2.8 MB (2765520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ebd4199af3b2558ff8b08a11868233cd33fd9667520db57c7510ccbcce00ae`  
		Last Modified: Wed, 26 Dec 2018 13:58:57 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b956fcf77fee43cc137bc46d1b2612d02ea9874132a0fbd3bd8a824baf8277`  
		Last Modified: Wed, 26 Dec 2018 13:58:57 GMT  
		Size: 73.2 KB (73160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57dfb863957636aba7daad5d42fbc7557848fed1fdf42121b16e9c2b43d2b3b`  
		Last Modified: Wed, 26 Dec 2018 13:59:22 GMT  
		Size: 171.2 MB (171235937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd94a54bae0f3984bee436c608fb676740f39597712a6e953ea5b6467284bffe`  
		Last Modified: Wed, 26 Dec 2018 13:58:58 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840abe9367cac7eabc3bceb8c06a883f912638c6cd68f51c6ed70c17426c4b24`  
		Last Modified: Wed, 26 Dec 2018 13:58:57 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:fcca81d7d4262eb2aaf5b1f8c926759bb84e33a9af918ea0307c0056c42fb413
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.6 MB (353621207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77993de93ad93312ff6f08a03a16681ccea6761d32eecb0f427279e1d8694eeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:57:46 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:57:47 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:57:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:57:58 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:57:59 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:58:00 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:58:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 10:03:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 13:14:38 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 13:14:42 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 13:15:26 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:15:28 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 13:15:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 13:15:31 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 13:15:37 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 13:15:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 13:16:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 13:16:18 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 13:16:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 13:16:25 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 13:16:26 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 13:16:28 GMT
USER solr
# Wed, 26 Dec 2018 13:16:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 13:16:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b02d7a812edbd4222d270b83449b1b2fab3d0fcaee482af34bad9570fa6075f`  
		Last Modified: Wed, 26 Dec 2018 10:25:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669746daf09b78bdfc50c836e4b683d25c661eb0e41e1e9c46d22a0b12fa6ebd`  
		Last Modified: Wed, 26 Dec 2018 10:25:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef1a0216987408c1df6c57a20ad42f8c1f0b41b8e7abf3fea288bcda4642118`  
		Last Modified: Wed, 26 Dec 2018 10:25:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566dec95b59a0fb0bb37ce5e24ad5bc6e5da6d933975150a04cf5c801b0c2d7c`  
		Last Modified: Wed, 26 Dec 2018 10:26:27 GMT  
		Size: 121.8 MB (121764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e791d4a1c6df926540bbc14c7baa7b9cff238d2fca1487985d13b48cb3991c`  
		Last Modified: Wed, 26 Dec 2018 13:37:06 GMT  
		Size: 2.8 MB (2801192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45349deda0cd5ca102c3b8b32d2c8ece6acab6900ebafe3356d133e2990a84b9`  
		Last Modified: Wed, 26 Dec 2018 13:37:04 GMT  
		Size: 4.3 KB (4334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff60d6d489f3c0bfb4f483f1d4cdce23358154057cd92d2dd53c2a529d215e0`  
		Last Modified: Wed, 26 Dec 2018 13:37:04 GMT  
		Size: 73.1 KB (73138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbacd6bf4133637655137c077c0e8100f9b998f879390bcf4e9710c3632937b`  
		Last Modified: Wed, 26 Dec 2018 13:37:29 GMT  
		Size: 171.2 MB (171229301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e6a7f6ba51a72d909eb108e9a816606d5f5b120e3e97461721fa0e6d26cbf3`  
		Last Modified: Wed, 26 Dec 2018 13:37:03 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13dff11a6ab7407441dde42149666780dcaa950356e0e135b9b349bcfaf525b`  
		Last Modified: Wed, 26 Dec 2018 13:37:03 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; 386

```console
$ docker pull solr@sha256:474dafd07812ffc78f77a119b9ad60f4612ae5e4583ca6f7bca8f59baf16940f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.8 MB (372814300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c3ece61f539e93050b76618739d3294afac4405a69f9b02a81da3a8e8a1c6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 14:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:11:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:11:03 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:11:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:11:05 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:48:33 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 14:48:33 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 14:48:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 14:48:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 14:48:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 14:48:44 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 14:48:44 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 14:48:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 14:49:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 14:49:04 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 14:49:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 14:49:04 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 14:49:05 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 14:49:05 GMT
USER solr
# Wed, 26 Dec 2018 14:49:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:49:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9491f16a6eab2ae053d9a15c4981a5b4bb38a04c110334d7857871bb791776a0`  
		Last Modified: Sat, 17 Nov 2018 14:51:09 GMT  
		Size: 861.8 KB (861807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5866e72a71dbef5d6628e91fd27aca6b9ad2e47703034f9863e9a35397275586`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e85184362997e7a7d32aad56ba794c3a363642b1835a95dd0b9ebdd7a83902`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60847c966b253957f4eb305b952432fbb5d8ca1d48749b332d65ab8efed25b80`  
		Last Modified: Wed, 26 Dec 2018 12:17:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a18bb8809526803f2fc3b13afbc3e44f30313058d9920c43e2c76d6008cb37`  
		Last Modified: Wed, 26 Dec 2018 12:18:22 GMT  
		Size: 136.3 MB (136267336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befe77c4377f19393bbbabbbf22cd64db6fcb9a6a455f654e519d72255f532b`  
		Last Modified: Wed, 26 Dec 2018 14:55:42 GMT  
		Size: 3.0 MB (2990487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc4e557e3809869b9a2afc2e47ab5ff661fe75cb7891d1b249cf605bf59dd16`  
		Last Modified: Wed, 26 Dec 2018 14:55:41 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db53fefa7c9b4591b9807d596a5c52a4563b81492c4dc263edef06436e5d5d9`  
		Last Modified: Wed, 26 Dec 2018 14:55:41 GMT  
		Size: 73.1 KB (73124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78f34688349f6b246f0264dff39f2e4a13f726fb2fc6c4cbfbff0e6cd1bdd4c`  
		Last Modified: Wed, 26 Dec 2018 14:55:54 GMT  
		Size: 171.2 MB (171239148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f33a1649a950bca9df98c55e5d3a6d72214123f3d19edb6aa371eb81fb1f5a2c`  
		Last Modified: Wed, 26 Dec 2018 14:55:40 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8337a2cb6bf457c6d3c28c19ad2bc12d3d1157edf7ea8a972d77ae93a2d4a53`  
		Last Modified: Wed, 26 Dec 2018 14:55:40 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:ad0821ab0760b06d89b829e9cb2cc26c7192c943fa01136700e1388318de1047
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.2 MB (354248845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55751ae15db1b1f6905959f126494e17f6527a029329a2ee7035d4b9ed74d62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:47:33 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:47:36 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:47:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:47:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:47:50 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:47:52 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:47:56 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 09:51:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:38:22 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 11:38:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 11:38:51 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:38:52 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 11:38:55 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 11:38:56 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 11:39:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 11:39:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 11:40:44 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 11:40:49 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 11:40:56 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 11:40:59 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 11:41:02 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 11:41:05 GMT
USER solr
# Wed, 26 Dec 2018 11:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 11:41:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51220985dbe82fb45b09b0d7e58304fe3a7e02bc2437dde1d3be642906550bc0`  
		Last Modified: Fri, 16 Nov 2018 22:52:58 GMT  
		Size: 848.4 KB (848370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afbc3288120d961713d4b021a638af91c294c68d79f728d947219b2ca623e794`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715eb0a8cb64fa18b2887082d9c8bbbef62c601f93430c0c38f2ecd9e769cc68`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7a9da01d1ff49f9100bcb44248e869664ddcf31454efbd56049b20cc7d97dc`  
		Last Modified: Wed, 26 Dec 2018 10:08:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229a67f4672adf7b481affb9a6870ac65354168692b65c86b2c8498c8afcd29c`  
		Last Modified: Wed, 26 Dec 2018 10:09:18 GMT  
		Size: 119.3 MB (119319243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1284aeb3489702547927092e08196904314d1bd2c1c25715f672b4f203b539d1`  
		Last Modified: Wed, 26 Dec 2018 12:21:06 GMT  
		Size: 2.9 MB (2920845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e683bd9c2d940e8dba20142839c7261af5804749ae9bb0d6e3c2388c95984f`  
		Last Modified: Wed, 26 Dec 2018 12:21:00 GMT  
		Size: 4.3 KB (4299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c331c3e5edd8a90f75544eaafa3a4fd205647dedb98396854b5384ff1c83cf0`  
		Last Modified: Wed, 26 Dec 2018 12:21:00 GMT  
		Size: 73.2 KB (73186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812072feaa1d6155c495b92133aff4b7845e252fdc948b35da581174195c3a19`  
		Last Modified: Wed, 26 Dec 2018 12:21:25 GMT  
		Size: 171.2 MB (171228223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3817d64bf27a5d06f879ebdb53b9a3a30402b9fa61e24764ad624f6907b5e894`  
		Last Modified: Wed, 26 Dec 2018 12:21:00 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a8ba42e129342a43618f350517da470f9bae047feaf64c44796768e518df10`  
		Last Modified: Wed, 26 Dec 2018 12:21:00 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:4328b61d88373cfea714ebe0bdd70ebc5ac915436cef1cddcd1afb26a4e643b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.0 MB (353980811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29a448a60a1b8c3734df717b97240c6d2a4f51eddb9629137c07519598ead5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:55:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:51:31 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:51:31 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:51:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:51:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 12:52:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 14:04:39 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 26 Dec 2018 14:04:40 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 26 Dec 2018 14:04:45 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 14:04:45 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 14:04:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Dec 2018 14:04:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 26 Dec 2018 14:04:46 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 26 Dec 2018 14:04:48 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 26 Dec 2018 14:05:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 26 Dec 2018 14:05:00 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 26 Dec 2018 14:05:01 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 26 Dec 2018 14:05:01 GMT
EXPOSE 8983
# Wed, 26 Dec 2018 14:05:02 GMT
WORKDIR /opt/solr
# Wed, 26 Dec 2018 14:05:02 GMT
USER solr
# Wed, 26 Dec 2018 14:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:05:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ad8ee8ecfc3871934ef9388ebc64dd1e5ac78ba52af9446770667db20b150`  
		Last Modified: Fri, 16 Nov 2018 21:11:57 GMT  
		Size: 863.7 KB (863683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243784ea1fe13e0bfb598ca6140a4336e919d71dbf21f34de37070df078d4ffb`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f43e29f66ee1edd19a22bd65b78b1eb91be1a6e24566ea1593ffdf62885a46`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8569bfa1178db71bf32cbff142e1006f8dcb59797991a7d0fce6f51ae6e5e92`  
		Last Modified: Wed, 26 Dec 2018 12:57:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1b06dafcc4d989f0718f6b4f71cd7bf0e3210fc6d652a70d3a06b0d7fc4edd`  
		Last Modified: Wed, 26 Dec 2018 12:57:29 GMT  
		Size: 119.0 MB (119015336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591bbe07a8ab0ff0be96714a42745677b76ec03b938c3a16ba685e629c2bb948`  
		Last Modified: Wed, 26 Dec 2018 14:11:13 GMT  
		Size: 2.9 MB (2925083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649fefa34d94ea25412d482e8215672cac84313302efff8072a48cb63031d718`  
		Last Modified: Wed, 26 Dec 2018 14:11:12 GMT  
		Size: 4.3 KB (4333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbec8eeb9d762d75a53d10dd10faa320479dc8584706d2d819fcef29744584a`  
		Last Modified: Wed, 26 Dec 2018 14:11:12 GMT  
		Size: 73.1 KB (73119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e547785d9dd7fd169455aed991af145e742a513a711a95808d3f589d8af3902f`  
		Last Modified: Wed, 26 Dec 2018 14:11:23 GMT  
		Size: 171.2 MB (171245440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2893e1465b51090f54ac064ce81e7f7c406c8f52b1abb66694760f77c3929e`  
		Last Modified: Wed, 26 Dec 2018 14:11:12 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34de064cd4cd21b9b70dbd6685b1b61dadb611fda482e0a573872accd5061df`  
		Last Modified: Wed, 26 Dec 2018 14:11:12 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
