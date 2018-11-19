## `solr:latest`

```console
$ docker pull solr@sha256:9f4d222cb86cf94d3636e35c61a74cfeafadc61edf8f8a9bd43ca845b16002f0
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
$ docker pull solr@sha256:551062fe0a175717dccec65c691ac458f5cc2c7a39cc99a8f2d8445e80da332a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420911731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712c77ba5c778ca843efcd86547b3caa166485794ce1cd4c8ab61d020ebdb4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:12:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 14:47:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:47:35 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:47:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:54:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 14:54:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 14:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:59:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 17 Nov 2018 07:59:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 17 Nov 2018 07:59:23 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:59:24 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 07:59:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 07:59:24 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 17 Nov 2018 07:59:25 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 17 Nov 2018 07:59:26 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 17 Nov 2018 07:59:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sat, 17 Nov 2018 07:59:49 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sat, 17 Nov 2018 07:59:50 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 17 Nov 2018 07:59:51 GMT
EXPOSE 8983/tcp
# Sat, 17 Nov 2018 07:59:51 GMT
WORKDIR /opt/solr
# Sat, 17 Nov 2018 07:59:51 GMT
USER [solr]
# Sat, 17 Nov 2018 07:59:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 07:59:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117dc02416a34c62e28a030f27828f2f31af6b8b1f02c85b009a1ffb390d01dc`  
		Last Modified: Fri, 16 Nov 2018 11:30:56 GMT  
		Size: 7.4 MB (7375503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4c717259ac9c550efbbf41c6fe0dc9598046f4bfd4b398deb63f7a0c19cb3f`  
		Last Modified: Fri, 16 Nov 2018 11:30:57 GMT  
		Size: 9.8 MB (9780063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78688707a851f0821b98d726bd73c923f82850c650aa07bb2b079c9239443f`  
		Last Modified: Fri, 16 Nov 2018 15:29:59 GMT  
		Size: 847.8 KB (847791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836f4a8d99d340e17ffa455950c9b8b92303a875c4d20e0794156bbd463a4520`  
		Last Modified: Fri, 16 Nov 2018 15:29:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a243e264a0a15acfcf2aa672b0bea5e9751ac4dbb8e1befa84f4f51e19f9d1c9`  
		Last Modified: Fri, 16 Nov 2018 15:50:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c8cc19f4195a576044c0238997d9961acfebfa9d9964e9f0884eeeaabfc787`  
		Last Modified: Fri, 16 Nov 2018 15:51:18 GMT  
		Size: 183.8 MB (183775984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781fd9d86145f9691a01ebaaf42cec5f7ce4d02918bc618ec97ffc8f16a5a07e`  
		Last Modified: Sat, 17 Nov 2018 08:21:36 GMT  
		Size: 735.8 KB (735797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eda567c8612d30c779540122b137bc0563424a931f0b6d87847d7b1190fe1bd`  
		Last Modified: Sat, 17 Nov 2018 08:21:35 GMT  
		Size: 5.1 KB (5128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab47893d8f008a8dadcf872d57c6e3af3c06ef56b0e8507d78bd790456160351`  
		Last Modified: Sat, 17 Nov 2018 08:21:35 GMT  
		Size: 75.5 KB (75454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317f867e6a054b07f95347e3a1e3788c7a5618f6a33aa2104d0cd0bcaaa4216`  
		Last Modified: Sat, 17 Nov 2018 08:21:47 GMT  
		Size: 169.0 MB (169047609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a515ba4ffb423592632e242c637dd85780fa217c3016e304e85d0498eab020ec`  
		Last Modified: Sat, 17 Nov 2018 08:21:35 GMT  
		Size: 4.2 KB (4220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90740020833f7f700a1817254eae8c78cf358a946cf0c43c92f67a559527fe36`  
		Last Modified: Sat, 17 Nov 2018 08:21:35 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v5

```console
$ docker pull solr@sha256:11270f273e9b80c18c66da937ff6af2f5f0fde1d9b9053333df94f782ee87633
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.6 MB (406639449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429e0972ef6cb9b2fdce1772ab48bdfcd869ebc425cd88a614c4be927fa64526`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:05 GMT
ADD file:8beac90fab79047a99139951c1eb0b26598cb16b3de6be3a6768d30f41e470da in / 
# Fri, 16 Nov 2018 09:55:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:33:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:33:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:34:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:34:28 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:34:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:34:31 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:34:31 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:34:32 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 18:34:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 18:36:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Nov 2018 16:46:50 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 19 Nov 2018 16:46:50 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 19 Nov 2018 16:47:03 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 16:47:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Nov 2018 16:47:05 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Nov 2018 16:47:05 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 16:47:06 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Mon, 19 Nov 2018 16:47:07 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 19 Nov 2018 16:48:34 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Mon, 19 Nov 2018 16:48:35 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Mon, 19 Nov 2018 16:48:36 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Mon, 19 Nov 2018 16:48:36 GMT
EXPOSE 8983/tcp
# Mon, 19 Nov 2018 16:48:37 GMT
WORKDIR /opt/solr
# Mon, 19 Nov 2018 16:48:37 GMT
USER [solr]
# Mon, 19 Nov 2018 16:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Nov 2018 16:48:38 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:47c89bded53655a08a5ade4bcec2735b8f5ed461132add6b56c91d99d2d43e82`  
		Last Modified: Fri, 16 Nov 2018 10:09:57 GMT  
		Size: 46.9 MB (46931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c40e735ea786d7012557eb1a19713d212a9eb65c662a0e17496c671826df7e8`  
		Last Modified: Fri, 16 Nov 2018 18:48:44 GMT  
		Size: 6.9 MB (6936827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e84d4e46d444d64c8c7b8bc36fc4bba762c6ab773eb80c2e8a53fea1ef65f0`  
		Last Modified: Fri, 16 Nov 2018 18:48:45 GMT  
		Size: 9.5 MB (9481899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00696f492bae7cd462a7aef447e4bf98bb2d22d55b60047bec1b8d00beff8140`  
		Last Modified: Fri, 16 Nov 2018 19:00:40 GMT  
		Size: 839.8 KB (839811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d352258e3b076741401225c2a341c6c58c02659328cf934d45bdca5a91e6ab5`  
		Last Modified: Fri, 16 Nov 2018 19:00:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d738cbc0d7923ac4d3e08d175d1cd24a658968f7e22588696303dee6041114`  
		Last Modified: Fri, 16 Nov 2018 19:00:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b27577fc63f6c633fcf408192aeb820ca3529e6592e7067a3473958c5e75e9`  
		Last Modified: Fri, 16 Nov 2018 19:01:22 GMT  
		Size: 163.9 MB (163898864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26fa7a276202b6ba1e8fa20cba41381260eac4a2e7e9b3361b1785b6c0f59136`  
		Last Modified: Mon, 19 Nov 2018 17:02:16 GMT  
		Size: 9.4 MB (9423257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154d9d17b08224854f5d10091ecd24c2232010250d9caaa377e964e7ba48648e`  
		Last Modified: Mon, 19 Nov 2018 17:02:12 GMT  
		Size: 5.1 KB (5058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11bd5bfc11a9eb6470435fbb68492b2a47d668108488879b5e38916ba160b52`  
		Last Modified: Mon, 19 Nov 2018 17:02:14 GMT  
		Size: 75.5 KB (75478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8f045a87727dd4d5f022552baf2ef48fe14e179559fa698a084bc73709a641`  
		Last Modified: Mon, 19 Nov 2018 17:02:33 GMT  
		Size: 169.0 MB (169038229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12197690eceb4407d283f12d0fd8c560ee5544b2dc59eabb49eb201cb4bef7`  
		Last Modified: Mon, 19 Nov 2018 17:02:12 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4ebe4441168996b42d2c509c67baeba920b117b037296995fc5ef33a6aa146`  
		Last Modified: Mon, 19 Nov 2018 17:02:12 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v7

```console
$ docker pull solr@sha256:eed0e5a44a5ca734eff51728a6e8e6a7917a4f0114ffe61e128a0c67c0522d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.3 MB (393255306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb4000a600f745dbabf5b15f9bbc5346f52cb80a61af7dd5e889cbfc73ee0fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:14:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:15:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:15:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:21:51 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:21:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:21:53 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 19:21:53 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 19:23:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 02:41:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 17 Nov 2018 02:41:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 17 Nov 2018 02:41:43 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:41:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 02:41:44 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 02:41:44 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 17 Nov 2018 02:41:45 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 17 Nov 2018 02:41:47 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 17 Nov 2018 02:43:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sat, 17 Nov 2018 02:43:12 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sat, 17 Nov 2018 02:43:14 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 17 Nov 2018 02:43:15 GMT
EXPOSE 8983/tcp
# Sat, 17 Nov 2018 02:43:15 GMT
WORKDIR /opt/solr
# Sat, 17 Nov 2018 02:43:16 GMT
USER [solr]
# Sat, 17 Nov 2018 02:43:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 02:43:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ebfdb451da69aec8b40173375cf38f87f1e39085d2072e246796c09c6738c`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 6.7 MB (6703425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e9929c695e5dc9cd495d9b50731f7cabfba0a93fbe0c8c039f86c25531c0dd`  
		Last Modified: Fri, 16 Nov 2018 18:29:31 GMT  
		Size: 9.1 MB (9148032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c17fa2c312aed7c602f3fbed7e6305980113bf282c2498cff56339ced25f65`  
		Last Modified: Fri, 16 Nov 2018 19:52:18 GMT  
		Size: 822.5 KB (822486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce3e103655f07bd3ab48204c7d2fd9af93713db7d41de74f6465a873193a545`  
		Last Modified: Fri, 16 Nov 2018 19:52:17 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7823918f962ed4d253789b76fc3a39d96c837b9ec5e488b6d65e9a1990bfef55`  
		Last Modified: Fri, 16 Nov 2018 20:01:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8005de95f8e0ddad644f601c16024b4f01b6861a35ac901c054a2ca665cff057`  
		Last Modified: Fri, 16 Nov 2018 20:01:45 GMT  
		Size: 161.9 MB (161937164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459d206b3235aa6a3fd7e3c9905dcbefd7c4c4e0387a94217a71614222bb83c7`  
		Last Modified: Mon, 19 Nov 2018 15:35:24 GMT  
		Size: 734.4 KB (734438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6175714ed3b8fc70582fc32332adeb3e1e6b233a58b94e33a47b7b6f9b6dd95`  
		Last Modified: Mon, 19 Nov 2018 15:35:23 GMT  
		Size: 5.1 KB (5059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c70d367083bb6e3c9ad3bc0168bb58dd58364665c783284ee5816929937fce`  
		Last Modified: Mon, 19 Nov 2018 15:35:23 GMT  
		Size: 75.5 KB (75477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d027535f1c2aaff006689e491a56dce56ac6964976b3334be3dc129b69e446e2`  
		Last Modified: Mon, 19 Nov 2018 15:35:43 GMT  
		Size: 169.0 MB (169022448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572c94876f0fea9f9bb1b32ea8d91a38c2de309d02725232908bcc09f44d10ca`  
		Last Modified: Mon, 19 Nov 2018 15:35:23 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451e3502e24d9d967fdeadb57acdc9032a43b3296aba995d77285cfbedbf2154`  
		Last Modified: Mon, 19 Nov 2018 15:35:23 GMT  
		Size: 4.2 KB (4234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:34957108a9da1876e133e2f2c9849b9f3dc743126b1293e557d608663ff5b9f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.9 MB (405941918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d0354ce5dc4528bfa699b33abcdd267a3451a871da386039466bf829285b79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:17:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:17:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 04:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:27:51 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:27:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:45:45 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:45:46 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 04:45:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 04:52:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 22:14:48 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 17 Nov 2018 22:14:49 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 17 Nov 2018 22:15:00 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 22:15:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 22:15:03 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 22:15:04 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 17 Nov 2018 22:15:07 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 17 Nov 2018 22:15:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 17 Nov 2018 22:15:40 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sat, 17 Nov 2018 22:15:42 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sat, 17 Nov 2018 22:15:44 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 17 Nov 2018 22:15:45 GMT
EXPOSE 8983/tcp
# Sat, 17 Nov 2018 22:15:46 GMT
WORKDIR /opt/solr
# Sat, 17 Nov 2018 22:15:47 GMT
USER [solr]
# Sat, 17 Nov 2018 22:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 22:15:49 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9075e353d5a562472189e3052838c7ae3ae6d1010aaaa24fdee045e71c553ecb`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 7.3 MB (7251197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fc9dd9541251810eb8e2a2465a257a66a4c0e930c37f2b9233063083fffdf`  
		Last Modified: Sat, 17 Nov 2018 02:47:14 GMT  
		Size: 9.8 MB (9760021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c479169f4e3cf871cb7473458a1c638712121d2b914ffeaf1d7ed9dc70b52`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 834.4 KB (834363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a2c82579098ae8c4a99671559e893d0eb98d41fc2fb948c1455cf7a31394ab`  
		Last Modified: Sat, 17 Nov 2018 05:24:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e665eac0ecadd4eedc8b84fd4183db9aad63739bb65caae8d7ef67ac74406`  
		Last Modified: Sat, 17 Nov 2018 05:41:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5d68dcc5cd74baa0f3bb189411151a31938920587d21a9fb68394a363f9617`  
		Last Modified: Sat, 17 Nov 2018 05:42:06 GMT  
		Size: 170.6 MB (170634781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5265c31c8d07d4c0911cb7372dbcc0993130628ae05485b86f534154aba9cd8`  
		Last Modified: Sat, 17 Nov 2018 22:40:14 GMT  
		Size: 732.1 KB (732136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca427601f446348be99a0d9389971ce0cb9c46290e468f52c719dabd59713f6`  
		Last Modified: Sat, 17 Nov 2018 22:40:12 GMT  
		Size: 5.2 KB (5163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579ae542a43d3a6d4c7f7a428696e68c010a70bf244f438caf4e3843c9902ec7`  
		Last Modified: Sat, 17 Nov 2018 22:40:12 GMT  
		Size: 75.5 KB (75480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585dbcc456034acd4f400a91cd591b031dd24902877dd191c8b2ff1f062841bc`  
		Last Modified: Sat, 17 Nov 2018 22:40:36 GMT  
		Size: 169.0 MB (169015543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a3a614489b1aa2e76e8bffaadba6bfd949f5efe07fba46afd52a27fa7f55a0`  
		Last Modified: Sat, 17 Nov 2018 22:40:12 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544301c77fdf4c8027f0445fb016dda2cf526127c2fa9eb98f2b3a34138f5c16`  
		Last Modified: Sat, 17 Nov 2018 22:40:12 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; 386

```console
$ docker pull solr@sha256:7e825a74b9b4e91520ee4e4972ffe0a6db9902d1b762441be54d8c706aa57776
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.9 MB (430924153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee46f5b96bb3f58bc792cb8dd9b81312d48925c88286e091f18b14f101bb9b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 13:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:49:53 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:49:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:57:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:57:20 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:57:20 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 17 Nov 2018 13:57:21 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Sat, 17 Nov 2018 13:58:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 18 Nov 2018 03:20:10 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sun, 18 Nov 2018 03:20:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sun, 18 Nov 2018 03:20:15 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sun, 18 Nov 2018 03:20:15 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Nov 2018 03:20:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Nov 2018 03:20:16 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Nov 2018 03:20:17 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sun, 18 Nov 2018 03:20:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sun, 18 Nov 2018 03:20:33 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sun, 18 Nov 2018 03:20:34 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sun, 18 Nov 2018 03:20:34 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sun, 18 Nov 2018 03:20:35 GMT
EXPOSE 8983/tcp
# Sun, 18 Nov 2018 03:20:35 GMT
WORKDIR /opt/solr
# Sun, 18 Nov 2018 03:20:35 GMT
USER [solr]
# Sun, 18 Nov 2018 03:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Nov 2018 03:20:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ad8c93fe5a088ae5005cfe50a1ef475d4f0e1a97371d56db68fc08705a03df`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 7.5 MB (7524919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ece88fa739651725b15edad9d926c3b46176bc8e5ea97bfbb390ed5a132223d`  
		Last Modified: Sat, 17 Nov 2018 11:45:39 GMT  
		Size: 10.1 MB (10109366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8d14f72dc65059946af02e1e308916328cc956284f5efbd8c5712b419f72b2`  
		Last Modified: Sat, 17 Nov 2018 14:31:48 GMT  
		Size: 855.6 KB (855610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837384af7e6fccd5709bce8c7cc1aca3b2b7170f30355f03ab060674d6144ad8`  
		Last Modified: Sat, 17 Nov 2018 14:31:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d191fec2f05a28ebab6ce0ed0ca6261d5017fa8411b1a6f44d64e38bc686f99d`  
		Last Modified: Sat, 17 Nov 2018 14:43:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94b31087162deb59031a61aa34d9b0971287ae9017464a66d72ddf927df1bd7`  
		Last Modified: Sat, 17 Nov 2018 14:44:16 GMT  
		Size: 192.6 MB (192643796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b247f69ff4b715e3ca944db3f4cdb9c7adf188cba976aff4ae5588ee8419fd6c`  
		Last Modified: Sun, 18 Nov 2018 03:35:47 GMT  
		Size: 737.1 KB (737138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb0d8d59e5ddd6c7ad0bb4fe3ab53785d7470f2b270e877ff7d74eee3ebaf0c`  
		Last Modified: Sun, 18 Nov 2018 03:35:46 GMT  
		Size: 5.1 KB (5059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51974e6f8b6d0ec2df76d76336dca23d3523a1d2f81dd623a7fb959cc815c86`  
		Last Modified: Sun, 18 Nov 2018 03:35:46 GMT  
		Size: 75.4 KB (75446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c8e1f5c96f6794b4e5f7c2cd95061ec9300ac75910eed539ab00fe4b4ff3ca`  
		Last Modified: Sun, 18 Nov 2018 03:35:59 GMT  
		Size: 169.0 MB (169027477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44d1e6d224df71dfcfb45d104247220b215657d9c428c6b376bcdc0aa562879`  
		Last Modified: Sun, 18 Nov 2018 03:35:46 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a41ac47eaa794248226adb29f2038b60b92b5fe5ff194d4b76beeeb05d424c4`  
		Last Modified: Sun, 18 Nov 2018 03:35:46 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:3de729594e7bf2ced64333d44a72717260eedb39db7dd89f8442aba35588719b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.2 MB (421191433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018be4adbdc9b04168ad269532c5ee5177d8386d318396156324b357e6869b82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:11 GMT
ADD file:21c19a0a0b72cf3f388f00fe01c1519967fda820c517637abea940bde9dcbdcb in / 
# Fri, 16 Nov 2018 09:29:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:16:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 21:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:48:47 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:58:50 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:58:51 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:58:54 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 21:58:57 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 22:02:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:26:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 17 Nov 2018 05:26:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 17 Nov 2018 05:26:39 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:26:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 05:26:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 05:26:43 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 17 Nov 2018 05:26:46 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 17 Nov 2018 05:26:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 17 Nov 2018 05:28:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sat, 17 Nov 2018 05:28:18 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sat, 17 Nov 2018 05:28:21 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 17 Nov 2018 05:28:21 GMT
EXPOSE 8983/tcp
# Sat, 17 Nov 2018 05:28:22 GMT
WORKDIR /opt/solr
# Sat, 17 Nov 2018 05:28:24 GMT
USER [solr]
# Sat, 17 Nov 2018 05:28:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 05:28:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e57b32151bc02904963bd565e696f960ec0fcf7e61de7736cf428f181f77a638`  
		Last Modified: Fri, 16 Nov 2018 09:37:27 GMT  
		Size: 52.4 MB (52388297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab0f66852fcb84f2cd9e128298c12a55a73df334109fd2d39ccada2d5813aa5`  
		Last Modified: Fri, 16 Nov 2018 19:43:21 GMT  
		Size: 7.8 MB (7805704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eae639cdf9e8ca8ce95408b8ae6bbcbde8367a9ad6d7c204571ff3c434eb01`  
		Last Modified: Fri, 16 Nov 2018 19:43:22 GMT  
		Size: 10.5 MB (10523243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169f3a6b7e77018135d5e7d2a160a8478b5b20742b2891c83585fae469bd1829`  
		Last Modified: Fri, 16 Nov 2018 22:30:19 GMT  
		Size: 845.9 KB (845922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294f380f205e99a54e59266e42e6dd728372af5f787647ae2eba822b14f40f70`  
		Last Modified: Fri, 16 Nov 2018 22:30:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8565eef2f2b739c1d966dd3e8c14e2f71d7b210e1baffd1d9d25b953b94ba`  
		Last Modified: Fri, 16 Nov 2018 22:42:57 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f47c1ba31a46b027166071538bffd7b5f2b2eff98ff63a1c990c797436c4e97`  
		Last Modified: Fri, 16 Nov 2018 22:44:20 GMT  
		Size: 179.8 MB (179790332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6208ca4acaaccaa5333c6700ddc078d2f02fd849b5ab89c2dccf079453ae0571`  
		Last Modified: Sat, 17 Nov 2018 06:04:14 GMT  
		Size: 732.0 KB (732016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaaa197c4a568d265c37d7c01e22f2bdfcc3f1b229c4e61d7f8176e5780024c`  
		Last Modified: Sat, 17 Nov 2018 06:04:13 GMT  
		Size: 5.1 KB (5129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb65833ee62e7f9522538a9c7a249b82488ba2e205d2ab9aa05a90b9013deb8`  
		Last Modified: Sat, 17 Nov 2018 06:04:11 GMT  
		Size: 75.5 KB (75520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2195846ba09e9c0c1ad38c7d278219beee95007c11ec959a656dcfdc5c9d1fab`  
		Last Modified: Sat, 17 Nov 2018 06:04:28 GMT  
		Size: 169.0 MB (169016418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f202d2ba0ac4746e213466796f4b86ede85200cf7a960db385da62e93ee9113`  
		Last Modified: Sat, 17 Nov 2018 06:04:11 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8187567bfdcff90f7d5a10bbfe6be1c47f7bdb7b8bb7afd89fa6541668a0982`  
		Last Modified: Sat, 17 Nov 2018 06:04:11 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:5eec929df9fa96bc4953a723237cea8f836cef4b058e392db29983991e52c159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382603062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe2746980d7d00ff9c19d8c08a493a505a823a8dd5522d7efc8ef8d0f4c6cfe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:14:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:14:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:46:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:27 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:46:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:50:34 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:50:35 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:50:35 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 16 Nov 2018 20:50:35 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Fri, 16 Nov 2018 20:51:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 07:29:31 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 17 Nov 2018 07:29:32 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 17 Nov 2018 07:29:36 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:29:36 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 07:29:36 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Nov 2018 07:29:36 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 17 Nov 2018 07:29:37 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 17 Nov 2018 07:29:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 17 Nov 2018 07:29:51 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Sat, 17 Nov 2018 07:29:51 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Sat, 17 Nov 2018 07:29:52 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Sat, 17 Nov 2018 07:29:52 GMT
EXPOSE 8983/tcp
# Sat, 17 Nov 2018 07:29:52 GMT
WORKDIR /opt/solr
# Sat, 17 Nov 2018 07:29:52 GMT
USER [solr]
# Sat, 17 Nov 2018 07:29:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Nov 2018 07:29:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41806c8eb45b71025055bb1e6fd1976203b50f81a43cd4d17ecd2e08bf1ca416`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 7.0 MB (7044644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311646161ff8988e1dbd14a16907d30a4e22f1b324c178e21580877b40c200d0`  
		Last Modified: Fri, 16 Nov 2018 20:22:12 GMT  
		Size: 9.7 MB (9670979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3daa5e6ccb5d5a10075a97563ac4cb3bc6bfb05665231d741f838f2c4695418`  
		Last Modified: Fri, 16 Nov 2018 21:01:05 GMT  
		Size: 856.8 KB (856763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08bf9b3fa4478baac5ba087a103482d1bdc6d787761586c7927c6d291478ac4`  
		Last Modified: Fri, 16 Nov 2018 21:01:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7ccb99cfd3abb4278220290509c2f103160d0f065850b2ce474bc03108d652`  
		Last Modified: Fri, 16 Nov 2018 21:06:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a153752731267db6b9b67ccf118159ed0b74f07ee04c41b464da10ca43812a5`  
		Last Modified: Fri, 16 Nov 2018 21:07:32 GMT  
		Size: 147.3 MB (147299320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2565773d5d501586f87201d9c376d1d5548cc1fa12752f2aef317306ca089643`  
		Last Modified: Sat, 17 Nov 2018 07:36:14 GMT  
		Size: 739.8 KB (739828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07ce3f6c9e6899df851dd406f96409d1e1e507f03a2227e9a685e8aa96fa5ef`  
		Last Modified: Sat, 17 Nov 2018 07:36:13 GMT  
		Size: 5.2 KB (5163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b30b6b86f55e7b212d8b804fa1f7d90e9f4fc54cc2d03c8f51e1257ec23d1a2`  
		Last Modified: Sat, 17 Nov 2018 07:36:13 GMT  
		Size: 75.4 KB (75444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1e0ea496d2a822d2bdf24059d09737321841899e9e4b3a4cdb09c407a57197`  
		Last Modified: Sat, 17 Nov 2018 07:36:25 GMT  
		Size: 169.0 MB (169033615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a459262d36defbca9f153dd83dcb643b5d3f39ede94f9e1a5ed427a624142d8`  
		Last Modified: Sat, 17 Nov 2018 07:36:13 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecdb5158423a8e2b730384d3c0d80bfd2632205393792ed9b31c14d5cade911`  
		Last Modified: Sat, 17 Nov 2018 07:36:13 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
