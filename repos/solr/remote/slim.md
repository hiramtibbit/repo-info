## `solr:slim`

```console
$ docker pull solr@sha256:b0bd76a8f0ab56d50c1ceb3ccb307efb3c9cfc0352abd8b2e79a7274640aa33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `solr:slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:0062247e454463972e3d8840443dce6997a066eff74e98c436e92e969edaa530
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.1 MB (252053634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df23f02f3e5f32d74dbd1b0b319eb8388d3c289abe806b8e117641693f9df09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:42:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:42:20 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:42:20 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:04:24 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:06:18 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:06:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 08:49:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 14 Apr 2018 08:49:08 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 14 Apr 2018 08:49:23 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 08:49:24 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 08:49:25 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 14 Apr 2018 08:49:26 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 14 Apr 2018 08:49:43 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 14 Apr 2018 08:49:43 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 14 Apr 2018 08:49:44 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 14 Apr 2018 08:49:44 GMT
EXPOSE 8983/tcp
# Sat, 14 Apr 2018 08:49:45 GMT
WORKDIR /opt/solr
# Sat, 14 Apr 2018 08:49:45 GMT
USER [solr]
# Sat, 14 Apr 2018 08:49:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Apr 2018 08:49:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d53ef6ceaeefa22395981d0871593abdf315d62946258906c10c78378424bd2`  
		Last Modified: Wed, 14 Mar 2018 23:01:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ee72e00db1ec221beadb93954960dbae55a4101ae2563b8b4f26818118ce`  
		Last Modified: Wed, 14 Mar 2018 23:01:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084a583f8ead937844e0b640a548e1fa9e03389a3485c64a8f8413153f3bfed4`  
		Last Modified: Fri, 06 Apr 2018 18:17:23 GMT  
		Size: 61.9 MB (61925840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec227bb54913f9b68d3ea31ae6182746bc64bfbb8fd5d71f0bfe9f1616d9010e`  
		Last Modified: Sat, 14 Apr 2018 08:51:30 GMT  
		Size: 3.7 MB (3745522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b083480e67935eae17007d6ef5507e84c31e1a22583bf15eb90b23b3bbbf00c8`  
		Last Modified: Sat, 14 Apr 2018 08:51:28 GMT  
		Size: 4.9 KB (4876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14961789ccedf0aeff0f7f18158bb940c9dbd6192b2679bca9f249f656f6b9af`  
		Last Modified: Sat, 14 Apr 2018 08:51:28 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bd2f42777060a5e5db42db68436a959651605252d3a612ca80f8454d6ff920`  
		Last Modified: Sat, 14 Apr 2018 08:51:48 GMT  
		Size: 162.2 MB (162192716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d681173eef5fb63e6b3a7fc68006934dc0480dffdcfab386589d428d610b7b3`  
		Last Modified: Sat, 14 Apr 2018 08:51:28 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a447f013f6e4fd1d72b959bd11608879abb4e10842817429d8fdd9cd2fd8e619`  
		Last Modified: Sat, 14 Apr 2018 08:51:28 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:e56011c312155adb1a0b799aee3049c3aa5de0f107e0117c609a259134ea7870
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254849747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d171a317d75cbf5388d3fcbdc855e30c726b6949f9594c53336ef133ba43de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 17:28:31 GMT
ADD file:e02f4f3766155e52cc84a63120d6a2789b8ecbc9d3d5311e6fde66f676f7bb09 in / 
# Wed, 14 Mar 2018 17:28:32 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:20:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:20:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:20:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:20:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:31:12 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:36:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:38:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 08:44:38 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 14 Apr 2018 08:44:38 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 14 Apr 2018 08:45:13 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 08:45:14 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 08:45:16 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 14 Apr 2018 08:45:18 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 14 Apr 2018 08:46:16 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 14 Apr 2018 08:46:17 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 14 Apr 2018 08:46:19 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 14 Apr 2018 08:46:20 GMT
EXPOSE 8983/tcp
# Sat, 14 Apr 2018 08:46:20 GMT
WORKDIR /opt/solr
# Sat, 14 Apr 2018 08:46:21 GMT
USER [solr]
# Sat, 14 Apr 2018 08:46:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Apr 2018 08:46:22 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:793dde53d6e905ab81ddaae8c8ff711e51c5782e6ff5c8065a2f2017b116e00c`  
		Last Modified: Wed, 14 Mar 2018 17:43:12 GMT  
		Size: 23.1 MB (23087383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd912422d8771b9bce422bc6af0c49132976576aa3834e0baccfc7c50ebd2ef9`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 445.1 KB (445107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d547b26b9f7cb3ede348dd4e8f8d68fbb9c762a4bcd74738fd220c848c542972`  
		Last Modified: Wed, 14 Mar 2018 21:22:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b497df78fddfa0a48758ce249e8008ee03e6e16ab3325b17130d54deacb85a1`  
		Last Modified: Wed, 14 Mar 2018 21:22:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06fb368244bb03bfe7a88fe8e91080fa8c60afab6012195266d2a7f42a39a80`  
		Last Modified: Fri, 06 Apr 2018 19:27:04 GMT  
		Size: 65.4 MB (65402124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0ecac2464b84bd64e20d3b754075aaf43826315fe4fe9a1a58c318af2fd129`  
		Last Modified: Sat, 14 Apr 2018 08:55:40 GMT  
		Size: 3.7 MB (3706966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c917b6901f66fba1f11c6ee063a7de88e5268264028cfbd7198055a0cf885c`  
		Last Modified: Sat, 14 Apr 2018 08:55:36 GMT  
		Size: 5.0 KB (4981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5c43da7024041ad878dca29b9385c2c393aae79a806c96284c55e1151ed621`  
		Last Modified: Sat, 14 Apr 2018 08:55:36 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a760d95987458ef1488783da8c95e8cf87e6f09dd404b616ca267527bd1db371`  
		Last Modified: Sat, 14 Apr 2018 08:55:59 GMT  
		Size: 162.2 MB (162192489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a901151f5d153b5f311e1b8bd3f62d87518b91e45e288523db11eb9ac87a0c5`  
		Last Modified: Sat, 14 Apr 2018 08:55:36 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82df0c2e8ab4769a31ec2d0ea3c300549720016cc4ae10cea654691f7540230e`  
		Last Modified: Sat, 14 Apr 2018 08:55:36 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; 386

```console
$ docker pull solr@sha256:9e85868e28315002e4f09ab0fb6063961dbbadb13f7837ada74a95088bc8acba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274857072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c339ef55acf379e52b62f36aee476be8d14e832279935fcdd9750a376f88f33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 27 Mar 2018 15:31:00 GMT
ADD file:d1c19ab632aa3b287544e9da0740ffc15f79bb20b8c85b2a152d294a61a3aff4 in / 
# Tue, 27 Mar 2018 15:31:00 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:47:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:52:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:52:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:52:46 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:52:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:52:47 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 14 Apr 2018 02:52:47 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 14 Apr 2018 02:53:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 06:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 14 Apr 2018 06:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 14 Apr 2018 06:53:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 06:53:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 06:53:34 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 14 Apr 2018 06:53:35 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 14 Apr 2018 06:53:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 14 Apr 2018 06:53:53 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 14 Apr 2018 06:53:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 14 Apr 2018 06:53:54 GMT
EXPOSE 8983/tcp
# Sat, 14 Apr 2018 06:53:54 GMT
WORKDIR /opt/solr
# Sat, 14 Apr 2018 06:53:54 GMT
USER [solr]
# Sat, 14 Apr 2018 06:53:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Apr 2018 06:53:55 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bfa9140a49a214e9eec99cc78f98d2b195eb9bcaff910fee3ae80f19dcd425b4`  
		Last Modified: Thu, 15 Mar 2018 01:13:45 GMT  
		Size: 26.4 MB (26401611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71818a32b1cd6739ae5ab427d699dae5ea7139c618d7360dc08e3febf6a7c4c`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 468.9 KB (468935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5b7888bc8c89df373ff57524ffc3237abf4ad300f5e56537ebc641bc04a7e9`  
		Last Modified: Sat, 14 Apr 2018 03:14:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa53251553d23c192be43f280d74b46a41a4b6bb6c10a676aa82dc0eb8949a8`  
		Last Modified: Sat, 14 Apr 2018 03:14:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13e633c65c8eca833b0b0e5707b09a9373aeb77dc456ef4b4217c8c97a53dd7`  
		Last Modified: Sat, 14 Apr 2018 03:15:20 GMT  
		Size: 81.5 MB (81481032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e31414699fcb6eb39967d1de4857faf9b5d96ca6c2c9a780b008586ab82ae6`  
		Last Modified: Sat, 14 Apr 2018 07:01:17 GMT  
		Size: 4.3 MB (4296812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f0d2d8d1c827390806b667ad45ebeb2853d4aa80a9b3f7a5a93b2146827b6a`  
		Last Modified: Sat, 14 Apr 2018 07:01:15 GMT  
		Size: 4.9 KB (4871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2be3878cf6a7f00bf0bbdd346d2756cb55003742386c0aa269d325b5e9acaf`  
		Last Modified: Sat, 14 Apr 2018 07:01:15 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba47addb22f2362714e7f7f5f36cf4536ebcddb3f95c731f44c3f2f00f54f20a`  
		Last Modified: Sat, 14 Apr 2018 07:01:32 GMT  
		Size: 162.2 MB (162192531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796d5defe898a46eecdf539076a196dce0b58577df0d53144077922805794696`  
		Last Modified: Sat, 14 Apr 2018 07:01:15 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaee7d6bd71e8a6683e08c62a24af63dae625d7f01a95d11f903f74182e5e28`  
		Last Modified: Sat, 14 Apr 2018 07:01:15 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:04726cc3afd95474e5bede30162450e9d97b8a9006508313b5a97e4f3222b9d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260513809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078fffa3305819f63629ef335da9960e790d4d6cb8b40bf985a11a227320942f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:18:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:18:08 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:18:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:27:37 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:48:54 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:51:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 08:23:22 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 14 Apr 2018 08:23:22 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 14 Apr 2018 08:23:54 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 08:23:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 08:23:56 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 14 Apr 2018 08:23:58 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 14 Apr 2018 08:26:01 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 14 Apr 2018 08:26:02 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 14 Apr 2018 08:26:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 14 Apr 2018 08:26:04 GMT
EXPOSE 8983/tcp
# Sat, 14 Apr 2018 08:26:04 GMT
WORKDIR /opt/solr
# Sat, 14 Apr 2018 08:26:05 GMT
USER [solr]
# Sat, 14 Apr 2018 08:26:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 14 Apr 2018 08:26:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b3949de4c16b03531582180df6c78e53e16851fa35f1a3ab12ac83a511cae577`  
		Last Modified: Wed, 14 Mar 2018 00:41:23 GMT  
		Size: 26.9 MB (26942453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfa491131fe3c43d09dfae52d8bf81576df7e7c5fa65cc8ca02dd14a07330c`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 455.0 KB (454980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cd6dec31efd7f104c93e0092e096437e0fd71c847ebb04861345763d94a407`  
		Last Modified: Thu, 15 Mar 2018 06:00:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11873e1792eb622e309cc818dbfe177c0e164e2fd83f1b6a56413a55ec2a7c9`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9ac6a1fbbe0869bc2e5aba742f7c4b4133ff1c0c3f3f748fef69f9f1d6f52d`  
		Last Modified: Fri, 06 Apr 2018 19:19:22 GMT  
		Size: 66.6 MB (66631787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f596a87f707da65bd2b7288315ce69ed6cb3ba83d7ac0684988825fe9ada94e2`  
		Last Modified: Sat, 14 Apr 2018 08:28:38 GMT  
		Size: 4.3 MB (4275649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e892c871ff64b4a9dbef727065899c28cccf2c94a844581960ef3c293184d6`  
		Last Modified: Sat, 14 Apr 2018 08:28:35 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa19e519d73f582a12de2a039082616ccd2e1e4911cdf51b0fe12f5f490eccc`  
		Last Modified: Sat, 14 Apr 2018 08:28:35 GMT  
		Size: 2.5 KB (2475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725fd706c14e9a690d7eb5dadbeb79e178c5a328d719c1a38eba3f702c47d85d`  
		Last Modified: Sat, 14 Apr 2018 08:28:51 GMT  
		Size: 162.2 MB (162192667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05f0adf42f8cb50653e72f8d4f4a7db38e146e13e6aed85d35e5459d1deb832`  
		Last Modified: Sat, 14 Apr 2018 08:28:35 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6377475258a72d176b976d5132dbf8119b2646d8d25b74d71d3bb0214d1dd09`  
		Last Modified: Sat, 14 Apr 2018 08:28:35 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
