## `solr:7-slim`

```console
$ docker pull solr@sha256:7830aebc9035cd538a86eba95fe75235437720955a14a88536bcdeca9f2b8b77
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

### `solr:7-slim` - linux; amd64

```console
$ docker pull solr@sha256:b49d770e51bd54a9c4c761fbace6842f2b0536fe43f0ec08728eed35164a2546
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275045400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceef3c8f3cab503738b6265ffc94137c1641cc6ea6fb37f21c179c0774381fc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 00:25:12 GMT
ADD file:f91110c5482cb29a759356df06fea755606755e05306ca55f921f44a5b9470fb in / 
# Tue, 17 Jul 2018 00:25:12 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:09:54 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:09:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:14:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:14:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:14:15 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 06:14:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 06:16:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:28:10 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 17:28:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 17:28:24 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:28:25 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:28:25 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 17:28:25 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 17:28:26 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 17:28:28 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 17:28:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 17:28:53 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 17:28:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 17:28:55 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 17:28:55 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 17:28:55 GMT
USER [solr]
# Tue, 17 Jul 2018 17:28:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 17:28:56 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:21c77be511c9830e11f7da7f8796340d6103e5b1e4124bb1639947aa0f11c19e`  
		Last Modified: Tue, 17 Jul 2018 00:40:27 GMT  
		Size: 26.2 MB (26153708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a9bc4c131a474462e235e575844d60055d3904745b1cd7e9bcb0bbd1ed82b7`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 460.1 KB (460144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85403034af41f2da36b479c531eb04f843b0af4715e65ee84a91e1fbb5f1bf9`  
		Last Modified: Tue, 17 Jul 2018 06:33:27 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aab55a95cbe8505bad8207b291a71574247d047b00b7b0256d27cd342623b79`  
		Last Modified: Tue, 17 Jul 2018 06:45:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570df493dd5bf1f6cdaad88b8d4ea747194100b23e1901d470f00cdc58ed5b07`  
		Last Modified: Tue, 17 Jul 2018 06:53:03 GMT  
		Size: 76.4 MB (76354303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfe2e3590d553743fa6482ed468ded02d8953a50d6e2ddbffc32a3de2d5e09`  
		Last Modified: Tue, 17 Jul 2018 17:42:12 GMT  
		Size: 4.0 MB (4027637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bb3614f010153e24ecdff85e070138744a678dc2ce33ebf9ec4772fde318e9`  
		Last Modified: Tue, 17 Jul 2018 17:42:10 GMT  
		Size: 4.9 KB (4904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4a2b63723d69cf6ee631302f70859cfeb1c9d4aa848e1e5c21460d020fa2a1`  
		Last Modified: Tue, 17 Jul 2018 17:42:09 GMT  
		Size: 74.4 KB (74381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da467d6bc44fe573a19c91988370813a94274339a16bc8217f564de9664e7518`  
		Last Modified: Tue, 17 Jul 2018 17:42:24 GMT  
		Size: 168.0 MB (167960429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da56db31bc0321aba21ab51971801f69cf68cce02dbbeea47ca6692551fcd3a3`  
		Last Modified: Tue, 17 Jul 2018 17:42:09 GMT  
		Size: 4.7 KB (4749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0b559b35cbd1562b482f59e14244d3aefa0c9fe974a808c7f21b4fb5f591f1`  
		Last Modified: Tue, 17 Jul 2018 17:42:08 GMT  
		Size: 4.8 KB (4777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:5f773a2ae721db3c8506e21b3cc4918ad408ac899f60640f2ea9e25ca06c1a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257591823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33618aceeff47c8bff2c963be297d83c41b927652b6ac775b2715b9efa762a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 08:54:21 GMT
ADD file:0107574479f07d37c0ea231a8738bc043ef67d41f1a4730c4004055700bb0492 in / 
# Tue, 17 Jul 2018 08:54:22 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:14:16 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:16:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:16:38 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:16:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 09:16:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 09:18:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 14:49:33 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 14:49:34 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 14:49:47 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:49:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:49:51 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 14:49:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 14:49:53 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 14:49:54 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 14:50:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 14:50:18 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 14:50:19 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 14:50:26 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 14:50:26 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 14:50:34 GMT
USER [solr]
# Tue, 17 Jul 2018 14:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:50:35 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:acea72f1ecd7951289e77c440c4f3aaf77848b2faad76bd7e8db097abfd2d14d`  
		Last Modified: Tue, 17 Jul 2018 09:06:47 GMT  
		Size: 24.1 MB (24086179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f1b1d984fcd3ca8b479950705e6b86d08f519f9188906659654128bb914826`  
		Last Modified: Tue, 17 Jul 2018 09:24:51 GMT  
		Size: 453.7 KB (453659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f488e93cd0d679131e5e9688de12c41011ef24684777d7b3752a1f7b3ff8f8`  
		Last Modified: Tue, 17 Jul 2018 09:24:50 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7ade75d811335a8b747fc901bd34343e48e667e2625f9203c81b8c1b492afb`  
		Last Modified: Tue, 17 Jul 2018 09:24:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4e6b4d96b583f06b6781964966c8ebc008d3401898ea13d78e8187028c68b2`  
		Last Modified: Tue, 17 Jul 2018 09:28:42 GMT  
		Size: 61.3 MB (61258433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0eb83d5b67bcdc1bee82022b17bf4992ac209a025ca84b844de4676977af5d`  
		Last Modified: Tue, 17 Jul 2018 15:01:53 GMT  
		Size: 3.8 MB (3753302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba623d7093a7b09fc38a0e4e7dfd93db3187396fda1796b1c2522a3037b1f8de`  
		Last Modified: Tue, 17 Jul 2018 15:01:51 GMT  
		Size: 4.8 KB (4837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1af2a719cb22ae5d38e7990be103b7c8e6d75dc66f52659cc9ac3d10777d181`  
		Last Modified: Tue, 17 Jul 2018 15:01:51 GMT  
		Size: 74.4 KB (74431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c84d89003f1d3e4b289805c687bf38d702fda283299fe04711764fb48021da`  
		Last Modified: Tue, 17 Jul 2018 15:02:09 GMT  
		Size: 168.0 MB (167951056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666bb87e73ec497771263510357fcdae20e7dbed6c736bec37f7ee03c4887d7a`  
		Last Modified: Tue, 17 Jul 2018 15:01:51 GMT  
		Size: 4.8 KB (4777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78659e4004b30def55d862e177f6842d5672f3f1404c1fe0a283bcd6cd1209cd`  
		Last Modified: Tue, 17 Jul 2018 15:01:51 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:e8f17bbdcb156c6e29effb063f746503db1c944f392095d2e9ba7768b2b470bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257153367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9782a8897117cc0e4562ff45fdb1bd7541949a7b6973c3b6bbe71251b04ef0f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:40 GMT
ADD file:430c173aee26cd9ee26f12a79095a7590ef88c7c48a0ae19a07a09942eaae79a in / 
# Tue, 17 Jul 2018 12:03:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:34:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:37:47 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 12:37:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 12:39:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:00:09 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 17:00:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 17:00:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:00:20 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:00:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 17:00:21 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 17:00:22 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 17:00:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 17:00:48 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 17:00:49 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 17:00:51 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 17:00:51 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 17:00:52 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 17:00:52 GMT
USER [solr]
# Tue, 17 Jul 2018 17:00:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 17:00:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:1e5341b5f8a7f0c7e651d696478846f375e478fc35a15daad21057ed34c86aa0`  
		Last Modified: Tue, 17 Jul 2018 12:16:07 GMT  
		Size: 22.1 MB (22054548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201706a9d8742be6b39b2112a52a81180a89c547979584ec52ab950ef13a4768`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 436.3 KB (436272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db9f0721f2ca238b0a84c406f829b0b7c9a960dd91b6ebd65d2e4825db85f79`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ed576d8b5e79e9f11a620b7f8ba0faa366e3fa9dbf558f0c98439c6eefb3e0`  
		Last Modified: Tue, 17 Jul 2018 12:59:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a6bc638083ff9773474892a1bb51074f9d16846cd087972c7e7ae43ee6a8b9`  
		Last Modified: Tue, 17 Jul 2018 13:02:48 GMT  
		Size: 63.2 MB (63205503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6f9c6c448ff02cce87c154607a16fdd1f38f593f36867c8beb0e2f3dc019fb`  
		Last Modified: Tue, 17 Jul 2018 17:08:50 GMT  
		Size: 3.4 MB (3432757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ed4a9a02f1c44b3bbe6d15415771f00d840e934cb471f19686f6c08b3bdec4`  
		Last Modified: Tue, 17 Jul 2018 17:08:48 GMT  
		Size: 4.8 KB (4837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101428ffd1ad850e3e3f1beb6bddcc2d6052c04c8b574d8ec614d6a033a75959`  
		Last Modified: Tue, 17 Jul 2018 17:08:47 GMT  
		Size: 74.4 KB (74410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2c778514b92ab83c62bbcf32b47c8e71be01118dfa906f163e287346daf560`  
		Last Modified: Tue, 17 Jul 2018 17:09:09 GMT  
		Size: 167.9 MB (167935114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ef381b4ec018dc3d7b0ab50df6d7da5498b5b509e844858c298edb4ad8ded7`  
		Last Modified: Tue, 17 Jul 2018 17:08:48 GMT  
		Size: 4.8 KB (4775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd4c13ee68bf0569c7e606f656e5d44267709d3d3a903b499aba47d9f56852e`  
		Last Modified: Tue, 17 Jul 2018 17:08:48 GMT  
		Size: 4.8 KB (4784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:4baea484930d46a1cb3a354cd5660cc10ec402d89106505c07a95251f4c875e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260588062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931ae318cb244b01ab466433da6af53bb3983b3ca9ba1899260b0e51eed8d433`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 08:44:27 GMT
ADD file:7441783fb02cfd0ec33462b944c21331e3ad1da6f38a9c835f677cb88c6dd7ec in / 
# Tue, 17 Jul 2018 08:44:33 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:56:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:56:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:57:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 10:06:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 10:06:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 10:06:39 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 10:06:40 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 22:19:42 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 22:19:43 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 22:20:27 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 22:20:28 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 22:20:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 22:20:30 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 22:20:34 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 22:20:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 22:22:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 22:22:22 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 22:22:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 22:22:36 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 22:22:36 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 22:22:38 GMT
USER [solr]
# Tue, 17 Jul 2018 22:22:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 22:22:50 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:458ba916572f94d66f19aa3ff0115bc9864ed4d91c67787dcfcbb4b00bfbdb97`  
		Last Modified: Tue, 17 Jul 2018 08:53:47 GMT  
		Size: 23.5 MB (23468736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e2b81cd49e56ea3c4cae916184f441c675aa527aa693a54010d266d76746f7`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 445.0 KB (445018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a478f77447653d89e7bb16b1270e51445b598b0c48ed8f7046fcc124bae1ae83`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01739fd7fc001c331d8e1198f0fbba5b85522f69feaf74321f78180073301d`  
		Last Modified: Tue, 17 Jul 2018 10:31:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c460314301d3de965bafb25508cbcfd231ec0fa68863eef71ddfc8a32b866b5`  
		Last Modified: Tue, 17 Jul 2018 10:35:45 GMT  
		Size: 64.7 MB (64683933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a332535bf879d3dec6d8edfd24c5374550885021db42b083de08f1500d61b9`  
		Last Modified: Tue, 17 Jul 2018 22:55:53 GMT  
		Size: 4.0 MB (3972620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff231327f7509d77f317217f155c5eca703e0d8ea5b341b48c990add793ea50`  
		Last Modified: Tue, 17 Jul 2018 22:55:49 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f383b697ce31762dd981ebe029811b96305ceb527e9365938b61c09857d87794`  
		Last Modified: Tue, 17 Jul 2018 22:55:49 GMT  
		Size: 74.4 KB (74413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b641b13ed17046f2bb31d38f0b7623987889192df6e8fba40fb5d4e411ed37a0`  
		Last Modified: Tue, 17 Jul 2018 22:56:12 GMT  
		Size: 167.9 MB (167928499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47439a65e129e3118f1c8d4c105b732257d5bb6e00b19332927c0559d56ebec7`  
		Last Modified: Tue, 17 Jul 2018 22:55:49 GMT  
		Size: 4.8 KB (4752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed825a1844fea86f943e1df11868eb117f60a5fb2e17a0956a0c721f268f7cc`  
		Last Modified: Tue, 17 Jul 2018 22:55:49 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; 386

```console
$ docker pull solr@sha256:ad1ee623efdfa127c5245d824fc33081e576602c462b33bac9fa6e0b0cb122f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280562384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ec3e965da80b379d5e32c02a3e4a00ae02f15f4133859c59d836c9419a32ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 10:47:10 GMT
ADD file:20144dcfd227e7e2fd2fa000865bff7a8586b26f763501c4602235f1d4f04119 in / 
# Tue, 17 Jul 2018 10:47:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:22:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:22:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:25:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 11:27:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:50:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 19:50:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 19:50:41 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:50:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:50:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 19:50:50 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 19:50:51 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 19:50:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 19:51:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 19:51:26 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 19:51:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 19:51:27 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 19:51:27 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 19:51:27 GMT
USER [solr]
# Tue, 17 Jul 2018 19:51:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:51:28 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5dfc5302b4bfc84b249f67f2e7094fdf4be54645eb3b6ce014c0c7ecca1e6df4`  
		Last Modified: Tue, 17 Jul 2018 11:04:29 GMT  
		Size: 26.8 MB (26847422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f3a405923c070ef2fc1a30ce2d9036eee908d3d315c21569898eb8390c12e`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 468.8 KB (468803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d96811d096ea29f146e1f9e59c6100f66189bee526673d4cc256ae946095fe`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c87cc8b7a196c1115781e18b928f3a64611eb3b77eff6bd62a2084d3cc5a61`  
		Last Modified: Tue, 17 Jul 2018 11:49:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013dda71481cb9e98f785f6268b5d9635376777426f0362bfe5be27561ada873`  
		Last Modified: Tue, 17 Jul 2018 11:55:10 GMT  
		Size: 80.9 MB (80900384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856789a404cc6988396222f09604667ef8e49c508d00ed09293e17f5ab4ea6a3`  
		Last Modified: Tue, 17 Jul 2018 20:08:39 GMT  
		Size: 4.3 MB (4316703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61ffd2c66f0a7ede09d3c357a5a672808cab84df5a261290111cea8a46e0ad4`  
		Last Modified: Tue, 17 Jul 2018 20:08:35 GMT  
		Size: 4.8 KB (4838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f10badab3068bc10f1cb1dc155477afad4dc6fb9bba61c72e6dfda15c79c178`  
		Last Modified: Tue, 17 Jul 2018 20:08:35 GMT  
		Size: 74.4 KB (74392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076bf9eeecb951bc10f7524531c631c2bfbf70b98840d815abcdebd63c5964db`  
		Last Modified: Tue, 17 Jul 2018 20:08:55 GMT  
		Size: 167.9 MB (167939934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b047e6e7ce29a042da2446a18336e857409b80b62a9e75f6dfa70a564fb55354`  
		Last Modified: Tue, 17 Jul 2018 20:08:35 GMT  
		Size: 4.8 KB (4755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7411116dcd0fbe1a96dbb863b4be4a04f9a8a8cc4c1d71bb4b552d2d507ddc`  
		Last Modified: Tue, 17 Jul 2018 20:08:35 GMT  
		Size: 4.8 KB (4785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:c3487cf020d198dbc7720c2c327cac4ec2370735fc5e3590623adcfb412d6a5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266151197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc638673b689488dc61cd18c24b79421341cda9937c9283a2a19a615a04c334`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:51 GMT
ADD file:2854a5536a6cd3d364473dbde290890875599447fe57e02214642a7ea4c4199a in / 
# Tue, 17 Jul 2018 08:18:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:49:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:05:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:05:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 09:05:45 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 09:05:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 09:15:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 19:11:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 19:11:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 19:12:00 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:12:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:12:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 19:12:03 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 19:12:06 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 19:12:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 19:13:39 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 19:13:44 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 19:13:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 19:13:55 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 19:13:56 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 19:13:57 GMT
USER [solr]
# Tue, 17 Jul 2018 19:13:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 19:14:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c0079deb5131e41ff48e218a11dc6d4aaf2ee6f48d4674431d4da149f01bd944`  
		Last Modified: Tue, 17 Jul 2018 08:24:11 GMT  
		Size: 27.4 MB (27423639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf7a34d4ae23534bc74ed18c6c3b2d4528589acd4a6c4ed1172442e070315e5`  
		Last Modified: Tue, 17 Jul 2018 09:43:03 GMT  
		Size: 454.8 KB (454843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189ec7f1e039011f776c44f0becd3e5065e0a06e25dca83d56e0698d7c16fdc`  
		Last Modified: Tue, 17 Jul 2018 09:43:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb42b4f85888ec77389f7da02b093a0b3c84dec414a590fd40f586afaf4ff`  
		Last Modified: Tue, 17 Jul 2018 09:51:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606d5fdf5e4b3eb78bbad9561277649c343eb5731e2446f39427147130195c0c`  
		Last Modified: Tue, 17 Jul 2018 09:56:36 GMT  
		Size: 65.9 MB (65920797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316888048c7d87ea22ca90201f734e8f2e50e02e312f3637f405ab9047946cc7`  
		Last Modified: Tue, 17 Jul 2018 19:47:18 GMT  
		Size: 4.3 MB (4332771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583fbe167eed6f4b86b702cce3dd1eb0bb864c289e6f0e46e2dd57e7e5471bc`  
		Last Modified: Tue, 17 Jul 2018 19:47:13 GMT  
		Size: 4.9 KB (4905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cf3ec224966ed8210f270971a75fcd65379bd14b418d225e1dfe312f22cba7`  
		Last Modified: Tue, 17 Jul 2018 19:47:13 GMT  
		Size: 74.4 KB (74447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309e410d1bcec7f23a5d37a44c4fb3de85d8e1f3000d70d6807e10e20424739e`  
		Last Modified: Tue, 17 Jul 2018 19:47:37 GMT  
		Size: 167.9 MB (167929870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1a2983a8fe930e25548f8714c04b655af96ee80fc655619754cca548e06936`  
		Last Modified: Tue, 17 Jul 2018 19:47:13 GMT  
		Size: 4.8 KB (4777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02c07c7ab5c39fda21350fe666a09afb7f4c3d4374aa84b63c6831e7fe2a251`  
		Last Modified: Tue, 17 Jul 2018 19:47:13 GMT  
		Size: 4.8 KB (4779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; s390x

```console
$ docker pull solr@sha256:4a4fa68afcaadf08748f2835c0017af9f220cde93b4e937544904f2c83e3ce49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263247398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e492549668db682e4ba863da8eefaa6d127030527521795fe1c9fe54339fdd8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:33 GMT
ADD file:34516dd4f3a5de10b651fdb63328fddb718471eaf74d2efaa6760e1cc35f585c in / 
# Tue, 17 Jul 2018 11:42:34 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:03:10 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:03:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:05:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 12:05:17 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 12:06:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 15:08:32 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 15:08:32 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 15:08:40 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:08:41 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 15:08:41 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 15:08:42 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 17 Jul 2018 15:08:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 17 Jul 2018 15:08:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 17 Jul 2018 15:08:58 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 17 Jul 2018 15:08:59 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 17 Jul 2018 15:08:59 GMT
EXPOSE 8983/tcp
# Tue, 17 Jul 2018 15:08:59 GMT
WORKDIR /opt/solr
# Tue, 17 Jul 2018 15:08:59 GMT
USER [solr]
# Tue, 17 Jul 2018 15:08:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 15:09:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:1a7175b896da3e09b9a3ca6e3eb08f48c4a4243431b90adbec26e8baa7abec49`  
		Last Modified: Tue, 17 Jul 2018 11:45:48 GMT  
		Size: 25.1 MB (25130390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7fd283a35bc996c3e40072f47e06f5a1863d130778afd8486985973fe079c`  
		Last Modified: Tue, 17 Jul 2018 12:10:30 GMT  
		Size: 470.9 KB (470909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36a405f4357de759ca613cac9db408120a959b381a08b4c3ca780fe0e66965`  
		Last Modified: Tue, 17 Jul 2018 12:10:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9036c33525890fd71c86b6384e69ece5f4ef4ffab9a39099589053c95738977a`  
		Last Modified: Tue, 17 Jul 2018 12:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d3100d922b63296525c0c248e168f1d5d7a32a51a0ef1b0aff03e3981738a8`  
		Last Modified: Tue, 17 Jul 2018 12:14:28 GMT  
		Size: 65.6 MB (65648321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d72dfb5a7b3d1fa4ce0a52ca61f4ec87f11d5cf0580d8c00015af5ddc3e0d`  
		Last Modified: Tue, 17 Jul 2018 15:14:44 GMT  
		Size: 4.0 MB (3962132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7645e9db9080ece239dc2e79d3e1d34545438b49de3f93d77648e777940d704d`  
		Last Modified: Tue, 17 Jul 2018 15:14:43 GMT  
		Size: 4.9 KB (4942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911e4cc7f7b56794722a18e36fa2674630097ba12b877b0962f5405d16fa8416`  
		Last Modified: Tue, 17 Jul 2018 15:14:43 GMT  
		Size: 74.4 KB (74378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccedeb70f6bc2d40ec4b62cd8d338c682381bf0beae2799a18f0d509895099f`  
		Last Modified: Tue, 17 Jul 2018 15:14:54 GMT  
		Size: 167.9 MB (167946427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc836f5551656e79fd48f8f83849b050bbece490587c2f736ff0851c1dae600`  
		Last Modified: Tue, 17 Jul 2018 15:14:43 GMT  
		Size: 4.7 KB (4749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdf99b2da5917dca91c0e1928250a8585819760f128eddb736cc8807a5d689d`  
		Last Modified: Tue, 17 Jul 2018 15:14:45 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
