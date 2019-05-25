<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.7-community`](#sonarqube677-community)
-	[`sonarqube:6.7-community`](#sonarqube67-community)
-	[`sonarqube:7.7-community`](#sonarqube77-community)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)

## `sonarqube:6.7.7-community`

```console
$ docker pull sonarqube@sha256:f319b5ff48d31dee9adc354a4718ae7ee472c6587dda982614de44bc69170c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.7-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:d870dba4398cb5c2b8c2040d417efeaa193dc615153eb2a0f1f8aee5a1d3e90b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.8 MB (378790278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f1f79320644192179f2302e1284cb67606c430aae7eb7af121471d2948bfe0`
-	Entrypoint: `[".\/bin\/run.sh"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:36:44 GMT
ENV SONAR_VERSION=6.7.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 24 May 2019 23:36:44 GMT
EXPOSE 9000
# Fri, 24 May 2019 23:36:45 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 24 May 2019 23:36:49 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 24 May 2019 23:37:05 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 24 May 2019 23:37:05 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 24 May 2019 23:37:05 GMT
WORKDIR /opt/sonarqube
# Fri, 24 May 2019 23:37:05 GMT
COPY file:11ab5c1c06a392784b593d333305f8188621a0da21d5a6d9fe37648f6c82181b in /opt/sonarqube/bin/ 
# Fri, 24 May 2019 23:37:05 GMT
USER sonarqube
# Fri, 24 May 2019 23:37:06 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6928c43f898acedb8c33978a0c38b65f7b24aeb8883ef8c8106bf96914cc3419`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26821dcd637205a42f54c08c69e8210b14d2b3fe4355a82a4ec0f15400431812`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fedf22301296b9e7d0c6ad8491389f368076cc1d3385064e9ac39d7e7491a44`  
		Last Modified: Fri, 24 May 2019 23:37:59 GMT  
		Size: 159.1 MB (159122178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3f0f9b06459841d1d2ef9f647639f87321b99b2dfd6fb661bc4fac61acf753`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 666.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7-community`

```console
$ docker pull sonarqube@sha256:f319b5ff48d31dee9adc354a4718ae7ee472c6587dda982614de44bc69170c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:d870dba4398cb5c2b8c2040d417efeaa193dc615153eb2a0f1f8aee5a1d3e90b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.8 MB (378790278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f1f79320644192179f2302e1284cb67606c430aae7eb7af121471d2948bfe0`
-	Entrypoint: `[".\/bin\/run.sh"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:36:44 GMT
ENV SONAR_VERSION=6.7.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 24 May 2019 23:36:44 GMT
EXPOSE 9000
# Fri, 24 May 2019 23:36:45 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 24 May 2019 23:36:49 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 24 May 2019 23:37:05 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 24 May 2019 23:37:05 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 24 May 2019 23:37:05 GMT
WORKDIR /opt/sonarqube
# Fri, 24 May 2019 23:37:05 GMT
COPY file:11ab5c1c06a392784b593d333305f8188621a0da21d5a6d9fe37648f6c82181b in /opt/sonarqube/bin/ 
# Fri, 24 May 2019 23:37:05 GMT
USER sonarqube
# Fri, 24 May 2019 23:37:06 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6928c43f898acedb8c33978a0c38b65f7b24aeb8883ef8c8106bf96914cc3419`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26821dcd637205a42f54c08c69e8210b14d2b3fe4355a82a4ec0f15400431812`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fedf22301296b9e7d0c6ad8491389f368076cc1d3385064e9ac39d7e7491a44`  
		Last Modified: Fri, 24 May 2019 23:37:59 GMT  
		Size: 159.1 MB (159122178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3f0f9b06459841d1d2ef9f647639f87321b99b2dfd6fb661bc4fac61acf753`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 666.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.7-community`

```console
$ docker pull sonarqube@sha256:d86b95fe4b9903273ce478ac837fa73d9ea965430bb92b46d39bd8556ff44989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.7-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:b2f04ce15e3160346edf1a6bf36996f9d725b934e33d1c776b5ac2c6333445c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 MB (415220534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f14875f4eb2474a72690b6e0a2249b3848983a9e17e6fb28fa2005f5a54c4be`
-	Entrypoint: `[".\/bin\/run.sh"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:37:11 GMT
ENV SONAR_VERSION=7.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 24 May 2019 23:37:11 GMT
EXPOSE 9000
# Fri, 24 May 2019 23:37:12 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 24 May 2019 23:37:15 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 24 May 2019 23:37:33 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 24 May 2019 23:37:33 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 24 May 2019 23:37:33 GMT
WORKDIR /opt/sonarqube
# Fri, 24 May 2019 23:37:34 GMT
COPY file:11ab5c1c06a392784b593d333305f8188621a0da21d5a6d9fe37648f6c82181b in /opt/sonarqube/bin/ 
# Fri, 24 May 2019 23:37:34 GMT
USER sonarqube
# Fri, 24 May 2019 23:37:34 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06442992d566d4651a35f0e53a4ef31ad917adc305949b26a17781e3a3fce98f`  
		Last Modified: Fri, 24 May 2019 23:38:16 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd5ae2beeeb6a674d3da698af8896bdb9ca000f4ddeec098c652796d682e4eb`  
		Last Modified: Fri, 24 May 2019 23:38:15 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7240f38c4e33f99393a8e09b78cba151e44b2ce26c206b2a4c7057ce2d001a30`  
		Last Modified: Fri, 24 May 2019 23:38:41 GMT  
		Size: 195.6 MB (195552436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b63372aad6dbad24f512383bbe63846f9777b86ad17aba18a597294948d6a7`  
		Last Modified: Fri, 24 May 2019 23:38:15 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:d86b95fe4b9903273ce478ac837fa73d9ea965430bb92b46d39bd8556ff44989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:b2f04ce15e3160346edf1a6bf36996f9d725b934e33d1c776b5ac2c6333445c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 MB (415220534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f14875f4eb2474a72690b6e0a2249b3848983a9e17e6fb28fa2005f5a54c4be`
-	Entrypoint: `[".\/bin\/run.sh"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:37:11 GMT
ENV SONAR_VERSION=7.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 24 May 2019 23:37:11 GMT
EXPOSE 9000
# Fri, 24 May 2019 23:37:12 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 24 May 2019 23:37:15 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 24 May 2019 23:37:33 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 24 May 2019 23:37:33 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 24 May 2019 23:37:33 GMT
WORKDIR /opt/sonarqube
# Fri, 24 May 2019 23:37:34 GMT
COPY file:11ab5c1c06a392784b593d333305f8188621a0da21d5a6d9fe37648f6c82181b in /opt/sonarqube/bin/ 
# Fri, 24 May 2019 23:37:34 GMT
USER sonarqube
# Fri, 24 May 2019 23:37:34 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06442992d566d4651a35f0e53a4ef31ad917adc305949b26a17781e3a3fce98f`  
		Last Modified: Fri, 24 May 2019 23:38:16 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd5ae2beeeb6a674d3da698af8896bdb9ca000f4ddeec098c652796d682e4eb`  
		Last Modified: Fri, 24 May 2019 23:38:15 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7240f38c4e33f99393a8e09b78cba151e44b2ce26c206b2a4c7057ce2d001a30`  
		Last Modified: Fri, 24 May 2019 23:38:41 GMT  
		Size: 195.6 MB (195552436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b63372aad6dbad24f512383bbe63846f9777b86ad17aba18a597294948d6a7`  
		Last Modified: Fri, 24 May 2019 23:38:15 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:f319b5ff48d31dee9adc354a4718ae7ee472c6587dda982614de44bc69170c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:d870dba4398cb5c2b8c2040d417efeaa193dc615153eb2a0f1f8aee5a1d3e90b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.8 MB (378790278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f1f79320644192179f2302e1284cb67606c430aae7eb7af121471d2948bfe0`
-	Entrypoint: `[".\/bin\/run.sh"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:36:44 GMT
ENV SONAR_VERSION=6.7.7 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 24 May 2019 23:36:44 GMT
EXPOSE 9000
# Fri, 24 May 2019 23:36:45 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 24 May 2019 23:36:49 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 24 May 2019 23:37:05 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 24 May 2019 23:37:05 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 24 May 2019 23:37:05 GMT
WORKDIR /opt/sonarqube
# Fri, 24 May 2019 23:37:05 GMT
COPY file:11ab5c1c06a392784b593d333305f8188621a0da21d5a6d9fe37648f6c82181b in /opt/sonarqube/bin/ 
# Fri, 24 May 2019 23:37:05 GMT
USER sonarqube
# Fri, 24 May 2019 23:37:06 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6928c43f898acedb8c33978a0c38b65f7b24aeb8883ef8c8106bf96914cc3419`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26821dcd637205a42f54c08c69e8210b14d2b3fe4355a82a4ec0f15400431812`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fedf22301296b9e7d0c6ad8491389f368076cc1d3385064e9ac39d7e7491a44`  
		Last Modified: Fri, 24 May 2019 23:37:59 GMT  
		Size: 159.1 MB (159122178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3f0f9b06459841d1d2ef9f647639f87321b99b2dfd6fb661bc4fac61acf753`  
		Last Modified: Fri, 24 May 2019 23:37:43 GMT  
		Size: 666.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
