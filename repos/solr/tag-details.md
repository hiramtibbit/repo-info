<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5`](#solr5)
-	[`solr:5.5`](#solr55)
-	[`solr:5.5.5`](#solr555)
-	[`solr:5.5.5-slim`](#solr555-slim)
-	[`solr:5.5-slim`](#solr55-slim)
-	[`solr:5-slim`](#solr5-slim)
-	[`solr:6`](#solr6)
-	[`solr:6.6`](#solr66)
-	[`solr:6.6.6`](#solr666)
-	[`solr:6.6.6-slim`](#solr666-slim)
-	[`solr:6.6-slim`](#solr66-slim)
-	[`solr:6-slim`](#solr6-slim)
-	[`solr:7`](#solr7)
-	[`solr:7.5`](#solr75)
-	[`solr:7.5.0`](#solr750)
-	[`solr:7.5.0-slim`](#solr750-slim)
-	[`solr:7.5-slim`](#solr75-slim)
-	[`solr:7.6`](#solr76)
-	[`solr:7.6.0`](#solr760)
-	[`solr:7.6.0-slim`](#solr760-slim)
-	[`solr:7.6-slim`](#solr76-slim)
-	[`solr:7.7`](#solr77)
-	[`solr:7.7.2`](#solr772)
-	[`solr:7.7.2-slim`](#solr772-slim)
-	[`solr:7.7-slim`](#solr77-slim)
-	[`solr:7-slim`](#solr7-slim)
-	[`solr:8`](#solr8)
-	[`solr:8.0`](#solr80)
-	[`solr:8.0.0`](#solr800)
-	[`solr:8.0.0-slim`](#solr800-slim)
-	[`solr:8.0-slim`](#solr80-slim)
-	[`solr:8.1`](#solr81)
-	[`solr:8.1.1`](#solr811)
-	[`solr:8.1.1-slim`](#solr811-slim)
-	[`solr:8.1-slim`](#solr81-slim)
-	[`solr:8-slim`](#solr8-slim)
-	[`solr:latest`](#solrlatest)
-	[`solr:slim`](#solrslim)

## `solr:5`

```console
$ docker pull solr@sha256:fe3ca23adc48869b9a39e0afb1d77b9f7a8cb3cbdcd125864a7bfddaaa7ab1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

```console
$ docker pull solr@sha256:c184d3d109928c5527de740de25ba6ce7c64c2d27a93e9ff0627f3c7b0f218e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240050346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ecfbe718cb06379bde52264f4c375c3d30e9f8c9f4bccaa025047eed3cfd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:53 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:53 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:53 GMT
USER solr
# Wed, 05 Jun 2019 23:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8c5400afe5c49c1dd114d7fe69f7ea76dc077d36a798b6b77e4e1c657bc7`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.3 KB (4299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e802c5a2c4fa6b238c4bb2b81d56b11c3b4a052407a6dc8dee51468c959554`  
		Last Modified: Wed, 05 Jun 2019 23:25:05 GMT  
		Size: 88.8 KB (88763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82efc62cef70cdf4b5df68186257f7f91f7b4f3e348be0a13fe028e6c39412a2`  
		Last Modified: Wed, 05 Jun 2019 23:25:15 GMT  
		Size: 132.8 MB (132820042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185fb924cbf558c3d840d88e1cdc9618d40e77f3101042b5b15883d8fbe3a72c`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:fe3ca23adc48869b9a39e0afb1d77b9f7a8cb3cbdcd125864a7bfddaaa7ab1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

```console
$ docker pull solr@sha256:c184d3d109928c5527de740de25ba6ce7c64c2d27a93e9ff0627f3c7b0f218e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240050346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ecfbe718cb06379bde52264f4c375c3d30e9f8c9f4bccaa025047eed3cfd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:53 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:53 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:53 GMT
USER solr
# Wed, 05 Jun 2019 23:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8c5400afe5c49c1dd114d7fe69f7ea76dc077d36a798b6b77e4e1c657bc7`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.3 KB (4299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e802c5a2c4fa6b238c4bb2b81d56b11c3b4a052407a6dc8dee51468c959554`  
		Last Modified: Wed, 05 Jun 2019 23:25:05 GMT  
		Size: 88.8 KB (88763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82efc62cef70cdf4b5df68186257f7f91f7b4f3e348be0a13fe028e6c39412a2`  
		Last Modified: Wed, 05 Jun 2019 23:25:15 GMT  
		Size: 132.8 MB (132820042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185fb924cbf558c3d840d88e1cdc9618d40e77f3101042b5b15883d8fbe3a72c`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.5`

```console
$ docker pull solr@sha256:fe3ca23adc48869b9a39e0afb1d77b9f7a8cb3cbdcd125864a7bfddaaa7ab1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5.5` - linux; amd64

```console
$ docker pull solr@sha256:c184d3d109928c5527de740de25ba6ce7c64c2d27a93e9ff0627f3c7b0f218e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240050346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ecfbe718cb06379bde52264f4c375c3d30e9f8c9f4bccaa025047eed3cfd6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:53 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:53 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:53 GMT
USER solr
# Wed, 05 Jun 2019 23:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8c5400afe5c49c1dd114d7fe69f7ea76dc077d36a798b6b77e4e1c657bc7`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.3 KB (4299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e802c5a2c4fa6b238c4bb2b81d56b11c3b4a052407a6dc8dee51468c959554`  
		Last Modified: Wed, 05 Jun 2019 23:25:05 GMT  
		Size: 88.8 KB (88763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82efc62cef70cdf4b5df68186257f7f91f7b4f3e348be0a13fe028e6c39412a2`  
		Last Modified: Wed, 05 Jun 2019 23:25:15 GMT  
		Size: 132.8 MB (132820042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185fb924cbf558c3d840d88e1cdc9618d40e77f3101042b5b15883d8fbe3a72c`  
		Last Modified: Wed, 05 Jun 2019 23:25:06 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.5-slim`

```console
$ docker pull solr@sha256:154656427349ccc1f174af943e3b19f5c407960650ae8e15a16517f34034929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5.5-slim` - linux; amd64

```console
$ docker pull solr@sha256:204a39da7bfc97830dd768d981c41dea550d59be3b459f658ce4707fab5963f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204561291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc4cc700eb46606dae5e8ca8b520184e8c6be43ae6c26d6e5ffbe181459ed8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:58 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:21:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:21:14 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:21:15 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:21:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:21:15 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:21:15 GMT
USER solr
# Wed, 05 Jun 2019 23:21:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:21:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba584dc14d083553059b0de13d4d374954cc1262f44d4badb18ea27166cc4c0`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5aa281d38cbae1a7366080e36c3601537eaeff5029da9a55aafd7851bb61f1`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 88.8 KB (88764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2df47ef34acec61a9403da40eebba5296a463fcee474943294d4eee6b684f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:30 GMT  
		Size: 132.8 MB (132820053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92a116bffcdf5da1866de35528ae5bbdd31ce401e340bd38ddb3d28681214f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-slim`

```console
$ docker pull solr@sha256:154656427349ccc1f174af943e3b19f5c407960650ae8e15a16517f34034929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5.5-slim` - linux; amd64

```console
$ docker pull solr@sha256:204a39da7bfc97830dd768d981c41dea550d59be3b459f658ce4707fab5963f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204561291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc4cc700eb46606dae5e8ca8b520184e8c6be43ae6c26d6e5ffbe181459ed8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:58 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:21:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:21:14 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:21:15 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:21:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:21:15 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:21:15 GMT
USER solr
# Wed, 05 Jun 2019 23:21:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:21:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba584dc14d083553059b0de13d4d374954cc1262f44d4badb18ea27166cc4c0`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5aa281d38cbae1a7366080e36c3601537eaeff5029da9a55aafd7851bb61f1`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 88.8 KB (88764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2df47ef34acec61a9403da40eebba5296a463fcee474943294d4eee6b684f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:30 GMT  
		Size: 132.8 MB (132820053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92a116bffcdf5da1866de35528ae5bbdd31ce401e340bd38ddb3d28681214f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-slim`

```console
$ docker pull solr@sha256:154656427349ccc1f174af943e3b19f5c407960650ae8e15a16517f34034929c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:5-slim` - linux; amd64

```console
$ docker pull solr@sha256:204a39da7bfc97830dd768d981c41dea550d59be3b459f658ce4707fab5963f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204561291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc4cc700eb46606dae5e8ca8b520184e8c6be43ae6c26d6e5ffbe181459ed8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:58 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:21:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:21:14 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:21:15 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:21:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:21:15 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:21:15 GMT
USER solr
# Wed, 05 Jun 2019 23:21:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:21:15 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba584dc14d083553059b0de13d4d374954cc1262f44d4badb18ea27166cc4c0`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5aa281d38cbae1a7366080e36c3601537eaeff5029da9a55aafd7851bb61f1`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 88.8 KB (88764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2df47ef34acec61a9403da40eebba5296a463fcee474943294d4eee6b684f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:30 GMT  
		Size: 132.8 MB (132820053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92a116bffcdf5da1866de35528ae5bbdd31ce401e340bd38ddb3d28681214f4`  
		Last Modified: Wed, 05 Jun 2019 23:25:20 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:83d7b1d7fafd02b638a67b2c6c84f03ef7b87022a0d4099b6e87f5dca1ea75a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

```console
$ docker pull solr@sha256:7ec201038f86f6aeba66cad722dc85e7fb5b3b52d835ece189417209680d0a4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255577112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e641315dca3b62ad2ed65d6ec493dcc4b6aaa9f2f781fdbf7a80c3f89333bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:19:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:19:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:19:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:19:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:19:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:19:52 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:19:52 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:19:52 GMT
USER solr
# Wed, 05 Jun 2019 23:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:19:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fab0138eeb649f968f400951632f61e7c9b8464f914045436b8284a85187eaf`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.3 KB (4298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6c8569d29ebcf89a88548a7b8d21e0d7411cb4fe919337bc59a41e938cc9f`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 74.1 KB (74142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2368097988b1c24bb85a91ba6f70ad4bdc435901d0f1255ef4073ba8a34d5521`  
		Last Modified: Wed, 05 Jun 2019 23:24:39 GMT  
		Size: 148.4 MB (148361431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09162d467f400826cdb507c209cce0bb20a1592ed92c928a2cba109d430f7b2c`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6`

```console
$ docker pull solr@sha256:83d7b1d7fafd02b638a67b2c6c84f03ef7b87022a0d4099b6e87f5dca1ea75a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6` - linux; amd64

```console
$ docker pull solr@sha256:7ec201038f86f6aeba66cad722dc85e7fb5b3b52d835ece189417209680d0a4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255577112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e641315dca3b62ad2ed65d6ec493dcc4b6aaa9f2f781fdbf7a80c3f89333bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:19:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:19:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:19:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:19:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:19:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:19:52 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:19:52 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:19:52 GMT
USER solr
# Wed, 05 Jun 2019 23:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:19:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fab0138eeb649f968f400951632f61e7c9b8464f914045436b8284a85187eaf`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.3 KB (4298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6c8569d29ebcf89a88548a7b8d21e0d7411cb4fe919337bc59a41e938cc9f`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 74.1 KB (74142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2368097988b1c24bb85a91ba6f70ad4bdc435901d0f1255ef4073ba8a34d5521`  
		Last Modified: Wed, 05 Jun 2019 23:24:39 GMT  
		Size: 148.4 MB (148361431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09162d467f400826cdb507c209cce0bb20a1592ed92c928a2cba109d430f7b2c`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.6`

```console
$ docker pull solr@sha256:83d7b1d7fafd02b638a67b2c6c84f03ef7b87022a0d4099b6e87f5dca1ea75a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6.6` - linux; amd64

```console
$ docker pull solr@sha256:7ec201038f86f6aeba66cad722dc85e7fb5b3b52d835ece189417209680d0a4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.6 MB (255577112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e641315dca3b62ad2ed65d6ec493dcc4b6aaa9f2f781fdbf7a80c3f89333bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:19:34 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:19:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:19:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:19:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:19:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:19:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:19:52 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:19:52 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:19:52 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:19:52 GMT
USER solr
# Wed, 05 Jun 2019 23:19:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:19:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dbce55d9c8fe1be2914f8a7160d460619eeced92ba86963a5a63c75016d3e5`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 1.4 MB (1432176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fab0138eeb649f968f400951632f61e7c9b8464f914045436b8284a85187eaf`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.3 KB (4298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6c8569d29ebcf89a88548a7b8d21e0d7411cb4fe919337bc59a41e938cc9f`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 74.1 KB (74142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2368097988b1c24bb85a91ba6f70ad4bdc435901d0f1255ef4073ba8a34d5521`  
		Last Modified: Wed, 05 Jun 2019 23:24:39 GMT  
		Size: 148.4 MB (148361431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09162d467f400826cdb507c209cce0bb20a1592ed92c928a2cba109d430f7b2c`  
		Last Modified: Wed, 05 Jun 2019 23:24:30 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6.6-slim`

```console
$ docker pull solr@sha256:6506ffbe6b5ef902005759ae5f0447433357c2a5b98858b57ba7c03cd5c8d6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6.6-slim` - linux; amd64

```console
$ docker pull solr@sha256:1dc7eb4a579f8774d3bd5809dc75775f6a7f707df5ac604eafa178330b9afa60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220088167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b91b0959e0291daf6be83b73781137f13cc4743d0e9a4d3333dd3ee8a9ba6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:08 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:25 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:26 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:26 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:26 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:26 GMT
USER solr
# Wed, 05 Jun 2019 23:20:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d69f95f80b090bc1366af21c6d48a8dcf78eaf96bca0142453f8b4adc5658b`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3488814f5e6d46e9806e4ba035c2fc5121083bc9db85884dde6fcd6c7437a29`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 74.1 KB (74138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d605193538b840a3768b5cb9dd79240400fea7fec62c1484a4cf837bd6fd781`  
		Last Modified: Wed, 05 Jun 2019 23:24:57 GMT  
		Size: 148.4 MB (148361558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0e60b2f7ff58ae4164c735a7c2da33c6d3c4f12c770796fd70dd3b54abe1b4`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.6-slim`

```console
$ docker pull solr@sha256:6506ffbe6b5ef902005759ae5f0447433357c2a5b98858b57ba7c03cd5c8d6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6.6-slim` - linux; amd64

```console
$ docker pull solr@sha256:1dc7eb4a579f8774d3bd5809dc75775f6a7f707df5ac604eafa178330b9afa60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220088167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b91b0959e0291daf6be83b73781137f13cc4743d0e9a4d3333dd3ee8a9ba6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:08 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:25 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:26 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:26 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:26 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:26 GMT
USER solr
# Wed, 05 Jun 2019 23:20:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d69f95f80b090bc1366af21c6d48a8dcf78eaf96bca0142453f8b4adc5658b`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3488814f5e6d46e9806e4ba035c2fc5121083bc9db85884dde6fcd6c7437a29`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 74.1 KB (74138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d605193538b840a3768b5cb9dd79240400fea7fec62c1484a4cf837bd6fd781`  
		Last Modified: Wed, 05 Jun 2019 23:24:57 GMT  
		Size: 148.4 MB (148361558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0e60b2f7ff58ae4164c735a7c2da33c6d3c4f12c770796fd70dd3b54abe1b4`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-slim`

```console
$ docker pull solr@sha256:6506ffbe6b5ef902005759ae5f0447433357c2a5b98858b57ba7c03cd5c8d6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:6-slim` - linux; amd64

```console
$ docker pull solr@sha256:1dc7eb4a579f8774d3bd5809dc75775f6a7f707df5ac604eafa178330b9afa60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220088167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b91b0959e0291daf6be83b73781137f13cc4743d0e9a4d3333dd3ee8a9ba6a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:19:56 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:19:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:06 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.6 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.6/solr-6.6.6.tgz SOLR_SHA256=149ec1a7ee950867ab6257a1a96246df79ccda983983389dc639220f3447b6e8 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:07 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:08 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:25 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:20:26 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:26 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:26 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:26 GMT
USER solr
# Wed, 05 Jun 2019 23:20:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fed51ed9e7d581f95dc19167799f8fb2c7d3311294c77d1b629fc86d05abd9`  
		Last Modified: Wed, 05 Jun 2019 22:29:08 GMT  
		Size: 40.4 MB (40377617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee04e83517a65db860d25d3ea28aa736c15fd5e71906f6b252f2da5dc0c86ac3`  
		Last Modified: Wed, 05 Jun 2019 23:24:48 GMT  
		Size: 5.9 MB (5870986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d69f95f80b090bc1366af21c6d48a8dcf78eaf96bca0142453f8b4adc5658b`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3488814f5e6d46e9806e4ba035c2fc5121083bc9db85884dde6fcd6c7437a29`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 74.1 KB (74138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d605193538b840a3768b5cb9dd79240400fea7fec62c1484a4cf837bd6fd781`  
		Last Modified: Wed, 05 Jun 2019 23:24:57 GMT  
		Size: 148.4 MB (148361558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0e60b2f7ff58ae4164c735a7c2da33c6d3c4f12c770796fd70dd3b54abe1b4`  
		Last Modified: Wed, 05 Jun 2019 23:24:47 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7`

```console
$ docker pull solr@sha256:6852cc074710d50c9105a73bf193b622b6e0b4fa2722adddfc81f70b8d01bc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7` - linux; amd64

```console
$ docker pull solr@sha256:c28fb3b2041e7ade9eec30660e1df3d8b3e74cdcbf6eb8aa09bf94a25385b572
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.6 MB (483622688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22f908dbe09c6441ba1ce832d8e2e973ef00ca018d0058f208efee9cf3719b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:16:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:16:54 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:16:55 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:16:55 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:16:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:17:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:17:14 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:17:14 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:17:14 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:17:14 GMT
USER solr
# Wed, 05 Jun 2019 23:17:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6750fd559239488fc2beafb4ef06eb9e4f08a1391bcfbc9d4e762e6b5dcfb3a`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0001909edbd88be818bf6974026d562d8f827c5486cef72858d4e3997b08b7d`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 74.1 KB (74138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a21b8bc6d167eb70a796aeb33658cba288ed658b83821285dd1df04a6a864c`  
		Last Modified: Wed, 05 Jun 2019 23:22:57 GMT  
		Size: 172.4 MB (172364909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800533738a872a57939d3e17233f51db3bbf76830bc906d4e55b565512452567`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:d1fa1bf786a4aae747edd4ebf4dc662492877cc9e7c641d9cd520aed46ce637d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.5 MB (475497948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d9fbc907ad08189db5b5c84ebebad7d257cddd80cd1f3a88fff5ec84b21c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:03 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:26:04 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:26:04 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:26:06 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:26:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:27:29 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:27:30 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:27:31 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:27:31 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:27:32 GMT
USER solr
# Wed, 05 Jun 2019 23:27:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:27:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6561c42c7c0bde788d92d238285889c8934a3ff1592bc74fed1e5038b3683e52`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadca60cb53b04c28f02bea0d1f9689abb93df7eea4d80c5e4d7b70e9f1dd574`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 74.2 KB (74183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d981032ca4a6641aadcc5463778299397bc96403542433180d589f71b6b7ba16`  
		Last Modified: Wed, 05 Jun 2019 23:38:41 GMT  
		Size: 172.3 MB (172300133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aefd1c8f410ff82dc1c2a3fc509de6e0e13690ad9de253f7a64fc63316e6b9`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.5`

```console
$ docker pull solr@sha256:cd895277f83a62c4382d08bf8dac74d025a782cefef2a74a4fcd72a89abf1c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.5` - linux; amd64

```console
$ docker pull solr@sha256:aafec4b0bc39a6d9786eab9993a83849e61eb6959369845a099e10fb99711748
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.7 MB (480706144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47aba8d74c1c8c488a164e04b3a1beb393bbbe91341f483001b3af862d6036b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:18:35 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:37 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:40 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:56 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:57 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:57 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:57 GMT
USER solr
# Wed, 05 Jun 2019 23:18:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc4df955e1cfb836180fa478e9988ee72075a229da2ae94aff6ad1233f89bba`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4767169938cd372d5bf7e5210bb4efa054498846db0aafdfa87a927e75a05355`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 75.2 KB (75231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2e7ed707b42a78756319d18fefa12abc80cf920be307134469cabe1bb3e4bc`  
		Last Modified: Wed, 05 Jun 2019 23:24:09 GMT  
		Size: 169.4 MB (169447273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff11de0d8f8851da8f0991e56de9b04d01c0dbc4a2c29d2ad9139e9bb354684e`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.5` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:b407d375454398e701e150408ba508b70f49338251c54c172e3877de99df0be6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.6 MB (472580724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e71a01f84f716711465ec1c1f8b2a0748c72918ec319899c657d90ca8e0ae39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:33:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:33:05 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:33:05 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:33:06 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:33:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:34:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:34:28 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:34:28 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:34:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:34:29 GMT
USER solr
# Wed, 05 Jun 2019 23:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:34:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c87e453de0af765763a3a907f5a5adb9f51eb6294ba8efe297a584a40b084b0`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0cee17c0dc4ac36738cbbc9832c3db9fbe6f5004c8da01ca15bde792e565d6`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 75.3 KB (75263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f05de833494ea3f1bee69f4a775687420258273bf7189f821464a67d7b4e`  
		Last Modified: Wed, 05 Jun 2019 23:40:51 GMT  
		Size: 169.4 MB (169381836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb09c17bc38ed3c597422e5d6231e9835fbca11be14866786b5fa6a9f79665`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.5.0`

```console
$ docker pull solr@sha256:cd895277f83a62c4382d08bf8dac74d025a782cefef2a74a4fcd72a89abf1c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.5.0` - linux; amd64

```console
$ docker pull solr@sha256:aafec4b0bc39a6d9786eab9993a83849e61eb6959369845a099e10fb99711748
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.7 MB (480706144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47aba8d74c1c8c488a164e04b3a1beb393bbbe91341f483001b3af862d6036b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:18:35 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:37 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:40 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:56 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:57 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:57 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:57 GMT
USER solr
# Wed, 05 Jun 2019 23:18:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc4df955e1cfb836180fa478e9988ee72075a229da2ae94aff6ad1233f89bba`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4767169938cd372d5bf7e5210bb4efa054498846db0aafdfa87a927e75a05355`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 75.2 KB (75231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2e7ed707b42a78756319d18fefa12abc80cf920be307134469cabe1bb3e4bc`  
		Last Modified: Wed, 05 Jun 2019 23:24:09 GMT  
		Size: 169.4 MB (169447273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff11de0d8f8851da8f0991e56de9b04d01c0dbc4a2c29d2ad9139e9bb354684e`  
		Last Modified: Wed, 05 Jun 2019 23:23:54 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.5.0` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:b407d375454398e701e150408ba508b70f49338251c54c172e3877de99df0be6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.6 MB (472580724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e71a01f84f716711465ec1c1f8b2a0748c72918ec319899c657d90ca8e0ae39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:33:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:33:05 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:33:05 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:33:06 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:33:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:34:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:34:28 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:34:28 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:34:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:34:29 GMT
USER solr
# Wed, 05 Jun 2019 23:34:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:34:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c87e453de0af765763a3a907f5a5adb9f51eb6294ba8efe297a584a40b084b0`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0cee17c0dc4ac36738cbbc9832c3db9fbe6f5004c8da01ca15bde792e565d6`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 75.3 KB (75263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f05de833494ea3f1bee69f4a775687420258273bf7189f821464a67d7b4e`  
		Last Modified: Wed, 05 Jun 2019 23:40:51 GMT  
		Size: 169.4 MB (169381836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb09c17bc38ed3c597422e5d6231e9835fbca11be14866786b5fa6a9f79665`  
		Last Modified: Wed, 05 Jun 2019 23:40:27 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.5.0-slim`

```console
$ docker pull solr@sha256:f9b228cfcd327c7d1fc93c269cca09165e2904a279ca35fe9cdf848afd200dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.5.0-slim` - linux; amd64

```console
$ docker pull solr@sha256:bbe2664a849e34e3ed2d9fddaca42b7aa5bedd06bd05ef6f72f2c052fccbf3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396011932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13857ab9e689c804a42024ab731ddb3084ec06be4345560001e0b3c4a05e89c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:19:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:19:02 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:19:02 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:19:03 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:19:06 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:19:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:19:22 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:19:22 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:19:22 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:19:23 GMT
USER solr
# Wed, 05 Jun 2019 23:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:19:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9681105435d6d740b1b37ec4fe5b9f0112476539aa45503be9617c3435492425`  
		Last Modified: Wed, 05 Jun 2019 23:24:15 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ba812dd6e09a625899bfbddb3a67dda3157262681270fcd02626cdc58c9b3c`  
		Last Modified: Wed, 05 Jun 2019 23:24:14 GMT  
		Size: 75.2 KB (75225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d51d65d06dc247beb390465c263569124429ee78ba65de2fa34263c6a72bbdc`  
		Last Modified: Wed, 05 Jun 2019 23:24:26 GMT  
		Size: 169.4 MB (169447379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9420d08d306a48b4826dbb9accaf8f32427fcaaafba9f12403649ee91df8bbfb`  
		Last Modified: Wed, 05 Jun 2019 23:24:15 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.5.0-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:95133782a6341cfe2189baed78dbc589ce1c770f506084ade0ecd5d319f73d98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390550827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4750b9e1890151c10ac4e56a9274b1a9dc46110f161ccbbbda3f9f4f86c7bc54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:34:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:34:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:34:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:34:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:34:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:35:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:35:57 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:35:57 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:35:58 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:35:58 GMT
USER solr
# Wed, 05 Jun 2019 23:35:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a5451bb6ba7866c50135c660f1ec054d09a307fe9fe779d0d03d9c557056d7`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 4.3 KB (4333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78c3f1a33f806c8090623fe2e3f667acd5fc94365adcd4e20b52ab61ef88df2`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 75.3 KB (75261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51704eac64de2a5315ec53865587d6bdbd4c45093900fe8d4141904602712882`  
		Last Modified: Wed, 05 Jun 2019 23:41:22 GMT  
		Size: 169.4 MB (169381821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6219a0c06272aabb7e876e41c1293ef87a4c6adfd5fc0c9a91051aa3c58c89c7`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.5-slim`

```console
$ docker pull solr@sha256:f9b228cfcd327c7d1fc93c269cca09165e2904a279ca35fe9cdf848afd200dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.5-slim` - linux; amd64

```console
$ docker pull solr@sha256:bbe2664a849e34e3ed2d9fddaca42b7aa5bedd06bd05ef6f72f2c052fccbf3ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396011932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13857ab9e689c804a42024ab731ddb3084ec06be4345560001e0b3c4a05e89c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:19:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:19:02 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:19:02 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:19:03 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:19:06 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:19:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:19:22 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:19:22 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:19:22 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:19:23 GMT
USER solr
# Wed, 05 Jun 2019 23:19:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:19:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9681105435d6d740b1b37ec4fe5b9f0112476539aa45503be9617c3435492425`  
		Last Modified: Wed, 05 Jun 2019 23:24:15 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ba812dd6e09a625899bfbddb3a67dda3157262681270fcd02626cdc58c9b3c`  
		Last Modified: Wed, 05 Jun 2019 23:24:14 GMT  
		Size: 75.2 KB (75225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d51d65d06dc247beb390465c263569124429ee78ba65de2fa34263c6a72bbdc`  
		Last Modified: Wed, 05 Jun 2019 23:24:26 GMT  
		Size: 169.4 MB (169447379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9420d08d306a48b4826dbb9accaf8f32427fcaaafba9f12403649ee91df8bbfb`  
		Last Modified: Wed, 05 Jun 2019 23:24:15 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.5-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:95133782a6341cfe2189baed78dbc589ce1c770f506084ade0ecd5d319f73d98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390550827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4750b9e1890151c10ac4e56a9274b1a9dc46110f161ccbbbda3f9f4f86c7bc54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:34:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:34:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:34:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:34:35 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:34:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:35:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:35:57 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:35:57 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:35:58 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:35:58 GMT
USER solr
# Wed, 05 Jun 2019 23:35:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:35:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a5451bb6ba7866c50135c660f1ec054d09a307fe9fe779d0d03d9c557056d7`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 4.3 KB (4333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78c3f1a33f806c8090623fe2e3f667acd5fc94365adcd4e20b52ab61ef88df2`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 75.3 KB (75261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51704eac64de2a5315ec53865587d6bdbd4c45093900fe8d4141904602712882`  
		Last Modified: Wed, 05 Jun 2019 23:41:22 GMT  
		Size: 169.4 MB (169381821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6219a0c06272aabb7e876e41c1293ef87a4c6adfd5fc0c9a91051aa3c58c89c7`  
		Last Modified: Wed, 05 Jun 2019 23:40:59 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.6`

```console
$ docker pull solr@sha256:79a7f35d9c57a5fa7c1b4985975ca8f3a4e98536466042def2cfe9e8b0dac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.6` - linux; amd64

```console
$ docker pull solr@sha256:c90d1a8761590b26e61744e4109bb66c1eb9b1823d886fd297ce951a2e75df4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.9 MB (482917285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0566995b9c4b47b600d9c85688e1a0b3e7e8febe0cecaf9aeb411d45734d1b11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:17:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:17:40 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:17:41 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:17:42 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:17:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:02 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:02 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:03 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:03 GMT
USER solr
# Wed, 05 Jun 2019 23:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:03 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869850e4ce95b7066b135e3d6317ee52ae42ecd8ba7fc41ff037fb1de23e7b2`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7635d830e0ea0c8da5405ee119a5dcb6fc04dabff14c85d5d0edb7b9485e9b48`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 73.1 KB (73071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9cf433ff17146d57398bee2faa4f19d2988d72df4073e42046bc841d8613e2`  
		Last Modified: Wed, 05 Jun 2019 23:23:32 GMT  
		Size: 171.7 MB (171660575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e36fc2ce7cb479d45de3a0192565771abe481678310cb988a5576a6782812ae`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.6` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:efd0edc26bb52e16518a01f829873df65fed962f4d5026acd476ec99f06d91a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474790717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3240b571731284b9fd004942329cd633d386bcf0942e317c985c37c8b6f76f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:29:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:29:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:29:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:29:36 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:29:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:30:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:30:59 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:30:59 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:30:59 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:31:00 GMT
USER solr
# Wed, 05 Jun 2019 23:31:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:31:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277dcfcfd59a31795dd0888b120fe898826cc34f14cbdd96f0ddbbc1a9cec307`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05fc90922e6c2ff8fa1eaa740e5e1b939640eb883f70a34ebbe0453b6f4c0a`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 73.1 KB (73105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f44ef6987afe7bd5121f4c8239b09c63cfc48c9ac132901885afcce16cd9dd6`  
		Last Modified: Wed, 05 Jun 2019 23:39:43 GMT  
		Size: 171.6 MB (171593982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48a8eb8600d82c3c24e8e943c61d9e6519e96a0c1692c32ce211a8978ebe975`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.6.0`

```console
$ docker pull solr@sha256:79a7f35d9c57a5fa7c1b4985975ca8f3a4e98536466042def2cfe9e8b0dac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.6.0` - linux; amd64

```console
$ docker pull solr@sha256:c90d1a8761590b26e61744e4109bb66c1eb9b1823d886fd297ce951a2e75df4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.9 MB (482917285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0566995b9c4b47b600d9c85688e1a0b3e7e8febe0cecaf9aeb411d45734d1b11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:17:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:17:40 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:17:41 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:17:42 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:17:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:02 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:02 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:03 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:03 GMT
USER solr
# Wed, 05 Jun 2019 23:18:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:03 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c869850e4ce95b7066b135e3d6317ee52ae42ecd8ba7fc41ff037fb1de23e7b2`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7635d830e0ea0c8da5405ee119a5dcb6fc04dabff14c85d5d0edb7b9485e9b48`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 73.1 KB (73071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9cf433ff17146d57398bee2faa4f19d2988d72df4073e42046bc841d8613e2`  
		Last Modified: Wed, 05 Jun 2019 23:23:32 GMT  
		Size: 171.7 MB (171660575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e36fc2ce7cb479d45de3a0192565771abe481678310cb988a5576a6782812ae`  
		Last Modified: Wed, 05 Jun 2019 23:23:20 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.6.0` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:efd0edc26bb52e16518a01f829873df65fed962f4d5026acd476ec99f06d91a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474790717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3240b571731284b9fd004942329cd633d386bcf0942e317c985c37c8b6f76f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:29:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:29:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:29:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:29:36 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:29:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:30:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:30:59 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:30:59 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:30:59 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:31:00 GMT
USER solr
# Wed, 05 Jun 2019 23:31:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:31:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277dcfcfd59a31795dd0888b120fe898826cc34f14cbdd96f0ddbbc1a9cec307`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec05fc90922e6c2ff8fa1eaa740e5e1b939640eb883f70a34ebbe0453b6f4c0a`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 73.1 KB (73105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f44ef6987afe7bd5121f4c8239b09c63cfc48c9ac132901885afcce16cd9dd6`  
		Last Modified: Wed, 05 Jun 2019 23:39:43 GMT  
		Size: 171.6 MB (171593982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48a8eb8600d82c3c24e8e943c61d9e6519e96a0c1692c32ce211a8978ebe975`  
		Last Modified: Wed, 05 Jun 2019 23:39:21 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.6.0-slim`

```console
$ docker pull solr@sha256:b8b1360df1e0fba53baf7d3afb329185dfb6deee6ea9d8d035b3e4e58897c76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.6.0-slim` - linux; amd64

```console
$ docker pull solr@sha256:e296503219380bceba24ff497f44515804f233fefa51bbdbec8b29086924f63d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398222910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e8fc90ad851f5b4f397f1f22460ab8d8a69d2b8950fe8fdd8dcfaea5f92983`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:18:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:08 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:09 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:28 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:29 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:29 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:29 GMT
USER solr
# Wed, 05 Jun 2019 23:18:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7863d46ba25902797807ef9bcfb90cfd2b02dab9e7ce20ad23cc76e970416134`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3031ac451533bd0ff88b0ea584266bb6b2edd2bb90c5fe4006076a03f9c4b`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 73.1 KB (73068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb4ad282fb81ee19f6efeac7ffc482ce9c75dfca535026f70c6f25b28dfe6fd`  
		Last Modified: Wed, 05 Jun 2019 23:23:50 GMT  
		Size: 171.7 MB (171660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eabf1f5535532bff4362b9df8f1c183c95317deb640be2601c22f429bdadfd`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.6.0-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:8e9ec2bf125d88bb4a800029b29859a53ca0d7c533ca2e8ecc9a93322cd32e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392760946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35ac2bb4ff8b726740a4c613ecf14cf67b25ae806f5764080aae14bb1b95049`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:31:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:31:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:31:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:31:21 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:31:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:32:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:32:43 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:32:44 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:32:44 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:32:44 GMT
USER solr
# Wed, 05 Jun 2019 23:32:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a41bf3996e9d7fdc0d8fb6c4a76d1f415de57a317123fef7c693ae44068af7`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e52d61b28eadcac1f3310073c186aefc40f3753a889b92e434abb390ea6b40`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 73.1 KB (73105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151041dc1e936c4c2042e6f444a6be264f9c9c6e325b1ec21026e43a3c5d997d`  
		Last Modified: Wed, 05 Jun 2019 23:40:17 GMT  
		Size: 171.6 MB (171594098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec4db0b630bf160ccd0cacc6fb9419098dda65852723f92a200bc7375f59bc`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.6-slim`

```console
$ docker pull solr@sha256:b8b1360df1e0fba53baf7d3afb329185dfb6deee6ea9d8d035b3e4e58897c76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.6-slim` - linux; amd64

```console
$ docker pull solr@sha256:e296503219380bceba24ff497f44515804f233fefa51bbdbec8b29086924f63d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398222910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e8fc90ad851f5b4f397f1f22460ab8d8a69d2b8950fe8fdd8dcfaea5f92983`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:18:07 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:08 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:09 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:18:28 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:18:29 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:18:29 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:18:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:18:29 GMT
USER solr
# Wed, 05 Jun 2019 23:18:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:18:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7863d46ba25902797807ef9bcfb90cfd2b02dab9e7ce20ad23cc76e970416134`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3031ac451533bd0ff88b0ea584266bb6b2edd2bb90c5fe4006076a03f9c4b`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 73.1 KB (73068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb4ad282fb81ee19f6efeac7ffc482ce9c75dfca535026f70c6f25b28dfe6fd`  
		Last Modified: Wed, 05 Jun 2019 23:23:50 GMT  
		Size: 171.7 MB (171660520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eabf1f5535532bff4362b9df8f1c183c95317deb640be2601c22f429bdadfd`  
		Last Modified: Wed, 05 Jun 2019 23:23:38 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.6-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:8e9ec2bf125d88bb4a800029b29859a53ca0d7c533ca2e8ecc9a93322cd32e23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392760946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35ac2bb4ff8b726740a4c613ecf14cf67b25ae806f5764080aae14bb1b95049`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:31:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:31:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:31:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:31:21 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:31:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:32:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:32:43 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:32:44 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:32:44 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:32:44 GMT
USER solr
# Wed, 05 Jun 2019 23:32:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:32:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a41bf3996e9d7fdc0d8fb6c4a76d1f415de57a317123fef7c693ae44068af7`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e52d61b28eadcac1f3310073c186aefc40f3753a889b92e434abb390ea6b40`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 73.1 KB (73105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151041dc1e936c4c2042e6f444a6be264f9c9c6e325b1ec21026e43a3c5d997d`  
		Last Modified: Wed, 05 Jun 2019 23:40:17 GMT  
		Size: 171.6 MB (171594098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdec4db0b630bf160ccd0cacc6fb9419098dda65852723f92a200bc7375f59bc`  
		Last Modified: Wed, 05 Jun 2019 23:39:53 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.7`

```console
$ docker pull solr@sha256:6852cc074710d50c9105a73bf193b622b6e0b4fa2722adddfc81f70b8d01bc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.7` - linux; amd64

```console
$ docker pull solr@sha256:c28fb3b2041e7ade9eec30660e1df3d8b3e74cdcbf6eb8aa09bf94a25385b572
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.6 MB (483622688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22f908dbe09c6441ba1ce832d8e2e973ef00ca018d0058f208efee9cf3719b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:16:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:16:54 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:16:55 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:16:55 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:16:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:17:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:17:14 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:17:14 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:17:14 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:17:14 GMT
USER solr
# Wed, 05 Jun 2019 23:17:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6750fd559239488fc2beafb4ef06eb9e4f08a1391bcfbc9d4e762e6b5dcfb3a`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0001909edbd88be818bf6974026d562d8f827c5486cef72858d4e3997b08b7d`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 74.1 KB (74138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a21b8bc6d167eb70a796aeb33658cba288ed658b83821285dd1df04a6a864c`  
		Last Modified: Wed, 05 Jun 2019 23:22:57 GMT  
		Size: 172.4 MB (172364909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800533738a872a57939d3e17233f51db3bbf76830bc906d4e55b565512452567`  
		Last Modified: Wed, 05 Jun 2019 23:22:45 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.7` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:d1fa1bf786a4aae747edd4ebf4dc662492877cc9e7c641d9cd520aed46ce637d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.5 MB (475497948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523d9fbc907ad08189db5b5c84ebebad7d257cddd80cd1f3a88fff5ec84b21c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:26:03 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:26:04 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:26:04 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:26:06 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:26:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:27:29 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:27:30 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:27:31 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:27:31 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:27:32 GMT
USER solr
# Wed, 05 Jun 2019 23:27:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:27:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6561c42c7c0bde788d92d238285889c8934a3ff1592bc74fed1e5038b3683e52`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadca60cb53b04c28f02bea0d1f9689abb93df7eea4d80c5e4d7b70e9f1dd574`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 74.2 KB (74183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d981032ca4a6641aadcc5463778299397bc96403542433180d589f71b6b7ba16`  
		Last Modified: Wed, 05 Jun 2019 23:38:41 GMT  
		Size: 172.3 MB (172300133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15aefd1c8f410ff82dc1c2a3fc509de6e0e13690ad9de253f7a64fc63316e6b9`  
		Last Modified: Wed, 05 Jun 2019 23:38:20 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7.7.2`

**does not exist** (yet?)

## `solr:7.7.2-slim`

**does not exist** (yet?)

## `solr:7.7-slim`

```console
$ docker pull solr@sha256:3803573a46139ab6446fc71a76d61cd87bb54fc888540baf4999e9aa43e2b387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7.7-slim` - linux; amd64

```console
$ docker pull solr@sha256:42017f60b10c45f2502e0dcb051fe24b620d705e89ed46a3346e2bb99066fb1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.9 MB (398928380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b3042446bf9f0ddcd1c5fe901cab1641f9f01a8e08a83c3647b7ea627c54cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:17:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:17:17 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:17:17 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:17:18 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:17:21 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:17:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:17:37 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:17:37 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:17:37 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:17:37 GMT
USER solr
# Wed, 05 Jun 2019 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:38 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120b111608a6138bcce699ba77dbc3beacad9c45fee42401a7651507ee975b`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c49192933c07635aa37181a12e1cf8147cecf2adde68f4eede273aef8a9f8c`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 74.1 KB (74142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44c9037526f2ffb0bfdd52e27838767ffbf0eca7e2fc6edc808ab5fa36397e0`  
		Last Modified: Wed, 05 Jun 2019 23:23:15 GMT  
		Size: 172.4 MB (172364911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98b23eb1ee53f2c6d06e6b26b7d5d2a801e0f12d57b0f3f80d454d369d3d936`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7.7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:977908174c0ea9d17ff5f9d5207da66536221bc2f8799809704a7ab0ab5295e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.5 MB (393467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c47c20128bf3b4bd6757faa4a403fa582f53e4cf88224dfdb9fdf0dc643337`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:27:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:27:50 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:27:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:27:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:27:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:29:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:29:28 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:29:29 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:29:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:29:29 GMT
USER solr
# Wed, 05 Jun 2019 23:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:29:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0fb15b6c582db80c22190cc9391c6fb0db6f7f0ed05b6720c5bd2615eef43`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d179c697f81ea99bc6c54bf29b7edad9d6e8e5c347de9556fbf88b87a103f49b`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 74.2 KB (74175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e25cb876469d78cc9b9e3b58483fbb0b8c09b6fd4533967887ea167249dc58`  
		Last Modified: Wed, 05 Jun 2019 23:39:13 GMT  
		Size: 172.3 MB (172300061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8113548ff099cc4658f3e716423a076e23f2d189be01b42435c9ddb92ff4e`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 4.3 KB (4262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:7-slim`

```console
$ docker pull solr@sha256:3803573a46139ab6446fc71a76d61cd87bb54fc888540baf4999e9aa43e2b387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:7-slim` - linux; amd64

```console
$ docker pull solr@sha256:42017f60b10c45f2502e0dcb051fe24b620d705e89ed46a3346e2bb99066fb1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.9 MB (398928380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b3042446bf9f0ddcd1c5fe901cab1641f9f01a8e08a83c3647b7ea627c54cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:17:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:17:17 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:17:17 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:17:18 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:17:21 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:17:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:17:37 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:17:37 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:17:37 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:17:37 GMT
USER solr
# Wed, 05 Jun 2019 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:17:38 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2120b111608a6138bcce699ba77dbc3beacad9c45fee42401a7651507ee975b`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c49192933c07635aa37181a12e1cf8147cecf2adde68f4eede273aef8a9f8c`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 74.1 KB (74142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44c9037526f2ffb0bfdd52e27838767ffbf0eca7e2fc6edc808ab5fa36397e0`  
		Last Modified: Wed, 05 Jun 2019 23:23:15 GMT  
		Size: 172.4 MB (172364911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98b23eb1ee53f2c6d06e6b26b7d5d2a801e0f12d57b0f3f80d454d369d3d936`  
		Last Modified: Wed, 05 Jun 2019 23:23:02 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:977908174c0ea9d17ff5f9d5207da66536221bc2f8799809704a7ab0ab5295e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.5 MB (393467984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c47c20128bf3b4bd6757faa4a403fa582f53e4cf88224dfdb9fdf0dc643337`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:27:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:27:50 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:27:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:27:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:27:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:29:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Wed, 05 Jun 2019 23:29:28 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:29:29 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:29:29 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:29:29 GMT
USER solr
# Wed, 05 Jun 2019 23:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:29:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d0fb15b6c582db80c22190cc9391c6fb0db6f7f0ed05b6720c5bd2615eef43`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d179c697f81ea99bc6c54bf29b7edad9d6e8e5c347de9556fbf88b87a103f49b`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 74.2 KB (74175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e25cb876469d78cc9b9e3b58483fbb0b8c09b6fd4533967887ea167249dc58`  
		Last Modified: Wed, 05 Jun 2019 23:39:13 GMT  
		Size: 172.3 MB (172300061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f8113548ff099cc4658f3e716423a076e23f2d189be01b42435c9ddb92ff4e`  
		Last Modified: Wed, 05 Jun 2019 23:38:52 GMT  
		Size: 4.3 KB (4262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8`

```console
$ docker pull solr@sha256:9ebd26ca9c6a3c6e9777d0824f6cc07b50c91d4a3c5428e77d0e7dc4b24a15be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8` - linux; amd64

```console
$ docker pull solr@sha256:63d689c199fb7c2ff7cd1b24b346ccfd42f8319895e175b884e7ca24c29389a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487910315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6186585ed4be458ba4ad5905ed36eb85f07b0201b082c2e2775a6f0c804a37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:14:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:14:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:14:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:13 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:13 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:13 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:13 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:13 GMT
USER solr
# Wed, 05 Jun 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732016639395dc884511521879c4c7866b94cc2c1ca7c1684911d7edb52d3d9`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d84c8605dc0e7d7955cf74d5b536f8d60eec2f768f1590386d1cf4080647e`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 74.2 KB (74189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d493b075b6309ef36d064c376609eccea82b740f89dda9df3d700d6a8efa4670`  
		Last Modified: Wed, 05 Jun 2019 23:21:46 GMT  
		Size: 176.7 MB (176652901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc00abfd97ef0d0d2b1a69a87c12a4bad61c7fbb5a10cf3c78bc1b41fbf135`  
		Last Modified: Wed, 05 Jun 2019 23:21:44 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:05b85724e3c1f616429fdc9946d714b62414cf7a05342b62522eb3edb785b882
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479784011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4438f5f496a35bd0d839a89828829ab7657b42a79680d4ae85f8d4a83f674c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:18:45 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:48 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:53 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:20:15 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:15 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:20:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:16 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:16 GMT
USER solr
# Wed, 05 Jun 2019 23:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df925ee6f23f088d5b8153ff95adc4a0ead59612465c83c24afe0c11997755a1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435487f1e496fe339973a14fcd66b8bcfaaf342451af93b907da7624d99f6e28`  
		Last Modified: Wed, 05 Jun 2019 23:36:19 GMT  
		Size: 74.2 KB (74225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b18727367e57339fc5024c026a5dad2acd140ca91f37c4707791fc01cd4d8`  
		Last Modified: Wed, 05 Jun 2019 23:36:38 GMT  
		Size: 176.6 MB (176586578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ae4a9afbec2f3f47b23bcb31413b313f03a3ccd661e97e74beebebecf44d1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 3.8 KB (3835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.0`

```console
$ docker pull solr@sha256:264b2f3eb16d543350553f6fdc436dce46a8c526757103af401f5fa2f1348cc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.0` - linux; amd64

```console
$ docker pull solr@sha256:a1e855ad1cc1dbb8df96d5a9c34f886d9dfd3d08cb4adf013a46dba8c5e8e524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.2 MB (484192786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff36fc07cc11f3c995bdfaf427e04d6fa1f1159d0aaed0a13e115f6964bfa73a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:55 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:55 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:55 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:56 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:16:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:16:18 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:16:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:16:19 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:16:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:16:19 GMT
USER solr
# Wed, 05 Jun 2019 23:16:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:16:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5051665e4c1d1b11abbe8bfe840b040669e281ffae8cf97c59b4f074d21ec11`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b33157d7086103892e5fa33f268bc2fd17b9027149aa813b06761949f815e06`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 75.2 KB (75227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3540c080a41f58bf37282ac775a3f232970246366ccba9f5d082b50f63f77626`  
		Last Modified: Wed, 05 Jun 2019 23:22:23 GMT  
		Size: 172.9 MB (172934334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4bdb808553a3c66546a324077baf3aa537ac2d74e67be6e0f96c0c138c8859`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.0` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:2a4236ae9b3b4ec01c7a81e067c7c7342173febf62557e066cf8accd0a3b939b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.1 MB (476067105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b95d14b54256cb8d7706e1dba06447be920b0a6e07deabb0d901b612f60141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:22:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:22:36 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:22:36 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:22:38 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:22:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:24:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:24:04 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:24:04 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:24:05 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:24:05 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:24:06 GMT
USER solr
# Wed, 05 Jun 2019 23:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a93ce3d17c164fd3faf2bd4e08ec796409c38205b0dbdfccbc2c3d57431a71`  
		Last Modified: Wed, 05 Jun 2019 23:37:23 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a288a8ff60b0d89140774e94b07bedfb5496f166c19e69499f44b0c34313dfb`  
		Last Modified: Wed, 05 Jun 2019 23:37:22 GMT  
		Size: 75.3 KB (75260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbd3b44514207411d7405c238e24b2426a7e41891e57ace65f0fe79535233a0`  
		Last Modified: Wed, 05 Jun 2019 23:37:43 GMT  
		Size: 172.9 MB (172868634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb822c95118c51ea963d2637df4e9fe344b03d8c0450aff77d7249557abe9e1`  
		Last Modified: Wed, 05 Jun 2019 23:37:23 GMT  
		Size: 3.8 KB (3838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.0.0`

```console
$ docker pull solr@sha256:264b2f3eb16d543350553f6fdc436dce46a8c526757103af401f5fa2f1348cc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.0.0` - linux; amd64

```console
$ docker pull solr@sha256:a1e855ad1cc1dbb8df96d5a9c34f886d9dfd3d08cb4adf013a46dba8c5e8e524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.2 MB (484192786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff36fc07cc11f3c995bdfaf427e04d6fa1f1159d0aaed0a13e115f6964bfa73a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:55 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:55 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:55 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:56 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:16:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:16:18 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:16:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:16:19 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:16:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:16:19 GMT
USER solr
# Wed, 05 Jun 2019 23:16:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:16:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5051665e4c1d1b11abbe8bfe840b040669e281ffae8cf97c59b4f074d21ec11`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b33157d7086103892e5fa33f268bc2fd17b9027149aa813b06761949f815e06`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 75.2 KB (75227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3540c080a41f58bf37282ac775a3f232970246366ccba9f5d082b50f63f77626`  
		Last Modified: Wed, 05 Jun 2019 23:22:23 GMT  
		Size: 172.9 MB (172934334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4bdb808553a3c66546a324077baf3aa537ac2d74e67be6e0f96c0c138c8859`  
		Last Modified: Wed, 05 Jun 2019 23:22:12 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.0.0` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:2a4236ae9b3b4ec01c7a81e067c7c7342173febf62557e066cf8accd0a3b939b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.1 MB (476067105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b95d14b54256cb8d7706e1dba06447be920b0a6e07deabb0d901b612f60141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:22:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:22:36 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:22:36 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:22:38 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:22:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:24:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:24:04 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:24:04 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:24:05 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:24:05 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:24:06 GMT
USER solr
# Wed, 05 Jun 2019 23:24:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a93ce3d17c164fd3faf2bd4e08ec796409c38205b0dbdfccbc2c3d57431a71`  
		Last Modified: Wed, 05 Jun 2019 23:37:23 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a288a8ff60b0d89140774e94b07bedfb5496f166c19e69499f44b0c34313dfb`  
		Last Modified: Wed, 05 Jun 2019 23:37:22 GMT  
		Size: 75.3 KB (75260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbd3b44514207411d7405c238e24b2426a7e41891e57ace65f0fe79535233a0`  
		Last Modified: Wed, 05 Jun 2019 23:37:43 GMT  
		Size: 172.9 MB (172868634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb822c95118c51ea963d2637df4e9fe344b03d8c0450aff77d7249557abe9e1`  
		Last Modified: Wed, 05 Jun 2019 23:37:23 GMT  
		Size: 3.8 KB (3838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.0.0-slim`

```console
$ docker pull solr@sha256:939017e8108f0a7324ea93873933bb78d0f2531adeafec204aedb462cc08f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.0.0-slim` - linux; amd64

```console
$ docker pull solr@sha256:2c7681bf0a261e0b1604ebf2c2a7c46863c95e65c44f9f91bb57c09d74568f91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399498443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129139d167bd5a246612bea451e134877d5638bde41bb0ef9bdb00893b4cfaa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:16:27 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:16:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:16:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:16:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:16:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:16:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:16:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:16:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:16:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:16:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:16:47 GMT
USER solr
# Wed, 05 Jun 2019 23:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:16:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0fdf75cb99f5eb15bedac0363d1fae1d616d7879077154e41b7b46a2d420b4`  
		Last Modified: Wed, 05 Jun 2019 23:22:29 GMT  
		Size: 4.3 KB (4297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b3493b81d1aa9758c32f1fe4a6bb097d039bcb4791fa4a9ae33f1aba2019c3`  
		Last Modified: Wed, 05 Jun 2019 23:22:30 GMT  
		Size: 75.2 KB (75226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4eaa83ae6b3e7cc6abc924c17a8213eec811a70ff2ecf603bc09eb7f0a2cc0`  
		Last Modified: Wed, 05 Jun 2019 23:22:40 GMT  
		Size: 172.9 MB (172934305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c0d0412879d5832cf235551ddab4c563bdca28b35e8f14a061c9eb2b9deb94`  
		Last Modified: Wed, 05 Jun 2019 23:22:29 GMT  
		Size: 3.8 KB (3813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.0.0-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:63b32b8564107aca88248d633138e486703eb6e28ff340502fd3cadb327d7701
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (394037209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571ad7812e72e9fa7b0cf4132fd13570587a355f64da4b2cd912b9ce9d39b9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:24:18 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:24:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:24:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:24:20 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:24:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:25:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:25:44 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:25:45 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:25:45 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:25:46 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:25:46 GMT
USER solr
# Wed, 05 Jun 2019 23:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:25:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a69e25bf7223f668ae1b7e1738023c2eac05e9f4ce08cfdd7aba09c270915f2`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 4.3 KB (4328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fddd1ab51f4646b232c09e58b6bb5dfe92f5d290d46fb5cfbd0d8f26bd15165`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 75.3 KB (75264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f0a19d7ba9da3b7e9217d3e42c6442f61810983bc9ebe0193332cd4c8adf27`  
		Last Modified: Wed, 05 Jun 2019 23:38:14 GMT  
		Size: 172.9 MB (172868626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adccee515e06108dcca5ed97c4cf9f08fa9293d077d3d2082dbd1785dc5d248`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 3.8 KB (3837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.0-slim`

```console
$ docker pull solr@sha256:939017e8108f0a7324ea93873933bb78d0f2531adeafec204aedb462cc08f258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.0-slim` - linux; amd64

```console
$ docker pull solr@sha256:2c7681bf0a261e0b1604ebf2c2a7c46863c95e65c44f9f91bb57c09d74568f91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399498443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129139d167bd5a246612bea451e134877d5638bde41bb0ef9bdb00893b4cfaa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:16:27 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:16:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:16:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:16:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:16:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:16:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:16:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:16:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:16:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:16:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:16:47 GMT
USER solr
# Wed, 05 Jun 2019 23:16:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:16:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0fdf75cb99f5eb15bedac0363d1fae1d616d7879077154e41b7b46a2d420b4`  
		Last Modified: Wed, 05 Jun 2019 23:22:29 GMT  
		Size: 4.3 KB (4297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b3493b81d1aa9758c32f1fe4a6bb097d039bcb4791fa4a9ae33f1aba2019c3`  
		Last Modified: Wed, 05 Jun 2019 23:22:30 GMT  
		Size: 75.2 KB (75226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4eaa83ae6b3e7cc6abc924c17a8213eec811a70ff2ecf603bc09eb7f0a2cc0`  
		Last Modified: Wed, 05 Jun 2019 23:22:40 GMT  
		Size: 172.9 MB (172934305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c0d0412879d5832cf235551ddab4c563bdca28b35e8f14a061c9eb2b9deb94`  
		Last Modified: Wed, 05 Jun 2019 23:22:29 GMT  
		Size: 3.8 KB (3813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.0-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:63b32b8564107aca88248d633138e486703eb6e28ff340502fd3cadb327d7701
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (394037209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571ad7812e72e9fa7b0cf4132fd13570587a355f64da4b2cd912b9ce9d39b9f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:24:18 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:24:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:24:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:24:20 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:24:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:25:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:25:44 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:25:45 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:25:45 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:25:46 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:25:46 GMT
USER solr
# Wed, 05 Jun 2019 23:25:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:25:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a69e25bf7223f668ae1b7e1738023c2eac05e9f4ce08cfdd7aba09c270915f2`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 4.3 KB (4328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fddd1ab51f4646b232c09e58b6bb5dfe92f5d290d46fb5cfbd0d8f26bd15165`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 75.3 KB (75264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f0a19d7ba9da3b7e9217d3e42c6442f61810983bc9ebe0193332cd4c8adf27`  
		Last Modified: Wed, 05 Jun 2019 23:38:14 GMT  
		Size: 172.9 MB (172868626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adccee515e06108dcca5ed97c4cf9f08fa9293d077d3d2082dbd1785dc5d248`  
		Last Modified: Wed, 05 Jun 2019 23:37:51 GMT  
		Size: 3.8 KB (3837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.1`

```console
$ docker pull solr@sha256:9ebd26ca9c6a3c6e9777d0824f6cc07b50c91d4a3c5428e77d0e7dc4b24a15be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.1` - linux; amd64

```console
$ docker pull solr@sha256:63d689c199fb7c2ff7cd1b24b346ccfd42f8319895e175b884e7ca24c29389a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487910315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6186585ed4be458ba4ad5905ed36eb85f07b0201b082c2e2775a6f0c804a37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:14:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:14:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:14:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:13 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:13 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:13 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:13 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:13 GMT
USER solr
# Wed, 05 Jun 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732016639395dc884511521879c4c7866b94cc2c1ca7c1684911d7edb52d3d9`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d84c8605dc0e7d7955cf74d5b536f8d60eec2f768f1590386d1cf4080647e`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 74.2 KB (74189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d493b075b6309ef36d064c376609eccea82b740f89dda9df3d700d6a8efa4670`  
		Last Modified: Wed, 05 Jun 2019 23:21:46 GMT  
		Size: 176.7 MB (176652901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc00abfd97ef0d0d2b1a69a87c12a4bad61c7fbb5a10cf3c78bc1b41fbf135`  
		Last Modified: Wed, 05 Jun 2019 23:21:44 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.1` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:05b85724e3c1f616429fdc9946d714b62414cf7a05342b62522eb3edb785b882
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479784011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4438f5f496a35bd0d839a89828829ab7657b42a79680d4ae85f8d4a83f674c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:18:45 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:48 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:53 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:20:15 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:15 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:20:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:16 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:16 GMT
USER solr
# Wed, 05 Jun 2019 23:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df925ee6f23f088d5b8153ff95adc4a0ead59612465c83c24afe0c11997755a1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435487f1e496fe339973a14fcd66b8bcfaaf342451af93b907da7624d99f6e28`  
		Last Modified: Wed, 05 Jun 2019 23:36:19 GMT  
		Size: 74.2 KB (74225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b18727367e57339fc5024c026a5dad2acd140ca91f37c4707791fc01cd4d8`  
		Last Modified: Wed, 05 Jun 2019 23:36:38 GMT  
		Size: 176.6 MB (176586578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ae4a9afbec2f3f47b23bcb31413b313f03a3ccd661e97e74beebebecf44d1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 3.8 KB (3835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.1.1`

```console
$ docker pull solr@sha256:9ebd26ca9c6a3c6e9777d0824f6cc07b50c91d4a3c5428e77d0e7dc4b24a15be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.1.1` - linux; amd64

```console
$ docker pull solr@sha256:63d689c199fb7c2ff7cd1b24b346ccfd42f8319895e175b884e7ca24c29389a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487910315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6186585ed4be458ba4ad5905ed36eb85f07b0201b082c2e2775a6f0c804a37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:14:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:14:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:14:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:13 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:13 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:13 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:13 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:13 GMT
USER solr
# Wed, 05 Jun 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732016639395dc884511521879c4c7866b94cc2c1ca7c1684911d7edb52d3d9`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d84c8605dc0e7d7955cf74d5b536f8d60eec2f768f1590386d1cf4080647e`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 74.2 KB (74189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d493b075b6309ef36d064c376609eccea82b740f89dda9df3d700d6a8efa4670`  
		Last Modified: Wed, 05 Jun 2019 23:21:46 GMT  
		Size: 176.7 MB (176652901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc00abfd97ef0d0d2b1a69a87c12a4bad61c7fbb5a10cf3c78bc1b41fbf135`  
		Last Modified: Wed, 05 Jun 2019 23:21:44 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.1.1` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:05b85724e3c1f616429fdc9946d714b62414cf7a05342b62522eb3edb785b882
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479784011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4438f5f496a35bd0d839a89828829ab7657b42a79680d4ae85f8d4a83f674c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:18:45 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:48 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:53 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:20:15 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:15 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:20:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:16 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:16 GMT
USER solr
# Wed, 05 Jun 2019 23:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df925ee6f23f088d5b8153ff95adc4a0ead59612465c83c24afe0c11997755a1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435487f1e496fe339973a14fcd66b8bcfaaf342451af93b907da7624d99f6e28`  
		Last Modified: Wed, 05 Jun 2019 23:36:19 GMT  
		Size: 74.2 KB (74225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b18727367e57339fc5024c026a5dad2acd140ca91f37c4707791fc01cd4d8`  
		Last Modified: Wed, 05 Jun 2019 23:36:38 GMT  
		Size: 176.6 MB (176586578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ae4a9afbec2f3f47b23bcb31413b313f03a3ccd661e97e74beebebecf44d1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 3.8 KB (3835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.1.1-slim`

```console
$ docker pull solr@sha256:498dd8936c61f4afba11365b0002d23035ed7970c66e80090aee2dacaa918510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.1.1-slim` - linux; amd64

```console
$ docker pull solr@sha256:386d3353fddded466e9e3c3101e7a9174970be8bfe4ca6cef3c9942f2e0aa88c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403216057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059b384091c56ab5fefcd9c427984e8558b267b77b14b1d0520fedb1def4b239`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:47 GMT
USER solr
# Wed, 05 Jun 2019 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91664da8f5cdaa8bf7dac843a76d4b3b7de1b2591da52b594003b5de98217ec5`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436f492d39bf937cd5008d95091d50fd74894b2e78955242bf17d55bc178a556`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 74.2 KB (74188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0db185f1d2093a43c1003c90ae7002641adb1a443f227b8c9c3608a2def102c`  
		Last Modified: Wed, 05 Jun 2019 23:22:06 GMT  
		Size: 176.7 MB (176652959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0a2833c792710ae0eaf7cdfceaa799ed49b42ec2a8a2a17f79c72fc801b53`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 3.8 KB (3815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.1.1-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:15df9256a0b3089b708dc507c9e172c1614a20e70b0d78e6a0bf9234601b1dc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397754125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6eaf386c04e46efa771ec145592d0a03069accdc922a0350da11150a6d3ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:20:49 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:51 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:22:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:22:17 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:22:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:22:18 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:22:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:22:19 GMT
USER solr
# Wed, 05 Jun 2019 23:22:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:22:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7f5fa3cce38287c653090e02bb64648c7eec289b7d0c9984b66eae21cf842`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4229c305b1e4669916a4ebb953031129fec53260b739be6cb7fd6d8c2a0e7aca`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 74.2 KB (74223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7d4c6df6da56b6f16f233a61f3884ef7aad69e5475c00919b27fdae03cfe30`  
		Last Modified: Wed, 05 Jun 2019 23:37:12 GMT  
		Size: 176.6 MB (176586577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7c6fef443e1098a1dd62dbf6f7fd867efc519657ef05a127c23967679821a`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8.1-slim`

```console
$ docker pull solr@sha256:498dd8936c61f4afba11365b0002d23035ed7970c66e80090aee2dacaa918510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8.1-slim` - linux; amd64

```console
$ docker pull solr@sha256:386d3353fddded466e9e3c3101e7a9174970be8bfe4ca6cef3c9942f2e0aa88c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403216057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059b384091c56ab5fefcd9c427984e8558b267b77b14b1d0520fedb1def4b239`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:47 GMT
USER solr
# Wed, 05 Jun 2019 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91664da8f5cdaa8bf7dac843a76d4b3b7de1b2591da52b594003b5de98217ec5`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436f492d39bf937cd5008d95091d50fd74894b2e78955242bf17d55bc178a556`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 74.2 KB (74188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0db185f1d2093a43c1003c90ae7002641adb1a443f227b8c9c3608a2def102c`  
		Last Modified: Wed, 05 Jun 2019 23:22:06 GMT  
		Size: 176.7 MB (176652959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0a2833c792710ae0eaf7cdfceaa799ed49b42ec2a8a2a17f79c72fc801b53`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 3.8 KB (3815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8.1-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:15df9256a0b3089b708dc507c9e172c1614a20e70b0d78e6a0bf9234601b1dc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397754125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6eaf386c04e46efa771ec145592d0a03069accdc922a0350da11150a6d3ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:20:49 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:51 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:22:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:22:17 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:22:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:22:18 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:22:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:22:19 GMT
USER solr
# Wed, 05 Jun 2019 23:22:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:22:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7f5fa3cce38287c653090e02bb64648c7eec289b7d0c9984b66eae21cf842`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4229c305b1e4669916a4ebb953031129fec53260b739be6cb7fd6d8c2a0e7aca`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 74.2 KB (74223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7d4c6df6da56b6f16f233a61f3884ef7aad69e5475c00919b27fdae03cfe30`  
		Last Modified: Wed, 05 Jun 2019 23:37:12 GMT  
		Size: 176.6 MB (176586577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7c6fef443e1098a1dd62dbf6f7fd867efc519657ef05a127c23967679821a`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:8-slim`

```console
$ docker pull solr@sha256:498dd8936c61f4afba11365b0002d23035ed7970c66e80090aee2dacaa918510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:8-slim` - linux; amd64

```console
$ docker pull solr@sha256:386d3353fddded466e9e3c3101e7a9174970be8bfe4ca6cef3c9942f2e0aa88c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403216057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059b384091c56ab5fefcd9c427984e8558b267b77b14b1d0520fedb1def4b239`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:47 GMT
USER solr
# Wed, 05 Jun 2019 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91664da8f5cdaa8bf7dac843a76d4b3b7de1b2591da52b594003b5de98217ec5`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436f492d39bf937cd5008d95091d50fd74894b2e78955242bf17d55bc178a556`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 74.2 KB (74188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0db185f1d2093a43c1003c90ae7002641adb1a443f227b8c9c3608a2def102c`  
		Last Modified: Wed, 05 Jun 2019 23:22:06 GMT  
		Size: 176.7 MB (176652959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0a2833c792710ae0eaf7cdfceaa799ed49b42ec2a8a2a17f79c72fc801b53`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 3.8 KB (3815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:8-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:15df9256a0b3089b708dc507c9e172c1614a20e70b0d78e6a0bf9234601b1dc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397754125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6eaf386c04e46efa771ec145592d0a03069accdc922a0350da11150a6d3ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:20:49 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:51 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:22:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:22:17 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:22:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:22:18 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:22:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:22:19 GMT
USER solr
# Wed, 05 Jun 2019 23:22:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:22:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7f5fa3cce38287c653090e02bb64648c7eec289b7d0c9984b66eae21cf842`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4229c305b1e4669916a4ebb953031129fec53260b739be6cb7fd6d8c2a0e7aca`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 74.2 KB (74223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7d4c6df6da56b6f16f233a61f3884ef7aad69e5475c00919b27fdae03cfe30`  
		Last Modified: Wed, 05 Jun 2019 23:37:12 GMT  
		Size: 176.6 MB (176586577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7c6fef443e1098a1dd62dbf6f7fd867efc519657ef05a127c23967679821a`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:9ebd26ca9c6a3c6e9777d0824f6cc07b50c91d4a3c5428e77d0e7dc4b24a15be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:63d689c199fb7c2ff7cd1b24b346ccfd42f8319895e175b884e7ca24c29389a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487910315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6186585ed4be458ba4ad5905ed36eb85f07b0201b082c2e2775a6f0c804a37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:14 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:14 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:15 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:15 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:24:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:24:56 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:14:45 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:14:46 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:14:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:14:51 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:14:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:14:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:14:52 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:14:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:13 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:13 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:13 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:13 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:13 GMT
USER solr
# Wed, 05 Jun 2019 23:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c712c33bb9d3573c89e715ba91a811fdaa757bb5d4473303435360743375d901`  
		Last Modified: Wed, 29 May 2019 21:24:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b70330725b403aa947938130cb3b017150c2a4bc5ed3ffd4a6bec81d8b98cac`  
		Last Modified: Wed, 05 Jun 2019 22:27:30 GMT  
		Size: 195.0 MB (194950709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720061d29e00bb907f3df79384fa74506d13924302f682571a712699b18ea156`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 761.4 KB (761435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4732016639395dc884511521879c4c7866b94cc2c1ca7c1684911d7edb52d3d9`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9d84c8605dc0e7d7955cf74d5b536f8d60eec2f768f1590386d1cf4080647e`  
		Last Modified: Wed, 05 Jun 2019 23:21:34 GMT  
		Size: 74.2 KB (74189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d493b075b6309ef36d064c376609eccea82b740f89dda9df3d700d6a8efa4670`  
		Last Modified: Wed, 05 Jun 2019 23:21:46 GMT  
		Size: 176.7 MB (176652901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cc00abfd97ef0d0d2b1a69a87c12a4bad61c7fbb5a10cf3c78bc1b41fbf135`  
		Last Modified: Wed, 05 Jun 2019 23:21:44 GMT  
		Size: 3.8 KB (3814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:05b85724e3c1f616429fdc9946d714b62414cf7a05342b62522eb3edb785b882
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479784011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4438f5f496a35bd0d839a89828829ab7657b42a79680d4ae85f8d4a83f674c69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:50:29 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:50:29 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:50:30 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:50:31 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:50:32 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:55:44 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:55:45 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:18:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:18:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:18:43 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:18:45 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:18:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:18:48 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:18:53 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:20:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:20:15 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:20:15 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:20:15 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:20:16 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:20:16 GMT
USER solr
# Wed, 05 Jun 2019 23:20:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:20:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6605ac86160fde23bbacf3379cda3a9ff1cc069796e7359f94657b39efd4521f`  
		Last Modified: Wed, 29 May 2019 20:52:27 GMT  
		Size: 4.8 MB (4841668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d6d2b7c0684ee69b8a6de74d4d7c86d70ca8fb79c7518f0ec4950c1b8f3b2f`  
		Last Modified: Wed, 29 May 2019 20:52:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb31d9ce6e35d05f54d11afeee79df553bfa58d71332fa58b2367732d33dd54`  
		Last Modified: Wed, 05 Jun 2019 22:57:20 GMT  
		Size: 192.5 MB (192544159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e86b5e594917195307e9291768e689dd2ddffda2efbb4c647909fb775581af`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 752.0 KB (752050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df925ee6f23f088d5b8153ff95adc4a0ead59612465c83c24afe0c11997755a1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435487f1e496fe339973a14fcd66b8bcfaaf342451af93b907da7624d99f6e28`  
		Last Modified: Wed, 05 Jun 2019 23:36:19 GMT  
		Size: 74.2 KB (74225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b18727367e57339fc5024c026a5dad2acd140ca91f37c4707791fc01cd4d8`  
		Last Modified: Wed, 05 Jun 2019 23:36:38 GMT  
		Size: 176.6 MB (176586578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ae4a9afbec2f3f47b23bcb31413b313f03a3ccd661e97e74beebebecf44d1`  
		Last Modified: Wed, 05 Jun 2019 23:36:18 GMT  
		Size: 3.8 KB (3835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:slim`

```console
$ docker pull solr@sha256:498dd8936c61f4afba11365b0002d23035ed7970c66e80090aee2dacaa918510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:386d3353fddded466e9e3c3101e7a9174970be8bfe4ca6cef3c9942f2e0aa88c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.2 MB (403216057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059b384091c56ab5fefcd9c427984e8558b267b77b14b1d0520fedb1def4b239`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:20:47 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 21:20:47 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:20:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 21:20:48 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:25:24 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:25:27 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:15:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:15:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:15:26 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:15:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:15:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:15:28 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:15:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:15:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:15:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:15:47 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:15:47 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:15:47 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:15:47 GMT
USER solr
# Wed, 05 Jun 2019 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:15:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b8f7f2d18a7c0e27a7ff54d3747b00021b333a19695f932680eacd16a74c31`  
		Last Modified: Wed, 29 May 2019 21:25:00 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a2b5e6f53ac998862f6d0709bb1b58a909461f827c86668503928b92824f6b`  
		Last Modified: Wed, 05 Jun 2019 22:27:53 GMT  
		Size: 195.2 MB (195214288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187924fd2b0b88b469d84d5416c07edf60a43acd0a7bc7f51ab10844bb22d32d`  
		Last Modified: Wed, 05 Jun 2019 23:21:56 GMT  
		Size: 5.9 MB (5871170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91664da8f5cdaa8bf7dac843a76d4b3b7de1b2591da52b594003b5de98217ec5`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436f492d39bf937cd5008d95091d50fd74894b2e78955242bf17d55bc178a556`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 74.2 KB (74188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0db185f1d2093a43c1003c90ae7002641adb1a443f227b8c9c3608a2def102c`  
		Last Modified: Wed, 05 Jun 2019 23:22:06 GMT  
		Size: 176.7 MB (176652959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee0a2833c792710ae0eaf7cdfceaa799ed49b42ec2a8a2a17f79c72fc801b53`  
		Last Modified: Wed, 05 Jun 2019 23:21:54 GMT  
		Size: 3.8 KB (3815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:15df9256a0b3089b708dc507c9e172c1614a20e70b0d78e6a0bf9234601b1dc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397754125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a6eaf386c04e46efa771ec145592d0a03069accdc922a0350da11150a6d3ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 29 May 2019 20:51:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 20:51:21 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 20:51:21 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Wed, 29 May 2019 20:51:22 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:51:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 20:51:23 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Wed, 29 May 2019 20:51:24 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Wed, 05 Jun 2019 22:56:22 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Wed, 05 Jun 2019 22:56:23 GMT
CMD ["jshell"]
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Jun 2019 23:20:35 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 05 Jun 2019 23:20:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Jun 2019 23:20:48 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:20:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.1.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.1.1/solr-8.1.1.tgz SOLR_SHA256=b515598c11f53fe28d682e3d71238642e9f34509194e3c4746e39bb7d7bb46a1 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Wed, 05 Jun 2019 23:20:49 GMT
ENV GOSU_VERSION=1.11
# Wed, 05 Jun 2019 23:20:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Jun 2019 23:20:51 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Wed, 05 Jun 2019 23:20:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Jun 2019 23:22:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Wed, 05 Jun 2019 23:22:17 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Wed, 05 Jun 2019 23:22:18 GMT
VOLUME [/var/solr]
# Wed, 05 Jun 2019 23:22:18 GMT
EXPOSE 8983
# Wed, 05 Jun 2019 23:22:19 GMT
WORKDIR /opt/solr
# Wed, 05 Jun 2019 23:22:19 GMT
USER solr
# Wed, 05 Jun 2019 23:22:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:22:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbf559032ddd9c75ed7f0915425417fc46f1335bb41519f8112204b6908e068`  
		Last Modified: Wed, 29 May 2019 20:53:20 GMT  
		Size: 2.6 MB (2575456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944a723b1afcf0373fe412e0ed34d0c4ebf3c048b2a9b98f982a843f25155e60`  
		Last Modified: Wed, 29 May 2019 20:53:19 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c29f924bc487d950cc9493517228f85aea32ccbb5a3cb6fc9305d0e8dc09c5`  
		Last Modified: Wed, 05 Jun 2019 22:58:05 GMT  
		Size: 192.8 MB (192802055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4690b74d99b81c6cc73239a7bb29ae912f88b57a3230884f62873d7e0dd9f5bd`  
		Last Modified: Wed, 05 Jun 2019 23:36:48 GMT  
		Size: 5.4 MB (5373607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d7f5fa3cce38287c653090e02bb64648c7eec289b7d0c9984b66eae21cf842`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4229c305b1e4669916a4ebb953031129fec53260b739be6cb7fd6d8c2a0e7aca`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 74.2 KB (74223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7d4c6df6da56b6f16f233a61f3884ef7aad69e5475c00919b27fdae03cfe30`  
		Last Modified: Wed, 05 Jun 2019 23:37:12 GMT  
		Size: 176.6 MB (176586577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7c6fef443e1098a1dd62dbf6f7fd867efc519657ef05a127c23967679821a`  
		Last Modified: Wed, 05 Jun 2019 23:36:47 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
