<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.5`](#sonarqube675)
-	[`sonarqube:6.7.5-alpine`](#sonarqube675-alpine)
-	[`sonarqube:7.1`](#sonarqube71)
-	[`sonarqube:7.1-alpine`](#sonarqube71-alpine)
-	[`sonarqube:alpine`](#sonarqubealpine)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:lts-alpine`](#sonarqubelts-alpine)

## `sonarqube:6.7.5`

```console
$ docker pull sonarqube@sha256:3adc8f390ec16de858ee0a8d2c9bbbe4d7b6e56390fbcb5a2fdc7c55d5b0482d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5` - linux; amd64

```console
$ docker pull sonarqube@sha256:27aa2de22005718b90a86d988fb8f0ca06738965cca8584bbf0ecc2527c1afb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404883955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0aa847b3afe0dcd893774b147238092533468db30563376cba7817b4f0a6e6`
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
# Tue, 30 Oct 2018 05:02:52 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 30 Oct 2018 05:02:52 GMT
EXPOSE 9000/tcp
# Tue, 30 Oct 2018 05:02:53 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 30 Oct 2018 05:02:57 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 30 Oct 2018 05:03:14 GMT
RUN set -x     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 30 Oct 2018 05:03:14 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 30 Oct 2018 05:03:15 GMT
WORKDIR /opt/sonarqube
# Tue, 30 Oct 2018 05:03:16 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 30 Oct 2018 05:03:16 GMT
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
	-	`sha256:96f612a96c775a96097f4f42c6546549cb173ff60c621329b88bb5070753422e`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbccf3d01b3cdff91b8c0b354d4b827b057894251e18dcf432b3eb4edcb11a3`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c501695b13e59eee6ab94157a8eb7ec85f7f7ca2060f4bec057b2f63e8460`  
		Last Modified: Tue, 30 Oct 2018 05:05:11 GMT  
		Size: 158.8 MB (158814818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d4f5f085d5d74646d511ee64cc257244e95288d9e620e37a67efa5b948b7a3`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7.5-alpine`

```console
$ docker pull sonarqube@sha256:cab807588c2f8c693d1c5370552a8a849cf44742946174466850adb6e271ce05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:719c5f6cf22f5547996559bca46be15c4661d47544278fc107a1e3c3b6004800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238794809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33256f6e483c4578149328154dfca9bbc0909bcd1d3c2d8c8759fc621a5ab0`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:12:02 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 25 Oct 2018 00:12:02 GMT
EXPOSE 9000/tcp
# Thu, 25 Oct 2018 00:12:03 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Fri, 26 Oct 2018 22:44:45 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 26 Oct 2018 22:44:46 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 26 Oct 2018 22:44:46 GMT
WORKDIR /opt/sonarqube
# Fri, 26 Oct 2018 22:44:46 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Fri, 26 Oct 2018 22:44:47 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acedb29daefb3ad9b2653ab7aa38aef41bf779d241b7b6439d7b2ee64a0c8f99`  
		Last Modified: Fri, 26 Oct 2018 22:47:49 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79814b3fe94241e0a5fabebbcb1be25fe4765242a8a3cc2c5491dbdea51c0925`  
		Last Modified: Fri, 26 Oct 2018 22:48:04 GMT  
		Size: 166.0 MB (165975378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae881e50da80ee0bd6ce8466f3203ca47abe914f84690827ca29f36efcd5f6`  
		Last Modified: Fri, 26 Oct 2018 22:47:49 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1`

```console
$ docker pull sonarqube@sha256:cc57b262ee9e7145456dee8c7ae24622c82b22cabeaac4651e7dd642da806f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1` - linux; amd64

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

## `sonarqube:7.1-alpine`

```console
$ docker pull sonarqube@sha256:48c8635541eac26d1f572c83b49dcc1824126b2e881b0ce41f0b7de4b867c237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:f25aadc1569741ddc0ac6763c03bacca97f68966a0d5a0da7433df88d487d34d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0050ddd2bdacb4036e49ee1d288a213997cfc584e75438eb24602e396a914762`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:13:45 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 25 Oct 2018 00:13:46 GMT
EXPOSE 9000/tcp
# Thu, 25 Oct 2018 00:13:47 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Fri, 26 Oct 2018 22:46:39 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 26 Oct 2018 22:46:49 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 26 Oct 2018 22:46:49 GMT
WORKDIR /opt/sonarqube
# Fri, 26 Oct 2018 22:46:50 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Fri, 26 Oct 2018 22:46:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc511d80e4683de32675fe755bc4965b58c58395bbab346a1ad18f2fff847479`  
		Last Modified: Fri, 26 Oct 2018 22:49:20 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ca9949e790f6d58f600acbd4807dc3ed5cf04c4e1754963912c559b6f7d53c`  
		Last Modified: Fri, 26 Oct 2018 22:49:32 GMT  
		Size: 156.4 MB (156442649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa0e8bf6aebbfe9b4d358cae993c984650cf63a2b1ae0ca7130cfc4901eeae7`  
		Last Modified: Fri, 26 Oct 2018 22:49:20 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:48c8635541eac26d1f572c83b49dcc1824126b2e881b0ce41f0b7de4b867c237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:f25aadc1569741ddc0ac6763c03bacca97f68966a0d5a0da7433df88d487d34d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229262079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0050ddd2bdacb4036e49ee1d288a213997cfc584e75438eb24602e396a914762`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:13:45 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 25 Oct 2018 00:13:46 GMT
EXPOSE 9000/tcp
# Thu, 25 Oct 2018 00:13:47 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Fri, 26 Oct 2018 22:46:39 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 26 Oct 2018 22:46:49 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 26 Oct 2018 22:46:49 GMT
WORKDIR /opt/sonarqube
# Fri, 26 Oct 2018 22:46:50 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Fri, 26 Oct 2018 22:46:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc511d80e4683de32675fe755bc4965b58c58395bbab346a1ad18f2fff847479`  
		Last Modified: Fri, 26 Oct 2018 22:49:20 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ca9949e790f6d58f600acbd4807dc3ed5cf04c4e1754963912c559b6f7d53c`  
		Last Modified: Fri, 26 Oct 2018 22:49:32 GMT  
		Size: 156.4 MB (156442649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa0e8bf6aebbfe9b4d358cae993c984650cf63a2b1ae0ca7130cfc4901eeae7`  
		Last Modified: Fri, 26 Oct 2018 22:49:20 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:b337f15c2afdfb372ff74f5598e0a80c2c83e3c400d92c7f5d3716401677826d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:712dd6610ad7580d05f0c572784fa0a57c1a5391589f6197d1875e0ddc066852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395367279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7579779a618547a5907b54f7306f8813484e68cb7f7d844bf2cc6d9b5a48c8`
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
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:53:17 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 16 Oct 2018 17:53:18 GMT
EXPOSE 9000/tcp
# Tue, 16 Oct 2018 17:53:19 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Fri, 26 Oct 2018 22:45:23 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Fri, 26 Oct 2018 22:45:58 GMT
RUN set -x     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 26 Oct 2018 22:45:59 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 26 Oct 2018 22:46:00 GMT
WORKDIR /opt/sonarqube
# Fri, 26 Oct 2018 22:46:00 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Fri, 26 Oct 2018 22:46:01 GMT
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
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6b666ca594e5fd6fa592560dc44570340ed377b9a4ec82858b2f2fb61bf9e`  
		Last Modified: Fri, 26 Oct 2018 22:48:34 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f7fb2b8d5b9cd0c00556541af63fc220d82f83227903a951faf0135c9f4d44`  
		Last Modified: Fri, 26 Oct 2018 22:48:35 GMT  
		Size: 500.9 KB (500913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0eb67e939461755a5309c336d00f27b0a6afccae3d6ac1386faaac048a50741`  
		Last Modified: Fri, 26 Oct 2018 22:48:45 GMT  
		Size: 149.3 MB (149281080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4287c63cacc8884c20cab07afd62dec908e45cc16fb33a74cecac4c12339f53a`  
		Last Modified: Fri, 26 Oct 2018 22:48:35 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:3adc8f390ec16de858ee0a8d2c9bbbe4d7b6e56390fbcb5a2fdc7c55d5b0482d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:27aa2de22005718b90a86d988fb8f0ca06738965cca8584bbf0ecc2527c1afb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404883955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0aa847b3afe0dcd893774b147238092533468db30563376cba7817b4f0a6e6`
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
# Tue, 30 Oct 2018 05:02:52 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 30 Oct 2018 05:02:52 GMT
EXPOSE 9000/tcp
# Tue, 30 Oct 2018 05:02:53 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 30 Oct 2018 05:02:57 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 30 Oct 2018 05:03:14 GMT
RUN set -x     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 30 Oct 2018 05:03:14 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 30 Oct 2018 05:03:15 GMT
WORKDIR /opt/sonarqube
# Tue, 30 Oct 2018 05:03:16 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 30 Oct 2018 05:03:16 GMT
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
	-	`sha256:96f612a96c775a96097f4f42c6546549cb173ff60c621329b88bb5070753422e`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbccf3d01b3cdff91b8c0b354d4b827b057894251e18dcf432b3eb4edcb11a3`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c501695b13e59eee6ab94157a8eb7ec85f7f7ca2060f4bec057b2f63e8460`  
		Last Modified: Tue, 30 Oct 2018 05:05:11 GMT  
		Size: 158.8 MB (158814818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d4f5f085d5d74646d511ee64cc257244e95288d9e620e37a67efa5b948b7a3`  
		Last Modified: Tue, 30 Oct 2018 05:04:48 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:cab807588c2f8c693d1c5370552a8a849cf44742946174466850adb6e271ce05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:719c5f6cf22f5547996559bca46be15c4661d47544278fc107a1e3c3b6004800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238794809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac33256f6e483c4578149328154dfca9bbc0909bcd1d3c2d8c8759fc621a5ab0`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:12:02 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 25 Oct 2018 00:12:02 GMT
EXPOSE 9000/tcp
# Thu, 25 Oct 2018 00:12:03 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Fri, 26 Oct 2018 22:44:45 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Fri, 26 Oct 2018 22:44:46 GMT
VOLUME [/opt/sonarqube/data]
# Fri, 26 Oct 2018 22:44:46 GMT
WORKDIR /opt/sonarqube
# Fri, 26 Oct 2018 22:44:46 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Fri, 26 Oct 2018 22:44:47 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acedb29daefb3ad9b2653ab7aa38aef41bf779d241b7b6439d7b2ee64a0c8f99`  
		Last Modified: Fri, 26 Oct 2018 22:47:49 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79814b3fe94241e0a5fabebbcb1be25fe4765242a8a3cc2c5491dbdea51c0925`  
		Last Modified: Fri, 26 Oct 2018 22:48:04 GMT  
		Size: 166.0 MB (165975378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae881e50da80ee0bd6ce8466f3203ca47abe914f84690827ca29f36efcd5f6`  
		Last Modified: Fri, 26 Oct 2018 22:47:49 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
