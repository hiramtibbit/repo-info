<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `flink`

-	[`flink:1.7`](#flink17)
-	[`flink:1.7.2`](#flink172)
-	[`flink:1.7.2-hadoop24`](#flink172-hadoop24)
-	[`flink:1.7.2-hadoop24-scala_2.11`](#flink172-hadoop24-scala_211)
-	[`flink:1.7.2-hadoop24-scala_2.12`](#flink172-hadoop24-scala_212)
-	[`flink:1.7.2-hadoop26`](#flink172-hadoop26)
-	[`flink:1.7.2-hadoop26-scala_2.11`](#flink172-hadoop26-scala_211)
-	[`flink:1.7.2-hadoop26-scala_2.12`](#flink172-hadoop26-scala_212)
-	[`flink:1.7.2-hadoop27`](#flink172-hadoop27)
-	[`flink:1.7.2-hadoop27-scala_2.11`](#flink172-hadoop27-scala_211)
-	[`flink:1.7.2-hadoop27-scala_2.12`](#flink172-hadoop27-scala_212)
-	[`flink:1.7.2-hadoop28`](#flink172-hadoop28)
-	[`flink:1.7.2-hadoop28-scala_2.11`](#flink172-hadoop28-scala_211)
-	[`flink:1.7.2-hadoop28-scala_2.12`](#flink172-hadoop28-scala_212)
-	[`flink:1.7.2-scala_2.11`](#flink172-scala_211)
-	[`flink:1.7.2-scala_2.12`](#flink172-scala_212)
-	[`flink:1.7-hadoop24`](#flink17-hadoop24)
-	[`flink:1.7-hadoop26`](#flink17-hadoop26)
-	[`flink:1.7-hadoop27`](#flink17-hadoop27)
-	[`flink:1.7-hadoop28`](#flink17-hadoop28)
-	[`flink:1.7-scala_2.11`](#flink17-scala_211)
-	[`flink:1.7-scala_2.12`](#flink17-scala_212)
-	[`flink:1.8`](#flink18)
-	[`flink:1.8.0`](#flink180)
-	[`flink:1.8.0-scala_2.11`](#flink180-scala_211)
-	[`flink:1.8.0-scala_2.12`](#flink180-scala_212)
-	[`flink:1.8-scala_2.11`](#flink18-scala_211)
-	[`flink:1.8-scala_2.12`](#flink18-scala_212)
-	[`flink:latest`](#flinklatest)
-	[`flink:scala_2.11`](#flinkscala_211)
-	[`flink:scala_2.12`](#flinkscala_212)

## `flink:1.7`

```console
$ docker pull flink@sha256:cc3f2e5007761bfb2083dc987cdbfbd903cb1eabb7ccd8e925dad958a460e7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7` - linux; amd64

```console
$ docker pull flink@sha256:2e79d3aec1558a35c28485806503df7534b3c042f1e0ca88b245a35174dc95e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358759012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a41aeda668165b4bca6caf6415bbf54b360588bad6bd5bc85e5e5ad092c0f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:37 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:38 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:29:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:29:35 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:29:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:29:35 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:29:35 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39acf3a2e7aa6b344e6e8fc7ca48299f9cd4e50c2687cc26b225b3bbcfcdefa0`  
		Last Modified: Wed, 29 May 2019 16:38:37 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d5b55d2c8cfe5a7cc8d52861cfef0d6b2f2343b9442edc221a6c4102491073`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44503a60003b1c9084354b2bada2f877ec4a4f91522bccbb9c42d8d3242476c`  
		Last Modified: Wed, 29 May 2019 16:39:04 GMT  
		Size: 252.1 MB (252062988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d556ca47192d1826f0e11cbb0ec6999c19df684e979e70a08518ecdbdb410016`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2`

```console
$ docker pull flink@sha256:cc3f2e5007761bfb2083dc987cdbfbd903cb1eabb7ccd8e925dad958a460e7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2` - linux; amd64

```console
$ docker pull flink@sha256:2e79d3aec1558a35c28485806503df7534b3c042f1e0ca88b245a35174dc95e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358759012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a41aeda668165b4bca6caf6415bbf54b360588bad6bd5bc85e5e5ad092c0f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:37 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:38 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:29:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:29:35 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:29:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:29:35 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:29:35 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39acf3a2e7aa6b344e6e8fc7ca48299f9cd4e50c2687cc26b225b3bbcfcdefa0`  
		Last Modified: Wed, 29 May 2019 16:38:37 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d5b55d2c8cfe5a7cc8d52861cfef0d6b2f2343b9442edc221a6c4102491073`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44503a60003b1c9084354b2bada2f877ec4a4f91522bccbb9c42d8d3242476c`  
		Last Modified: Wed, 29 May 2019 16:39:04 GMT  
		Size: 252.1 MB (252062988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d556ca47192d1826f0e11cbb0ec6999c19df684e979e70a08518ecdbdb410016`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop24`

```console
$ docker pull flink@sha256:3c74d78f02d6cdf7f3899760ce9d040b68082e825145dfaaf48ea43eac5472ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:b9263fead6e3cef6b5fc0f1164af3a6051c3b5fdf0e855bf6a06f7f0f7d64e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385854530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986cd9ac6f598a72f4469593c91192787957150702185da015ebca3d10a6cb46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:05 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:20:23 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:20:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:20:23 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:20:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e698bea0b49c773811e98a2bc8b5e43c3b9530590fdc639e272fd18d52624`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651fab6750dd50be1cd0a62bae1a203711217aa6c686a84c5ec22e23f4f104e`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c76b83fc7701002e7d058948ef0cb8f9bfd922292190268bacf3f6c866b6746`  
		Last Modified: Wed, 29 May 2019 16:34:23 GMT  
		Size: 279.2 MB (279158506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2580ee2e47e4a60d0f57fee7807cac2b15889ff551cd655d155cd4cc2f740a`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop24-scala_2.11`

```console
$ docker pull flink@sha256:315ad6ed449384d002f413c49af065f31b285e1ff2eb7fb36473767f91d33f67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop24-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:2112bb32520c0036f8d8da19a96e656c3e756636508f32d2cdf05ce2fe2e53fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396807889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca19d0f267682c2441637d1b43fab52795a5d078d971f945d93c44935d88e63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:19:36 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:19:36 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:19:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:19:37 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:19:37 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:19:37 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.11.tgz
# Wed, 29 May 2019 16:19:37 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:19:56 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:19:56 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:19:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:19:56 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:19:57 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9beb1c8a8c31625a2bf16cc3923f57204e90d99f9a04e2e855777f5bee31b0e`  
		Last Modified: Wed, 29 May 2019 16:33:19 GMT  
		Size: 4.6 KB (4619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3799437583f052cf0011282a82d5c19122fbf44b9e991045d9137504686770`  
		Last Modified: Wed, 29 May 2019 16:33:19 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca01557984ce253ccf7eb2f9d08b16ac22aa78ab78fb3d41bf0f34976a8495bb`  
		Last Modified: Wed, 29 May 2019 16:33:45 GMT  
		Size: 290.1 MB (290111862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc0ca9aeec08c20a7eeae45dc31f8297d2f1fb395a7aebc15454b861a075a3`  
		Last Modified: Wed, 29 May 2019 16:33:19 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop24-scala_2.12`

```console
$ docker pull flink@sha256:3c74d78f02d6cdf7f3899760ce9d040b68082e825145dfaaf48ea43eac5472ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop24-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:b9263fead6e3cef6b5fc0f1164af3a6051c3b5fdf0e855bf6a06f7f0f7d64e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385854530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986cd9ac6f598a72f4469593c91192787957150702185da015ebca3d10a6cb46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:05 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:20:23 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:20:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:20:23 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:20:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e698bea0b49c773811e98a2bc8b5e43c3b9530590fdc639e272fd18d52624`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651fab6750dd50be1cd0a62bae1a203711217aa6c686a84c5ec22e23f4f104e`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c76b83fc7701002e7d058948ef0cb8f9bfd922292190268bacf3f6c866b6746`  
		Last Modified: Wed, 29 May 2019 16:34:23 GMT  
		Size: 279.2 MB (279158506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2580ee2e47e4a60d0f57fee7807cac2b15889ff551cd655d155cd4cc2f740a`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop26`

```console
$ docker pull flink@sha256:0cee5e1652130fe6c70cd4f522480db489402bbf05e93c7f1cb8c09e33b2e28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:ebfacb1c6e2b6df62655554a462cdc8c0eab8b07e95e881913b649b78821edee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391358385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c896fb3d45227a9f76bc65301d9365a2e9728f7ee8175afee3ba4ede55617dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop26-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:54 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:55 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:56 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:57 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz
# Wed, 29 May 2019 16:20:58 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:21:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:21:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:21:24 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:21:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a18a840c176d2238bb6696bf72ca6d7fc7e01b1d4f122b11badd387ecfd134`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542cd9cce846226a82dfe8dac795ab726fcd9065deabe744033656dd3154d6e0`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ad030e0ce460d2099511b56103f5b639aa203eaf1ca364d7be420554cb87d`  
		Last Modified: Wed, 29 May 2019 16:35:37 GMT  
		Size: 284.7 MB (284662362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744696812224a99cd833edec78db45a328ec10dbe12540640bebb72968b3de8`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop26-scala_2.11`

```console
$ docker pull flink@sha256:6aa8f2c347159f25b19d500eb25d483e935c5a1244be4e4a3350284e34df14d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop26-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:a09b11c2262590c0d7e8012d36e1fb68918a14adb417e7b449fa99c4f4702d82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.3 MB (402311937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0b72b83296ffd1ed100fd4e09c98d3ed91b956451df1e5037ea42f17898bd2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:28 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:28 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:29 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:29 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:30 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:30 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.11.tgz
# Wed, 29 May 2019 16:20:30 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:20:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:20:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:20:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:20:50 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:20:50 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1320220904f1837bcf61fdf429d2f23ecb775c69b3a9c1c369039502040fe6db`  
		Last Modified: Wed, 29 May 2019 16:34:34 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dacd10906a1eaa95752fe93cb4f93603a0668a647b8cf3efd5ca5d03fdc337`  
		Last Modified: Wed, 29 May 2019 16:34:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ec7ada2e6eed5958b76ab565549ddea285bb32b476e21c9e40fde9faa1b09`  
		Last Modified: Wed, 29 May 2019 16:35:01 GMT  
		Size: 295.6 MB (295615915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247772e4445a2d46bf4c65d3197177db3fe9e0ca402fa45d762d9806bfb492f4`  
		Last Modified: Wed, 29 May 2019 16:34:35 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop26-scala_2.12`

```console
$ docker pull flink@sha256:0cee5e1652130fe6c70cd4f522480db489402bbf05e93c7f1cb8c09e33b2e28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop26-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:ebfacb1c6e2b6df62655554a462cdc8c0eab8b07e95e881913b649b78821edee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391358385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c896fb3d45227a9f76bc65301d9365a2e9728f7ee8175afee3ba4ede55617dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop26-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:54 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:55 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:56 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:57 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz
# Wed, 29 May 2019 16:20:58 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:21:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:21:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:21:24 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:21:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a18a840c176d2238bb6696bf72ca6d7fc7e01b1d4f122b11badd387ecfd134`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542cd9cce846226a82dfe8dac795ab726fcd9065deabe744033656dd3154d6e0`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ad030e0ce460d2099511b56103f5b639aa203eaf1ca364d7be420554cb87d`  
		Last Modified: Wed, 29 May 2019 16:35:37 GMT  
		Size: 284.7 MB (284662362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744696812224a99cd833edec78db45a328ec10dbe12540640bebb72968b3de8`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop27`

```console
$ docker pull flink@sha256:3091b0c3fe9ea5cf99b6e43469abd33bd407f5192a0bdd68f34e3ea42e9a13f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:c33a8a6dcca211be73a65e030385be078eeed1b9a2613cfbd5c7dc3fa43276a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396043971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e058f0e1f96c0886423a781068562ea3db5d357efe6428a417c6e00b4a34a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:04 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:22:21 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:22:21 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:22:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:22:21 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:22:21 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feaf2cd49ac072291dd582aa7aba2151a20312baf1669a311a36929b13f5e0d`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9183ba75b27703f32919e616fa1e63138107d63fa762add5eafa3c28962f91`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f3c446b5e9ceea9e6377e6186dad241b197a9e8344a50da88db8f23da173c`  
		Last Modified: Wed, 29 May 2019 16:36:49 GMT  
		Size: 289.3 MB (289347948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b443d69a241cebfd67161280bdba4afd9ebbd29737f94ad2c4890e7cc5074e3`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop27-scala_2.11`

```console
$ docker pull flink@sha256:8151295b44c12014b0849caab79fa492a4f2beafa852cfd871fe32a0f49e07de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop27-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:47738ce25ea0f7bd806e75f107b3b05ac93323150f54d32b88f76a1aaddf2460
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.0 MB (406997945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8a84d34396315aff118bb9ccbda1ab3010bcaf0ed77ad90458ba41a137608d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:21:31 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:21:32 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:21:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:21:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:21:33 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:21:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.11.tgz
# Wed, 29 May 2019 16:21:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:21:57 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:21:58 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:21:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:21:58 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:21:58 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01f811c1d674f8777dcf845c9e7b0265e6bde03fb5362da61c279e418af7606`  
		Last Modified: Wed, 29 May 2019 16:35:44 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190dc2a2a15494cd2e90dfab3d953a7f25c7653b6f43e470eaaf4358b9c1508b`  
		Last Modified: Wed, 29 May 2019 16:35:44 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3417645eb7351ff06dc5f2e337616b8ecfa0977a5d463451a507ade5fc05ccd8`  
		Last Modified: Wed, 29 May 2019 16:36:11 GMT  
		Size: 300.3 MB (300301923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96059acf16e22120faa65ef8e0d86ff8b81a8016ff186cab9e534947a23e0cb`  
		Last Modified: Wed, 29 May 2019 16:35:44 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop27-scala_2.12`

```console
$ docker pull flink@sha256:3091b0c3fe9ea5cf99b6e43469abd33bd407f5192a0bdd68f34e3ea42e9a13f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop27-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:c33a8a6dcca211be73a65e030385be078eeed1b9a2613cfbd5c7dc3fa43276a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396043971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e058f0e1f96c0886423a781068562ea3db5d357efe6428a417c6e00b4a34a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:04 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:22:21 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:22:21 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:22:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:22:21 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:22:21 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feaf2cd49ac072291dd582aa7aba2151a20312baf1669a311a36929b13f5e0d`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9183ba75b27703f32919e616fa1e63138107d63fa762add5eafa3c28962f91`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f3c446b5e9ceea9e6377e6186dad241b197a9e8344a50da88db8f23da173c`  
		Last Modified: Wed, 29 May 2019 16:36:49 GMT  
		Size: 289.3 MB (289347948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b443d69a241cebfd67161280bdba4afd9ebbd29737f94ad2c4890e7cc5074e3`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop28`

```console
$ docker pull flink@sha256:531b2099d9fe62229eaa28e5985391718a2fbd39d65683ca23fc2947656fe9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop28` - linux; amd64

```console
$ docker pull flink@sha256:02d80347b55d3290f9906e0d636b60ef5b03920de76f5174f5c6b69824a8c35b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397783604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad883e98713ba77686a1849a423187ea61496f45b1fe8cb7b66cbf9ea744116`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:58 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:58 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 29 May 2019 16:22:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:25:50 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:25:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:25:50 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:25:51 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c5a72c4205cf74a629fdf7f808db1842080099e0c24ab1e74406a92e2a4670`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8957547de4ed59efb88698042aa8c59e4e3881c6cff6299f61590c869c0e4a4`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15c82b14832f9a895858ab400b4ce753065de8aad6ec3cc4ee1c231cc38236c`  
		Last Modified: Wed, 29 May 2019 16:37:57 GMT  
		Size: 291.1 MB (291087582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6072f8c5adad2ad1e283c9dff7675cb0b398979fd15f9b1d471648a266153b`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop28-scala_2.11`

```console
$ docker pull flink@sha256:e4cd18655ff3dfcd60561f4a6bba8b1e34f7e60ac202fc2389f918ef2a456708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop28-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:a422182a5fa538f734c0d5d20ef193757054ffd4e121d051794bb9529d0f2dfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408737637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101bf9ddcb75ed1556b9144154b1a42ad5db9732d94fdf757c12d0a4f9a247e5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:26 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:26 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:27 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:27 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:28 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:28 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.11.tgz
# Wed, 29 May 2019 16:22:28 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:22:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:22:49 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:22:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:22:49 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:22:50 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b708430f91411d6671a6a159ee7320447af7d81d386b00249aadd3f0d817405`  
		Last Modified: Wed, 29 May 2019 16:36:55 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ff65c67a5fd287fe115d69d055ec1186d1d4cc757406251f01211abd7d646a`  
		Last Modified: Wed, 29 May 2019 16:36:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8125d4cd5a7d7719a9293ce82dfb6219739dae4e564ca9f0c52fe917e5fee2cf`  
		Last Modified: Wed, 29 May 2019 16:37:23 GMT  
		Size: 302.0 MB (302041617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e545858f55a9ae07768b8becae118be8a776ce929ed2396ab4ba4fb07647e3`  
		Last Modified: Wed, 29 May 2019 16:36:55 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-hadoop28-scala_2.12`

```console
$ docker pull flink@sha256:531b2099d9fe62229eaa28e5985391718a2fbd39d65683ca23fc2947656fe9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-hadoop28-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:02d80347b55d3290f9906e0d636b60ef5b03920de76f5174f5c6b69824a8c35b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397783604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad883e98713ba77686a1849a423187ea61496f45b1fe8cb7b66cbf9ea744116`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:58 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:58 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 29 May 2019 16:22:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:25:50 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:25:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:25:50 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:25:51 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c5a72c4205cf74a629fdf7f808db1842080099e0c24ab1e74406a92e2a4670`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8957547de4ed59efb88698042aa8c59e4e3881c6cff6299f61590c869c0e4a4`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15c82b14832f9a895858ab400b4ce753065de8aad6ec3cc4ee1c231cc38236c`  
		Last Modified: Wed, 29 May 2019 16:37:57 GMT  
		Size: 291.1 MB (291087582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6072f8c5adad2ad1e283c9dff7675cb0b398979fd15f9b1d471648a266153b`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-scala_2.11`

```console
$ docker pull flink@sha256:e29367495ebf46812246003c11201d343fccc9a7ae8d3c625852af9ebf652dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:c7644e84a28aa9e3e148596433038cce332843a68a0082724a5098b491218979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.7 MB (369715370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5a3fb101e992eda8174e13c0f6f75aeb17e4d2f1adbdbfe38154bf60fddc57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:08 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:08 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:10 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz
# Wed, 29 May 2019 16:26:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:26:29 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:26:29 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:26:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:26:30 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:26:30 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2ab4103b6a0a19a01a51f4a5be7ed94bcc4f1df60e7acf2866519363456cf`  
		Last Modified: Wed, 29 May 2019 16:38:06 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb347175a64345079dbd8a926f6771ca75530cd5044133d3b3bd3ef833dcb96b`  
		Last Modified: Wed, 29 May 2019 16:38:06 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cd36c44086ec563b09d6ef4222acb2107331bad73226cd4207f2a846669686`  
		Last Modified: Wed, 29 May 2019 16:38:31 GMT  
		Size: 263.0 MB (263019348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066f6832572fdb4b37c01b3a366b555a42cc3636d82e9db0478bc36f5d1213f4`  
		Last Modified: Wed, 29 May 2019 16:38:07 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7.2-scala_2.12`

```console
$ docker pull flink@sha256:cc3f2e5007761bfb2083dc987cdbfbd903cb1eabb7ccd8e925dad958a460e7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7.2-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:2e79d3aec1558a35c28485806503df7534b3c042f1e0ca88b245a35174dc95e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358759012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a41aeda668165b4bca6caf6415bbf54b360588bad6bd5bc85e5e5ad092c0f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:37 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:38 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:29:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:29:35 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:29:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:29:35 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:29:35 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39acf3a2e7aa6b344e6e8fc7ca48299f9cd4e50c2687cc26b225b3bbcfcdefa0`  
		Last Modified: Wed, 29 May 2019 16:38:37 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d5b55d2c8cfe5a7cc8d52861cfef0d6b2f2343b9442edc221a6c4102491073`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44503a60003b1c9084354b2bada2f877ec4a4f91522bccbb9c42d8d3242476c`  
		Last Modified: Wed, 29 May 2019 16:39:04 GMT  
		Size: 252.1 MB (252062988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d556ca47192d1826f0e11cbb0ec6999c19df684e979e70a08518ecdbdb410016`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-hadoop24`

```console
$ docker pull flink@sha256:3c74d78f02d6cdf7f3899760ce9d040b68082e825145dfaaf48ea43eac5472ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:b9263fead6e3cef6b5fc0f1164af3a6051c3b5fdf0e855bf6a06f7f0f7d64e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385854530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986cd9ac6f598a72f4469593c91192787957150702185da015ebca3d10a6cb46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop24-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:04 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:05 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz
# Wed, 29 May 2019 16:20:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop24-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:20:23 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:20:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:20:23 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:20:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e698bea0b49c773811e98a2bc8b5e43c3b9530590fdc639e272fd18d52624`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5651fab6750dd50be1cd0a62bae1a203711217aa6c686a84c5ec22e23f4f104e`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c76b83fc7701002e7d058948ef0cb8f9bfd922292190268bacf3f6c866b6746`  
		Last Modified: Wed, 29 May 2019 16:34:23 GMT  
		Size: 279.2 MB (279158506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2580ee2e47e4a60d0f57fee7807cac2b15889ff551cd655d155cd4cc2f740a`  
		Last Modified: Wed, 29 May 2019 16:33:51 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-hadoop26`

```console
$ docker pull flink@sha256:0cee5e1652130fe6c70cd4f522480db489402bbf05e93c7f1cb8c09e33b2e28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-hadoop26` - linux; amd64

```console
$ docker pull flink@sha256:ebfacb1c6e2b6df62655554a462cdc8c0eab8b07e95e881913b649b78821edee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391358385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c896fb3d45227a9f76bc65301d9365a2e9728f7ee8175afee3ba4ede55617dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop26-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:20:54 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:20:54 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:20:55 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:20:56 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:20:57 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz
# Wed, 29 May 2019 16:20:58 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop26-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:21:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:21:23 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:21:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:21:24 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:21:24 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a18a840c176d2238bb6696bf72ca6d7fc7e01b1d4f122b11badd387ecfd134`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542cd9cce846226a82dfe8dac795ab726fcd9065deabe744033656dd3154d6e0`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ad030e0ce460d2099511b56103f5b639aa203eaf1ca364d7be420554cb87d`  
		Last Modified: Wed, 29 May 2019 16:35:37 GMT  
		Size: 284.7 MB (284662362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744696812224a99cd833edec78db45a328ec10dbe12540640bebb72968b3de8`  
		Last Modified: Wed, 29 May 2019 16:35:11 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-hadoop27`

```console
$ docker pull flink@sha256:3091b0c3fe9ea5cf99b6e43469abd33bd407f5192a0bdd68f34e3ea42e9a13f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:c33a8a6dcca211be73a65e030385be078eeed1b9a2613cfbd5c7dc3fa43276a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396043971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e058f0e1f96c0886423a781068562ea3db5d357efe6428a417c6e00b4a34a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:03 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:04 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:05 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 29 May 2019 16:22:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:22:21 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:22:21 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:22:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:22:21 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:22:21 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feaf2cd49ac072291dd582aa7aba2151a20312baf1669a311a36929b13f5e0d`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9183ba75b27703f32919e616fa1e63138107d63fa762add5eafa3c28962f91`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f3c446b5e9ceea9e6377e6186dad241b197a9e8344a50da88db8f23da173c`  
		Last Modified: Wed, 29 May 2019 16:36:49 GMT  
		Size: 289.3 MB (289347948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b443d69a241cebfd67161280bdba4afd9ebbd29737f94ad2c4890e7cc5074e3`  
		Last Modified: Wed, 29 May 2019 16:36:20 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-hadoop28`

```console
$ docker pull flink@sha256:531b2099d9fe62229eaa28e5985391718a2fbd39d65683ca23fc2947656fe9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-hadoop28` - linux; amd64

```console
$ docker pull flink@sha256:02d80347b55d3290f9906e0d636b60ef5b03920de76f5174f5c6b69824a8c35b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.8 MB (397783604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad883e98713ba77686a1849a423187ea61496f45b1fe8cb7b66cbf9ea744116`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:22:55 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:22:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:22:57 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:22:58 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:22:58 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz
# Wed, 29 May 2019 16:22:59 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop28-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:25:50 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:25:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:25:50 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:25:51 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c5a72c4205cf74a629fdf7f808db1842080099e0c24ab1e74406a92e2a4670`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8957547de4ed59efb88698042aa8c59e4e3881c6cff6299f61590c869c0e4a4`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15c82b14832f9a895858ab400b4ce753065de8aad6ec3cc4ee1c231cc38236c`  
		Last Modified: Wed, 29 May 2019 16:37:57 GMT  
		Size: 291.1 MB (291087582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6072f8c5adad2ad1e283c9dff7675cb0b398979fd15f9b1d471648a266153b`  
		Last Modified: Wed, 29 May 2019 16:37:31 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-scala_2.11`

```console
$ docker pull flink@sha256:e29367495ebf46812246003c11201d343fccc9a7ae8d3c625852af9ebf652dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:c7644e84a28aa9e3e148596433038cce332843a68a0082724a5098b491218979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.7 MB (369715370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5a3fb101e992eda8174e13c0f6f75aeb17e4d2f1adbdbfe38154bf60fddc57`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:08 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.11 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:08 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:09 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:10 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:10 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz
# Wed, 29 May 2019 16:26:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:26:29 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:26:29 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:26:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:26:30 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:26:30 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a2ab4103b6a0a19a01a51f4a5be7ed94bcc4f1df60e7acf2866519363456cf`  
		Last Modified: Wed, 29 May 2019 16:38:06 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb347175a64345079dbd8a926f6771ca75530cd5044133d3b3bd3ef833dcb96b`  
		Last Modified: Wed, 29 May 2019 16:38:06 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cd36c44086ec563b09d6ef4222acb2107331bad73226cd4207f2a846669686`  
		Last Modified: Wed, 29 May 2019 16:38:31 GMT  
		Size: 263.0 MB (263019348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066f6832572fdb4b37c01b3a366b555a42cc3636d82e9db0478bc36f5d1213f4`  
		Last Modified: Wed, 29 May 2019 16:38:07 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.7-scala_2.12`

```console
$ docker pull flink@sha256:cc3f2e5007761bfb2083dc987cdbfbd903cb1eabb7ccd8e925dad958a460e7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.7-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:2e79d3aec1558a35c28485806503df7534b3c042f1e0ca88b245a35174dc95e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358759012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a41aeda668165b4bca6caf6415bbf54b360588bad6bd5bc85e5e5ad092c0f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=1C1E2394D3194E1944613488F320986D35C33D6A
# Wed, 29 May 2019 16:26:36 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:26:36 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:26:37 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:26:38 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:26:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:29:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:29:35 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:29:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:29:35 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:29:35 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39acf3a2e7aa6b344e6e8fc7ca48299f9cd4e50c2687cc26b225b3bbcfcdefa0`  
		Last Modified: Wed, 29 May 2019 16:38:37 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d5b55d2c8cfe5a7cc8d52861cfef0d6b2f2343b9442edc221a6c4102491073`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44503a60003b1c9084354b2bada2f877ec4a4f91522bccbb9c42d8d3242476c`  
		Last Modified: Wed, 29 May 2019 16:39:04 GMT  
		Size: 252.1 MB (252062988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d556ca47192d1826f0e11cbb0ec6999c19df684e979e70a08518ecdbdb410016`  
		Last Modified: Wed, 29 May 2019 16:38:36 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8.0`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8.0` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8.0-scala_2.11`

```console
$ docker pull flink@sha256:c4058d97f22615c334b1e1c3b9bf33d19210cb837937a89e0123e781b8823c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8.0-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:68fa4a0cd945910762c135367210a193e5ba0117904243b78bbc69839565ba7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404593442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25115061db72b4b2789dbd465188befd950b81b0619638a4b21cb95a4a8466e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:29:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:29:52 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:29:52 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:29:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Wed, 29 May 2019 16:29:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:31:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:31:18 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:31:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:31:18 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:31:19 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c70c7de271b8cb1eb1fd896f05601ec19d05b1088ad3cf513d3d3761024ea`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced1d7374d3b85c89538e85752cc87c9ef972857f7a0dd1fd7633ea6ce88c846`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fba60d15fab5d005b6c707f872488f646ac17610f111cb1e1d56f1aee31ee3f`  
		Last Modified: Wed, 29 May 2019 16:39:45 GMT  
		Size: 297.9 MB (297897420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2864da2ae68675a55cbd6860764371048ef9414c5dfef82001873a8fa7a831e7`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8.0-scala_2.12`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8.0-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8-scala_2.11`

```console
$ docker pull flink@sha256:c4058d97f22615c334b1e1c3b9bf33d19210cb837937a89e0123e781b8823c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8-scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:68fa4a0cd945910762c135367210a193e5ba0117904243b78bbc69839565ba7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404593442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25115061db72b4b2789dbd465188befd950b81b0619638a4b21cb95a4a8466e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:29:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:29:52 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:29:52 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:29:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Wed, 29 May 2019 16:29:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:31:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:31:18 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:31:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:31:18 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:31:19 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c70c7de271b8cb1eb1fd896f05601ec19d05b1088ad3cf513d3d3761024ea`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced1d7374d3b85c89538e85752cc87c9ef972857f7a0dd1fd7633ea6ce88c846`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fba60d15fab5d005b6c707f872488f646ac17610f111cb1e1d56f1aee31ee3f`  
		Last Modified: Wed, 29 May 2019 16:39:45 GMT  
		Size: 297.9 MB (297897420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2864da2ae68675a55cbd6860764371048ef9414c5dfef82001873a8fa7a831e7`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:1.8-scala_2.12`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:1.8-scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:latest`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:latest` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:scala_2.11`

```console
$ docker pull flink@sha256:c4058d97f22615c334b1e1c3b9bf33d19210cb837937a89e0123e781b8823c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:68fa4a0cd945910762c135367210a193e5ba0117904243b78bbc69839565ba7f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404593442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25115061db72b4b2789dbd465188befd950b81b0619638a4b21cb95a4a8466e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:29:50 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:29:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:29:52 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:29:52 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:29:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Wed, 29 May 2019 16:29:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Wed, 29 May 2019 16:31:17 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:31:18 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:31:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:31:18 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:31:19 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c70c7de271b8cb1eb1fd896f05601ec19d05b1088ad3cf513d3d3761024ea`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 4.6 KB (4615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced1d7374d3b85c89538e85752cc87c9ef972857f7a0dd1fd7633ea6ce88c846`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fba60d15fab5d005b6c707f872488f646ac17610f111cb1e1d56f1aee31ee3f`  
		Last Modified: Wed, 29 May 2019 16:39:45 GMT  
		Size: 297.9 MB (297897420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2864da2ae68675a55cbd6860764371048ef9414c5dfef82001873a8fa7a831e7`  
		Last Modified: Wed, 29 May 2019 16:39:16 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `flink:scala_2.12`

```console
$ docker pull flink@sha256:7035c8607a60dc0b0da293fe87f689f3a186402e5076cbadc309ed41edbe2fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.12` - linux; amd64

```console
$ docker pull flink@sha256:8155de2759c2a0a6a3ccb4164b28274f0b5bcba2ba89eb1fe7721458bc87927c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393817866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa6fc8ac9dd03f2ef96a9c9656a6121bac615caa147ae1129de935194dcbfd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 24 May 2019 22:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:36:01 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:36:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:36:01 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:36:02 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 22:36:02 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:36:09 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			java -version
# Fri, 24 May 2019 23:20:45 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 16:19:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 May 2019 16:19:36 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12 GPG_KEY=F2A67A8047499BBB3908D17AA8F4FD97121D7293
# Wed, 29 May 2019 16:31:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 29 May 2019 16:31:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 16:31:35 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 29 May 2019 16:31:36 GMT
WORKDIR /opt/flink
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Wed, 29 May 2019 16:31:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Wed, 29 May 2019 16:32:36 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   for server in ha.pool.sks-keyservers.net $(shuf -e                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys "$GPG_KEY" && break || : ;   done &&   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 29 May 2019 16:32:37 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Wed, 29 May 2019 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 16:32:37 GMT
EXPOSE 6123 8081
# Wed, 29 May 2019 16:32:38 GMT
CMD ["help"]
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
	-	`sha256:dd65018e744aa881f314cd3cc0910adbbbc74b87caf0ff0c73c7333febfd12f0`  
		Last Modified: Fri, 24 May 2019 22:39:19 GMT  
		Size: 4.8 MB (4836356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9f08c61413c8dec5e6aee18161f6f65215a0341e7441b6bf2a528e522129e`  
		Last Modified: Fri, 24 May 2019 22:39:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c92e54f80a0ee71c15e46e425d5435344c32b0d19743a41728afe52ec0cc32`  
		Last Modified: Fri, 24 May 2019 22:39:24 GMT  
		Size: 40.1 MB (40099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230b631f0131d8e69b7a6b609612df77e319618dc31aadff1bc11c258b7489c`  
		Last Modified: Fri, 24 May 2019 23:28:30 GMT  
		Size: 389.4 KB (389439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768567dff3d5f566c29ba3e81e6da7aa18e72f09e4f5bd2cba30200fe8110463`  
		Last Modified: Wed, 29 May 2019 16:33:20 GMT  
		Size: 900.3 KB (900275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ebb9e2f2cacc2e2a4d5dc110305d4942b00fd6cfe3c7adf9339a8c27e1322`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d6c2f82cef3a554d3c405541de90141124125120b99356abf50e387d7a23e`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0092803053dfe85974444dda63f22c596ccddfd7f8aa7593eef2da951bc3dd`  
		Last Modified: Wed, 29 May 2019 16:40:25 GMT  
		Size: 287.1 MB (287121845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934694ab3e84706d50b6d26541666ea79824be2a98486f7206b0f9cf2a3f0b80`  
		Last Modified: Wed, 29 May 2019 16:39:52 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
