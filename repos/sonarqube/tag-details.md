<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.6-community`](#sonarqube676-community)
-	[`sonarqube:6.7-community`](#sonarqube67-community)
-	[`sonarqube:7.4-community`](#sonarqube74-community)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)

## `sonarqube:6.7.6-community`

```console
$ docker pull sonarqube@sha256:df96a3e8d53065568ffa04d219802e68ec084b560be92750baf4944bd48a27c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.6-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:d4961451a5c150aceb58bd48e0315c150a7677a2921d08730d5da8881a2245cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e53fedd26379bd1ebaef2b73caf6de442334a35c7e65dce63c96e96616781a4`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 30 Nov 2018 00:20:39 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 30 Nov 2018 00:20:39 GMT
EXPOSE 9000/tcp
# Fri, 30 Nov 2018 00:20:40 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 30 Nov 2018 00:20:43 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 30 Nov 2018 00:21:08 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 30 Nov 2018 00:21:14 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 30 Nov 2018 00:21:14 GMT
WORKDIR /opt/sonarqube
# Fri, 30 Nov 2018 00:21:15 GMT
COPY file:c1708586e3f5e4b148b14ab1c5a7e84f4ffd95623d8d84f2a2c14db05a239654 in /opt/sonarqube/bin/ 
# Fri, 30 Nov 2018 00:21:15 GMT
USER [sonarqube]
# Fri, 30 Nov 2018 00:21:15 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a3a299fc56ab5533c211f15cc186a7454bf03a2870b3b844c8977b8554dea4`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d331db9805d5bf6349598005b13450baf1d827949f9a36ea3a94418afb99f2`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c877ba988bbcc113320e5791b42ccd9abcb32a09c9ca081fd0d08a1a1fb0c7`  
		Last Modified: Fri, 30 Nov 2018 00:23:16 GMT  
		Size: 158.8 MB (158809736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2e29d584073db590af0ad6f443e57611b32bc6082547103b0e08b098884436`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7-community`

```console
$ docker pull sonarqube@sha256:df96a3e8d53065568ffa04d219802e68ec084b560be92750baf4944bd48a27c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:d4961451a5c150aceb58bd48e0315c150a7677a2921d08730d5da8881a2245cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e53fedd26379bd1ebaef2b73caf6de442334a35c7e65dce63c96e96616781a4`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 30 Nov 2018 00:20:39 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 30 Nov 2018 00:20:39 GMT
EXPOSE 9000/tcp
# Fri, 30 Nov 2018 00:20:40 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 30 Nov 2018 00:20:43 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 30 Nov 2018 00:21:08 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 30 Nov 2018 00:21:14 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 30 Nov 2018 00:21:14 GMT
WORKDIR /opt/sonarqube
# Fri, 30 Nov 2018 00:21:15 GMT
COPY file:c1708586e3f5e4b148b14ab1c5a7e84f4ffd95623d8d84f2a2c14db05a239654 in /opt/sonarqube/bin/ 
# Fri, 30 Nov 2018 00:21:15 GMT
USER [sonarqube]
# Fri, 30 Nov 2018 00:21:15 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a3a299fc56ab5533c211f15cc186a7454bf03a2870b3b844c8977b8554dea4`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d331db9805d5bf6349598005b13450baf1d827949f9a36ea3a94418afb99f2`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c877ba988bbcc113320e5791b42ccd9abcb32a09c9ca081fd0d08a1a1fb0c7`  
		Last Modified: Fri, 30 Nov 2018 00:23:16 GMT  
		Size: 158.8 MB (158809736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2e29d584073db590af0ad6f443e57611b32bc6082547103b0e08b098884436`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.4-community`

```console
$ docker pull sonarqube@sha256:99734caf24c66b547235f665bcb4ceb04fc90f9db2e13a3ca86be810407f077f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.4-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:415006a857e8c8e629f69ade68c4fab0b579ab7540d3bbbfaab228df2f026c93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.4 MB (417358584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471eeabfec42d25691c943a3ef5bb9d0af9982dac04a423dac115e45991301cb`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 30 Nov 2018 00:21:48 GMT
ENV SONAR_VERSION=7.4 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 30 Nov 2018 00:21:49 GMT
EXPOSE 9000/tcp
# Fri, 30 Nov 2018 00:21:49 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 30 Nov 2018 00:21:53 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 30 Nov 2018 00:22:21 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 30 Nov 2018 00:22:26 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 30 Nov 2018 00:22:26 GMT
WORKDIR /opt/sonarqube
# Fri, 30 Nov 2018 00:22:27 GMT
COPY file:c1708586e3f5e4b148b14ab1c5a7e84f4ffd95623d8d84f2a2c14db05a239654 in /opt/sonarqube/bin/ 
# Fri, 30 Nov 2018 00:22:27 GMT
USER [sonarqube]
# Fri, 30 Nov 2018 00:22:27 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352d7281fea9343b8c36386c91212721744852652c149b9a12e565beca67ee97`  
		Last Modified: Fri, 30 Nov 2018 00:24:23 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45552dc198eaa0bab2c0f15e9a33449629770bf5d05bc3aa501687b64d84f8ff`  
		Last Modified: Fri, 30 Nov 2018 00:24:23 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe2a336f3912a983207faedf2ba4aa984f95ca984c47494129166d0fbdafae`  
		Last Modified: Fri, 30 Nov 2018 00:24:36 GMT  
		Size: 171.3 MB (171278903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e634b8649bfeda568dabf4d6d12884b035fcdebbf4d088f7a7bd42cb467dd`  
		Last Modified: Fri, 30 Nov 2018 00:24:23 GMT  
		Size: 662.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:cc57b262ee9e7145456dee8c7ae24622c82b22cabeaac4651e7dd642da806f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:e36dcf59f4da62694a6e8265e6c56ca18596f59880f4cb6dd2c9efc6e0022405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395350211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a39fc50869ad61401c1ae936dd77f397baebb830a39305ee3347626b7fa59e9`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:03:43 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 30 Oct 2018 05:03:43 GMT
EXPOSE 9000/tcp
# Tue, 30 Oct 2018 05:03:45 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 30 Oct 2018 05:03:49 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 30 Oct 2018 05:04:05 GMT
RUN set -x     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 30 Oct 2018 05:04:05 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 30 Oct 2018 05:04:06 GMT
WORKDIR /opt/sonarqube
# Tue, 30 Oct 2018 05:04:07 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 30 Oct 2018 05:04:07 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884af0bfbb9aff44e5a2128f4999d2cd145c06db2badbcd677429361570a8f6d`  
		Last Modified: Tue, 30 Oct 2018 05:05:57 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a8cd0c916abe5c034e27a86995ed5fbe80df0c276f58c7ff9421c3d9a41063`  
		Last Modified: Tue, 30 Oct 2018 05:05:57 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9ecbe7a34366f5c2b01e37fd0f8f0efb2b121d49f07138c75c534692cc27c1`  
		Last Modified: Tue, 30 Oct 2018 05:06:12 GMT  
		Size: 149.3 MB (149281075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af800bded4f39e7f658dce8b8cc35a72792ac209ec3ecf9dc428ba4aa2716656`  
		Last Modified: Tue, 30 Oct 2018 05:05:57 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:df96a3e8d53065568ffa04d219802e68ec084b560be92750baf4944bd48a27c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:d4961451a5c150aceb58bd48e0315c150a7677a2921d08730d5da8881a2245cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e53fedd26379bd1ebaef2b73caf6de442334a35c7e65dce63c96e96616781a4`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 30 Nov 2018 00:20:39 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Fri, 30 Nov 2018 00:20:39 GMT
EXPOSE 9000/tcp
# Fri, 30 Nov 2018 00:20:40 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 30 Nov 2018 00:20:43 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 30 Nov 2018 00:21:08 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 30 Nov 2018 00:21:14 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 30 Nov 2018 00:21:14 GMT
WORKDIR /opt/sonarqube
# Fri, 30 Nov 2018 00:21:15 GMT
COPY file:c1708586e3f5e4b148b14ab1c5a7e84f4ffd95623d8d84f2a2c14db05a239654 in /opt/sonarqube/bin/ 
# Fri, 30 Nov 2018 00:21:15 GMT
USER [sonarqube]
# Fri, 30 Nov 2018 00:21:15 GMT
ENTRYPOINT ["./bin/run.sh"]
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
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a3a299fc56ab5533c211f15cc186a7454bf03a2870b3b844c8977b8554dea4`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d331db9805d5bf6349598005b13450baf1d827949f9a36ea3a94418afb99f2`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c877ba988bbcc113320e5791b42ccd9abcb32a09c9ca081fd0d08a1a1fb0c7`  
		Last Modified: Fri, 30 Nov 2018 00:23:16 GMT  
		Size: 158.8 MB (158809736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2e29d584073db590af0ad6f443e57611b32bc6082547103b0e08b098884436`  
		Last Modified: Fri, 30 Nov 2018 00:23:01 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
