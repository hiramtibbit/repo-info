## `solr:slim`

```console
$ docker pull solr@sha256:5ea355e4414ead3307e956927ea00a0346f2737c76814902115a0bab366cc482
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

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:8c2d7f09fee583a503cf1d2a3dd41dabd4f22daebf88875dcbcf416f48a58202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269099131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abf2fbb06cb97a6ad1c570d0a4f966d0419fa499ca9c719e79aa14446ae67bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:40:17 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Mon, 14 May 2018 22:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 02:49:14 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 02:49:14 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 02:49:27 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 02:49:27 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 02:49:28 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 02:49:29 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 02:49:44 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 02:49:44 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 02:49:45 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 02:49:45 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 02:49:45 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 02:49:46 GMT
USER [solr]
# Tue, 15 May 2018 02:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 02:49:46 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6485a2cca95b289b549728c0c66bb1b463cdb7a204d224291f28c111a64a371`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 460.5 KB (460510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ea4e6ab41ff82240aed63937b358af3ee0d7749491ea788298b5cd38027cd`  
		Last Modified: Tue, 01 May 2018 14:02:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649f9534d72bc7ab44e527f83b63f51976a27696dc7ccbef9db571a111943a92`  
		Last Modified: Tue, 01 May 2018 16:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3fcb6a0075d8e297e30126427ed1a6557a31223d4e5a44a0e7643ed1c2d87d`  
		Last Modified: Mon, 14 May 2018 23:12:18 GMT  
		Size: 76.1 MB (76136489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e4acaae33f259cc09ff445c3ab53caa5928728217453258b9ea2f984ab1685`  
		Last Modified: Tue, 15 May 2018 02:55:02 GMT  
		Size: 4.3 MB (4286515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1a2ada739c4671fe538196919b21ed380a617747722af9c055cfd2922a30f1`  
		Last Modified: Tue, 15 May 2018 02:54:58 GMT  
		Size: 4.9 KB (4911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d6bb1f9c9ff1aa631e7593284e7049d8fb35d59528ca0fde9100baa3758ca1`  
		Last Modified: Tue, 15 May 2018 02:54:58 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827cfac26b58d6aedcf88ed50ba7e3b635a0bf83f07a85dd306c288dc2ee22fc`  
		Last Modified: Tue, 15 May 2018 02:55:11 GMT  
		Size: 162.2 MB (162192390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafbf8d05ac6eb95f2fa7b1fdfe3e82d569b2431a73de8e07d3c0f4a727edc0a`  
		Last Modified: Tue, 15 May 2018 02:54:58 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca93b6e2b8dd3cd72ca55336b18ca958725552d1ffb09025c06ffb01e441a74b`  
		Last Modified: Tue, 15 May 2018 02:54:58 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:014ac3ae87cfd3e2a868808a6dda92ff577ca835d6c8a13a435becf8f8ad7ccb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393985414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a9f5ac6e7f8a0974536b3709783e16fd3afe51fbf3be3714458b961103349b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:57:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:19:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:19:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:27:42 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 09:27:44 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:08:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 11:08:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 11:08:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:08:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:08:44 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 11:08:46 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 11:09:02 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 11:09:03 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 11:09:03 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 11:09:04 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 11:09:04 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 11:09:04 GMT
USER [solr]
# Tue, 15 May 2018 11:09:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 11:09:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc48823c28e5748b4391dec0c3ace05a68f5a65301bb16529fbf5cfdcf4ba2`  
		Last Modified: Sat, 05 May 2018 09:11:24 GMT  
		Size: 7.8 MB (7807554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5f6db056b1ea7d4547374cc334a044271698f505521bb613b98b4e9d62fff`  
		Last Modified: Sat, 05 May 2018 09:11:25 GMT  
		Size: 9.2 MB (9194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16073a84548c03437560da2931d6276f5698e1b26256817ec343c389cfd1c66a`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 849.9 KB (849869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e3d44dd1677ace4c49728e92bc682e66c906f2d94d5a76db694717d1923c`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed79a9690e83c5f8a409eac147b7022786b8cd54de49f9726a5c9f1debf44bc`  
		Last Modified: Sat, 05 May 2018 09:52:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78f03eaf4946a8a38a25969bba8a7c701f5a72a98fb57f8d8faebb42210249`  
		Last Modified: Tue, 15 May 2018 10:12:34 GMT  
		Size: 165.5 MB (165502932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4575085ab46cc263681d959a9efbf12c04adb1076cae8361309f0a78af4b419`  
		Last Modified: Tue, 15 May 2018 11:23:07 GMT  
		Size: 2.1 MB (2123108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594d99dba074e10c0616844f1b9c93aab3163b2e2399bfe0b316bebceb3ebca9`  
		Last Modified: Tue, 15 May 2018 11:23:06 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee07ade0be0fa0dde92dee3bbff4ad8df15e9d5e28186c218b02e5515a45345`  
		Last Modified: Tue, 15 May 2018 11:23:06 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08454fc2f5ff870366500eda96e9fbe36603d205767598b691724c0abd7bf004`  
		Last Modified: Tue, 15 May 2018 11:23:29 GMT  
		Size: 162.2 MB (162192732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a211caf594bfc0806b00cf294beb37a47dcef00181dabea484bf10846c9328e`  
		Last Modified: Tue, 15 May 2018 11:23:06 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20e5b69e9b162d69f74a6bfce271741c4b766531d1110302e0ff865f00934f5`  
		Last Modified: Tue, 15 May 2018 11:23:05 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:7022c1b1991a6330997f98519e4b8edd24daa6c7472c2f9d401c8021655b1c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393985394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44587da2f7b1c4a1c06511a4143c7d6657380d0873bd27c28eab394bc3591f86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:57:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:19:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:19:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:27:42 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 09:27:44 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:26:01 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:26:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:26:10 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:26:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:26:14 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 13:26:24 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 13:26:50 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 13:26:51 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 13:27:02 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 13:27:10 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 13:27:19 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 13:27:20 GMT
USER [solr]
# Tue, 15 May 2018 13:27:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 13:27:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc48823c28e5748b4391dec0c3ace05a68f5a65301bb16529fbf5cfdcf4ba2`  
		Last Modified: Sat, 05 May 2018 09:11:24 GMT  
		Size: 7.8 MB (7807554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5f6db056b1ea7d4547374cc334a044271698f505521bb613b98b4e9d62fff`  
		Last Modified: Sat, 05 May 2018 09:11:25 GMT  
		Size: 9.2 MB (9194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16073a84548c03437560da2931d6276f5698e1b26256817ec343c389cfd1c66a`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 849.9 KB (849869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e3d44dd1677ace4c49728e92bc682e66c906f2d94d5a76db694717d1923c`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed79a9690e83c5f8a409eac147b7022786b8cd54de49f9726a5c9f1debf44bc`  
		Last Modified: Sat, 05 May 2018 09:52:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78f03eaf4946a8a38a25969bba8a7c701f5a72a98fb57f8d8faebb42210249`  
		Last Modified: Tue, 15 May 2018 10:12:34 GMT  
		Size: 165.5 MB (165502932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ef173cef258fac13bffa11e7cd4d93fee0bcde22d12951a4b92518371caeb`  
		Last Modified: Tue, 15 May 2018 13:33:30 GMT  
		Size: 2.1 MB (2123086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc6045e647a3a679e1b8131e5ed7b1621efc5594e0bb02217fb223b4e7761e5`  
		Last Modified: Tue, 15 May 2018 13:33:29 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0d85901a725bbb850fa161358931c513e0c20fe6842fdb05057f3c088dd41a`  
		Last Modified: Tue, 15 May 2018 13:33:29 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd9760efb60ca4b58cd4085b053237709df2da4fb6d4df0b67f80459d7c8a03`  
		Last Modified: Tue, 15 May 2018 13:33:49 GMT  
		Size: 162.2 MB (162192728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8f113e385d72eedce3e80117c5ab0588d9ccfd05b461f48d553d523a62eeab`  
		Last Modified: Tue, 15 May 2018 13:33:29 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa30c2dcd34827715314c42b04c4b3dff3d6bca1e4feba6f0edb0e27ffec2f8e`  
		Last Modified: Tue, 15 May 2018 13:33:29 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:e499d11b7964fbb34c1a33bb8fbe74782fb27e5aec742875efcdbbb35bb1bfbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254976006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5541055cf891b9acc965fd5dcd26735b7665602e89ea3ad9fa0d4874c2dbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:28:38 GMT
ADD file:0c141fd79d3e8c492efc85f35f6f2273b082454831ae4e4e58f2bb99395ac72b in / 
# Mon, 30 Apr 2018 23:28:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:26:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:56:54 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 10:56:55 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 14:21:01 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 14:21:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 14:21:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 14:21:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 14:21:36 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 14:21:38 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 14:23:01 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 14:23:02 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 14:23:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 14:23:11 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 14:23:11 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 14:23:12 GMT
USER [solr]
# Tue, 15 May 2018 14:23:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 14:23:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8a965c5efd07de5feb761f2ff7f7c9319fbd736849e5c372d102a79db79c4f2f`  
		Last Modified: Mon, 30 Apr 2018 23:48:28 GMT  
		Size: 23.4 MB (23364515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca2f61f6ee678d7988be608168e9c185ba5c895ae0c465aae1111cc9b9f381e`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 445.3 KB (445326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c81d59c641d2ddc2a09929f5b5d1a2b5181d4c465d5d47ac607bb97deb6f8a`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3359846d10d5ef13605aa0470f33e1cb5fd5e8e6977c33a370b2abacad0613f`  
		Last Modified: Tue, 01 May 2018 11:51:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc3a51a42fd310bb6e0861cff02acec5b5156d339847cb499f1b23da837402d`  
		Last Modified: Tue, 15 May 2018 10:53:55 GMT  
		Size: 65.0 MB (64997705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20d83fb4481bae13f33942e50f8366fd50e42a8f63a05ceac30847d2ac14cc6`  
		Last Modified: Tue, 15 May 2018 14:40:15 GMT  
		Size: 4.0 MB (3959694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da3348a5e16975383fea7b8ee1403f8e7d955e8027be2cc5c08f17268b2ca70`  
		Last Modified: Tue, 15 May 2018 14:40:12 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd4a8c2029d032f9ad004e7bae9523dcb0fd486a745ec3be5537a0a77d188da`  
		Last Modified: Tue, 15 May 2018 14:40:12 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f29de9cad9988c2279c388cf0f869f33d1e4e5585aa90268d4db51174911899`  
		Last Modified: Tue, 15 May 2018 14:40:34 GMT  
		Size: 162.2 MB (162192546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0779b3dc7baed803c2a1a04745d79a35e158b2188964b5142fef011d1cdcac`  
		Last Modified: Tue, 15 May 2018 14:40:12 GMT  
		Size: 4.2 KB (4220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adaf807ad68ffaaa5c305c41d33fb80a3c4927f7d07e2e78be0e18d229f35a5`  
		Last Modified: Tue, 15 May 2018 14:40:12 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; 386

```console
$ docker pull solr@sha256:efdaa7a0126e86fbb94266bd2315ddb5ad90cd702f25aa1167f85b4d77437a3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275047003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc012d2cc78fefff6b59b8c5dbce9d0fb3468cce9ae72385634bee13671bc77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:41:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 11:32:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:22:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:22:16 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:22:28 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:22:28 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:22:29 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 13:22:30 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 13:23:26 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 13:23:26 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 13:23:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 13:23:27 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 13:23:27 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 13:23:27 GMT
USER [solr]
# Tue, 15 May 2018 13:23:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 13:23:28 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba5883d54ea2e960ec74337613b22d342a4cf7dc0a8004731c69f17ca460c2`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 469.1 KB (469104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0202ed9a08fb9954731cc7fe5f246e4b09b730c006ef6ba471b6671db09dbe`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21011dd0714ba1832917938749b79fe5fa3314ae25a124bdd3b538211696d4d2`  
		Last Modified: Sat, 28 Apr 2018 15:13:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80bfdf099792bbce34ade98168ac44ef865fc62f556803fe780e9ac00243ded`  
		Last Modified: Tue, 15 May 2018 12:08:13 GMT  
		Size: 81.1 MB (81094714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1194fab43aeb617a98fbc6261474599f4b591e243c0637ea72f9864c376de73`  
		Last Modified: Tue, 15 May 2018 13:36:18 GMT  
		Size: 4.6 MB (4587471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad22d12b2ed205945ff326450340c4b2bd4e9dd4c803fffe8d98cdd443dda1ca`  
		Last Modified: Tue, 15 May 2018 13:36:17 GMT  
		Size: 4.8 KB (4841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ee4acc1f0035c20101d3c97241d8fde6001bb3a2cbb2b4013f4618d636cf6a`  
		Last Modified: Tue, 15 May 2018 13:36:17 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5af28e21be3adcd95dbe01e7228bd377a68cf7f25976f52414a2ae29734fda`  
		Last Modified: Tue, 15 May 2018 13:36:35 GMT  
		Size: 162.2 MB (162192508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6c9c60e5ed6c4e792676971cefc5e55ed5555c41c1e401f3ac02837dd8e80f`  
		Last Modified: Tue, 15 May 2018 13:36:17 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9719fe9dcee957d58d98c55b50183270d541297a1c4f56af576cb41dd12415`  
		Last Modified: Tue, 15 May 2018 13:36:16 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:ba8c50636ffc9bf5586cd4878e19ffbf5fee1f3ac6925510be9af2085075c2be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260719635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4bf3d6ceae36819f05750ac6484d5930e7b57c85b2501c61682494782d8580`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:31 GMT
ADD file:0f2a0abf96fc92379da26343d7babcee966430e13e320ed58e9b026f81a35dc0 in / 
# Sat, 28 Apr 2018 08:19:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:22:50 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:22:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:30:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:30:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 09:30:57 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 09:30:58 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 08:46:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:09:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 10:09:37 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 10:10:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 10:10:22 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:10:25 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 10:10:27 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 10:12:08 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 10:12:10 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 10:12:19 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 10:12:20 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 10:12:21 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 10:12:23 GMT
USER [solr]
# Tue, 15 May 2018 10:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 10:12:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:62552d209895f0ed53682f7309596edd291c8529683e854dd1fb36398d01bf69`  
		Last Modified: Sat, 28 Apr 2018 08:28:10 GMT  
		Size: 27.3 MB (27275595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ff6d72f21b69924c949ee40aec368655f2ab6a94c0a4a2067453fce44edabe`  
		Last Modified: Sat, 28 Apr 2018 09:48:20 GMT  
		Size: 455.2 KB (455169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6f4b35b1a81554702460476a2fe3bd916579be94638ded8ee84048b7e208b`  
		Last Modified: Sat, 28 Apr 2018 09:48:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8d4e6285cb453ad45b8fffd593683ce971561e5dc3e3894511a103c2e0f3ef`  
		Last Modified: Sat, 28 Apr 2018 09:52:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d0a24dd34a9dfb1c5c4cb9b74cfbfc3874866e562e347365f904e1008882b5`  
		Last Modified: Tue, 15 May 2018 09:35:37 GMT  
		Size: 66.2 MB (66174142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6aa880621604ab031047b4362437eedf9770ddd16639768450454303d5e18b`  
		Last Modified: Tue, 15 May 2018 10:29:41 GMT  
		Size: 4.6 MB (4605795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078b1916e2febba9f4918e2873820f61d2d950be86810281c1f4f357c5be6383`  
		Last Modified: Tue, 15 May 2018 10:29:37 GMT  
		Size: 4.9 KB (4917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414ddad2d378863323d5305ff2cc31c6545b7b0413f04a8044ef2f96fac13896`  
		Last Modified: Tue, 15 May 2018 10:29:36 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4874875dd3bda55efaf94a101d12dc1cab7745e4cc4e40c3672d944dc397c1`  
		Last Modified: Tue, 15 May 2018 10:29:54 GMT  
		Size: 162.2 MB (162192674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa77e07f6ceef5c497dbfb1c87806e358066a71bc304d6a8ca010a0c4496c37`  
		Last Modified: Tue, 15 May 2018 10:29:37 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfda844992a1cff343d5170fb728d0a442defb9166bbe6d05ecc3f7fb1c75c2f`  
		Last Modified: Tue, 15 May 2018 10:29:37 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; s390x

```console
$ docker pull solr@sha256:49a8d07d65ac57c480bec6ee14ce2648a5bc99fa472aac0942bd489abc74a6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257902158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062a3df77d85f5e34d5546a94ab73c4e6bfa8ecf50f49883830fd1e516d4ade5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:07 GMT
ADD file:e38be352b5f5592b16e7137f372c3c15b62fa18d58036f3756f302a0b0bb631b in / 
# Sat, 28 Apr 2018 11:44:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:19:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:19:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:26:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 12:03:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:52:36 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:52:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:52:42 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:52:42 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.0/solr-7.3.0.tgz SOLR_SHA256=4b9b9f5dfd4ea4b0fdf69bda9528de47903aaa9bd9c5cb405ce0ae09a8d12fe9 SOLR_KEYS=C5DCD3AAB897097D7815BD6B069E9741F3D97FD6 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:52:43 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 15 May 2018 13:52:44 GMT
RUN set -e; for key in $SOLR_KEYS; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 15 May 2018 13:52:57 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 15 May 2018 13:52:58 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 15 May 2018 13:52:59 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Tue, 15 May 2018 13:52:59 GMT
EXPOSE 8983/tcp
# Tue, 15 May 2018 13:52:59 GMT
WORKDIR /opt/solr
# Tue, 15 May 2018 13:52:59 GMT
USER [solr]
# Tue, 15 May 2018 13:52:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 13:52:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bff59799036649cecf076e4900a64b601dd41fb4774da5d260797609e96f77d2`  
		Last Modified: Sat, 28 Apr 2018 11:50:00 GMT  
		Size: 25.1 MB (25056085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00321480668e2c88c597070fd4a0503df76d083adfe3488d69f82f37cf3a1143`  
		Last Modified: Sat, 28 Apr 2018 14:37:59 GMT  
		Size: 471.3 KB (471260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b7fa65f7725d173d1d9261b5c223d16d2f1f2a2850391fb2cd3eca5082060`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a4327ddb4df4bb93acb5eae40ad36e95b2347b79c0e675f2a5e62293f6a68`  
		Last Modified: Sat, 28 Apr 2018 14:48:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e682761ef0a8595f992222b0e12d42179c0e6c161773b6d5427791ddb3e44`  
		Last Modified: Tue, 15 May 2018 12:35:19 GMT  
		Size: 65.9 MB (65930053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d5d0109a2355c79e9d199e8f38864b2bd26ca9fb645992c0ee97c53d87bf47`  
		Last Modified: Tue, 15 May 2018 13:59:46 GMT  
		Size: 4.2 MB (4236169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3284299754b5cde5c52ba91018516068798fc8089194486447b5c1dfd141c91a`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d1cd9acfc2e49b5d89fc0e1a9a7e970df49af01d95629f0b5838945c3b6b28`  
		Last Modified: Tue, 15 May 2018 13:59:43 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbdd9418279b9be2dfefcc59bcd68be0331a3331e76a2a3adea46c213421431`  
		Last Modified: Tue, 15 May 2018 13:59:56 GMT  
		Size: 162.2 MB (162192370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f764f0696331a600471604c699aaaeed9414064931e2740f3a5844d3b45179`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200f3a056ee3b6f44d8452eb37d1ea3db320ece187006bf62e047e676b0ded96`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
