## `solr:slim`

```console
$ docker pull solr@sha256:96c66efce3f50fe5753736dd2eefe8361d065aec0a74c3ec4b7d577323ee3744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:17c1f25bbd2420e4300f5a781f0bb4f2f5b3ee3e77e2b6357deb3007ad77cead
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278281135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5985fb91c518ade634821ef2c8397844b6648f258f58ed193c1e5f6876fbac15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 01:21:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 16:54:10 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 16:54:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 16:54:23 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Mon, 24 Sep 2018 22:21:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Sep 2018 22:21:02 GMT
ENV GOSU_VERSION=1.10
# Mon, 24 Sep 2018 22:21:03 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 24 Sep 2018 22:21:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Mon, 24 Sep 2018 22:21:04 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 24 Sep 2018 22:21:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Mon, 24 Sep 2018 22:21:52 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Mon, 24 Sep 2018 22:21:53 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Mon, 24 Sep 2018 22:21:53 GMT
EXPOSE 8983/tcp
# Mon, 24 Sep 2018 22:21:53 GMT
WORKDIR /opt/solr
# Mon, 24 Sep 2018 22:21:54 GMT
USER [solr]
# Mon, 24 Sep 2018 22:21:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 24 Sep 2018 22:21:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4afbe4610ca26fcb746ceff89f415f7ea864c292297512d43b3461c45af0a6`  
		Last Modified: Wed, 05 Sep 2018 01:39:29 GMT  
		Size: 78.3 MB (78342718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21946235e4ef6da758ea3bcb0daa24a22c2e5466c23ba21adb12bd2b79571770`  
		Last Modified: Wed, 05 Sep 2018 17:07:08 GMT  
		Size: 4.1 MB (4071277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19f720f98ae4aacc93845eeb404ec13854ae088859974f27f48251885e81348`  
		Last Modified: Mon, 24 Sep 2018 22:25:10 GMT  
		Size: 4.9 KB (4910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0bff6bbd2b244af3a25ba87c25bb55260011af8710807313d31ad2c4b96759`  
		Last Modified: Mon, 24 Sep 2018 22:25:10 GMT  
		Size: 75.4 KB (75444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6042324255552cb36d26d78de5ea1d7b63136a0ca27f17cee8a80d7e14074b86`  
		Last Modified: Mon, 24 Sep 2018 22:25:26 GMT  
		Size: 169.0 MB (169047647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d34fc449a76f2ae580d1cce8a74430d6dd142e55d5ff9b87e73c28c98096e7`  
		Last Modified: Mon, 24 Sep 2018 22:25:10 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b861afbe7f295093071ada4fb5f1ad65ff4319ca4700591c692adbc47478b22b`  
		Last Modified: Mon, 24 Sep 2018 22:25:10 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:96c5ec9907ce4b20a28d388796c67ac943fc8bd788bd34cb2f6812362c42bb19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272384614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b3044043a77ea7135dbe01606352950ddc54704f1f82ac4fb8d9619eca2164`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:57:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:17:43 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 17:17:44 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 17:18:30 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:24:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 08:24:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 08:24:14 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 08:24:18 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 08:24:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 08:25:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 08:25:51 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 08:25:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 08:25:55 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 08:25:56 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 08:25:57 GMT
USER [solr]
# Tue, 25 Sep 2018 08:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 08:26:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70776989c90e7bf1525a8eda7b904cd78325751c1c4a02b57a879c362c1d105`  
		Last Modified: Wed, 05 Sep 2018 12:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe86d0a8bd2d8ddc0916b25c66d21e490057d6f8b2b765258df8e7e3cdedeb68`  
		Last Modified: Wed, 05 Sep 2018 12:31:17 GMT  
		Size: 69.4 MB (69416847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf12da8ec3a9d07e494bf4b9da287942f3a9a4544dcf14489c0252e4356c`  
		Last Modified: Wed, 05 Sep 2018 17:51:43 GMT  
		Size: 4.7 MB (4685038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40593d268358ee3a9d42ec424adbf326ff9a3800da5f258ef148ab08738c9ef`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.9 KB (4909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72c1ded08befa58c5cadf50579a0cd459cf4a14e2849f24cc2ba7fa3f4e07ad`  
		Last Modified: Tue, 25 Sep 2018 08:34:48 GMT  
		Size: 75.5 KB (75485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2fb97b252ebe1c0d7ed047eb35e8774581ce4ec0d9414a5fd02b41d9fe00c`  
		Last Modified: Tue, 25 Sep 2018 08:35:13 GMT  
		Size: 169.0 MB (169016518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7998027b002339386a8224a268491df7d17e8943bf3e9eb5585962b3b73aaf87`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73e20460817b79c1a897f2d755e661329e79b80e28a5242a66e14190d187dc8`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
