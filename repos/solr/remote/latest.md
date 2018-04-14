## `solr:latest`

```console
$ docker pull solr@sha256:7df0880b7460e356bf12bed71e690d99a9f1bfe73743906b02dcd77bf65fa953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; 386

### `solr:latest` - linux; 386

```console
$ docker pull solr@sha256:79332715d585b366d64281bb21c384e254b158274f7afa8b758aed1b1aa9c564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.0 MB (429993489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b89d53615c1559acc5c78b0c93e7f5ba72a4b1f37faf7d7cd6ef5a611a89295`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Mar 2018 15:19:02 GMT
ADD file:3a6a63b0b9425f04e46cf51ded918e18b0db615ed41661ca95b309dce2bd3ad1 in / 
# Tue, 27 Mar 2018 15:19:02 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:11:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:11:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:45:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:51:17 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:51:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:51:19 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:51:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:51:20 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 14 Apr 2018 02:51:20 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 14 Apr 2018 02:52:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 06:51:53 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 14 Apr 2018 06:51:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 14 Apr 2018 06:52:02 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 06:52:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 06:52:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 14 Apr 2018 06:52:05 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 14 Apr 2018 06:52:23 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 14 Apr 2018 06:52:23 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 14 Apr 2018 06:52:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 14 Apr 2018 06:52:24 GMT
EXPOSE 8983/tcp
# Sat, 14 Apr 2018 06:52:24 GMT
WORKDIR /opt/solr
# Sat, 14 Apr 2018 06:52:24 GMT
USER [solr]
# Sat, 14 Apr 2018 06:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Apr 2018 06:52:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e8960ddf567e95d313a33100aba08d2853543b56dc972c34d9b0560911085e99`  
		Last Modified: Thu, 15 Mar 2018 01:13:58 GMT  
		Size: 48.8 MB (48829003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1849e2a92f3800668a6ffe52032b9f784151381571639c66745a3510e1a2a4`  
		Last Modified: Fri, 13 Apr 2018 22:30:05 GMT  
		Size: 8.6 MB (8592465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecc172ef960d48b958d65a2fb24c557809479d8877b3346abe640dce556534`  
		Last Modified: Fri, 13 Apr 2018 22:30:04 GMT  
		Size: 9.4 MB (9387891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22d64a65417e920753fd42873267ed1fd3448eec7176366aceffd3e2cf4673a`  
		Last Modified: Sat, 14 Apr 2018 03:08:37 GMT  
		Size: 864.0 KB (864007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c731532a71ccad9b2073ad195f6174a58f3ab11cc62129f62d0401fae7b12e91`  
		Last Modified: Sat, 14 Apr 2018 03:13:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d226b72d1808354793a67b10053b9331d846d120e090e7ab6ab8d5da59b0585`  
		Last Modified: Sat, 14 Apr 2018 03:13:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74e0194bd3aa6c2d287e4898092867061ab9d5fc4209d45d238fd47821e244d`  
		Last Modified: Sat, 14 Apr 2018 03:14:31 GMT  
		Size: 199.3 MB (199349410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5954246d6b4d9c78b8988c088ba64d45c8247b18ffeea418e46f682d2e55f`  
		Last Modified: Sat, 14 Apr 2018 07:00:06 GMT  
		Size: 761.9 KB (761869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1ae52b09ffa587a3c6e11088023c4c3c5e3a4f9ac0663e158788ff4769ac56`  
		Last Modified: Sat, 14 Apr 2018 07:00:06 GMT  
		Size: 5.0 KB (5006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260433625eec510725f86938a184ad323ff0fa8d33b22f68a5e16ac2eb7a717c`  
		Last Modified: Sat, 14 Apr 2018 07:00:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bd1b3b253b08744ac4240bd2f72caceceab6c07996b816039552b1b4666e55`  
		Last Modified: Sat, 14 Apr 2018 07:00:20 GMT  
		Size: 162.2 MB (162192560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764d3a1c7c7bd2fd6d9a9427d46acbf3e2e8b6acf813ae07c69ba61a7b00ac0a`  
		Last Modified: Sat, 14 Apr 2018 07:00:05 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e170cd2b15b99d2756a5cf9864410dd9459dc0c7fd6e681739865e7d598055`  
		Last Modified: Sat, 14 Apr 2018 07:00:06 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
