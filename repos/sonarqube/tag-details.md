<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.4`](#sonarqube674)
-	[`sonarqube:6.7.4-alpine`](#sonarqube674-alpine)
-	[`sonarqube:7.1`](#sonarqube71)
-	[`sonarqube:7.1-alpine`](#sonarqube71-alpine)
-	[`sonarqube:alpine`](#sonarqubealpine)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:lts-alpine`](#sonarqubelts-alpine)

## `sonarqube:6.7.4`

```console
$ docker pull sonarqube@sha256:b49a18fee72168edf7cc25b821ce34ba0f04c453aa539cad7540ea58311f49ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.4` - linux; amd64

```console
$ docker pull sonarqube@sha256:1e2398a3bc3b1c3ade64d307fc17b2905d317c47da760a3adf30efe85f8d73f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404922061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2244cdbce141f876694282578081f4dc6263825c890c9538b60cf7828eec7fd9`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:57:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_VERSION=8u171
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Mon, 02 Jul 2018 23:57:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 02 Jul 2018 23:58:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:44:06 GMT
ENV SONAR_VERSION=6.7.4 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:44:06 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:44:08 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 03 Jul 2018 01:44:13 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 03 Jul 2018 01:44:37 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:44:37 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:44:38 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:44:38 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:44:39 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e47a4ab0225b6ee4c395aa6979ea0b1163b36f0b08b931f9fb7a43bb99da3`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 892.5 KB (892538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b21dd5ce8252da9da2000e24bfefe7c5d51409762134293f8d37697e04c796`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26054c6ae22c796517b458da2ea716c128499232cbe00feef5418add144406d9`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57152e61ecf5fc6fd0c4062c8f130af079dc1a151d7785a3cb6bbd5208073c5d`  
		Last Modified: Tue, 03 Jul 2018 00:33:28 GMT  
		Size: 134.0 MB (133970717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afc44390528977c361ba405945092b32d5755142f450334115ee5f8a7f083b`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 272.1 KB (272126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cac9ac0ab5d861abd44b4a76d6f84dd07f0e94f27217abeef4c2def024779cd`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8600d3e690d9eab3ce712c7889249175b5e9d56f41966d8e12bc22954cbd0fd`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d042f169b2470adf219c7cc88e3692a22599741eb13a299e36f381fb82c4df`  
		Last Modified: Tue, 03 Jul 2018 01:47:44 GMT  
		Size: 158.8 MB (158791328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08719925fae594be9e7a4181dbdffa2d23a7fa59a32000f94b6e8ccbd4d21ae3`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7.4-alpine`

```console
$ docker pull sonarqube@sha256:f0bb59e49c06a93517845151993d1dbca3ace9b28e0eae5f00314128d8b6f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.4-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:13c5456717035c5403e4f1af59d2881ba0fd2338358598010800802773514d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238512355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf4d498a62027336152f3603d8a439b242d6536f3043af94f9cd880784bb5a`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:44:50 GMT
ENV SONAR_VERSION=6.7.4 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:44:50 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:44:51 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Tue, 03 Jul 2018 01:45:07 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:45:08 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:45:09 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:45:09 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:45:10 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d6281b9901782bec0c232cbd74a6e250d2c36c50c5634a84364534a9c6728`  
		Last Modified: Tue, 03 Jul 2018 01:48:16 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7442487573dabb518aee10a3769ee16d9e6a3a4930f103b89809296e2a2ea390`  
		Last Modified: Tue, 03 Jul 2018 01:48:40 GMT  
		Size: 166.1 MB (166126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8a5417aca9709f34765a3bc65bce0445e431aecb80abf3918f7304895ac75d`  
		Last Modified: Tue, 03 Jul 2018 01:48:15 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1`

```console
$ docker pull sonarqube@sha256:a791413a0a6844dbc7dd994fed18b4a73c31900c5d080ade04c845316720baa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1` - linux; amd64

```console
$ docker pull sonarqube@sha256:d6386db8ae7d7c4422a4be169c392a4f37ead2357453574453fccd2128eeaae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395411808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4595fdec7170b7e052f94a99f4842e306eef79b5f5b5112adec7173af441d241`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:57:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_VERSION=8u171
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Mon, 02 Jul 2018 23:57:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 02 Jul 2018 23:58:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:45:24 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:45:25 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:45:26 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 03 Jul 2018 01:45:32 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 03 Jul 2018 01:46:14 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:46:15 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:46:15 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:46:16 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:46:16 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e47a4ab0225b6ee4c395aa6979ea0b1163b36f0b08b931f9fb7a43bb99da3`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 892.5 KB (892538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b21dd5ce8252da9da2000e24bfefe7c5d51409762134293f8d37697e04c796`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26054c6ae22c796517b458da2ea716c128499232cbe00feef5418add144406d9`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57152e61ecf5fc6fd0c4062c8f130af079dc1a151d7785a3cb6bbd5208073c5d`  
		Last Modified: Tue, 03 Jul 2018 00:33:28 GMT  
		Size: 134.0 MB (133970717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afc44390528977c361ba405945092b32d5755142f450334115ee5f8a7f083b`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 272.1 KB (272126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091cb20dbd8201255adc5f99f9dfa1d0dcb1d563bc579b91eb26e03b196ef29d`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d864eaf01f7cd10442acf010e18e01e069b62cd43586ae8e2f70c6b4b1006d16`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983e423df131e4c70d9dea0f1aa655fc388632827bc4af3ef545e941081bff2b`  
		Last Modified: Tue, 03 Jul 2018 01:49:29 GMT  
		Size: 149.3 MB (149281072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd417b0608e44393f7d27886d147985fbd7d2982d3e3d0b05f8b0d6c06ddf2`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1-alpine`

```console
$ docker pull sonarqube@sha256:0c27201f7084c0cd51f256c8a69ab4581cf0542d32e3f6e577f2256167b4726c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:67477c5325f31df31db8cdab4ddb97797a2db7e0effdcc5aee2d8503b4484f52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228998556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edc7097b2816e0677c240cf285cc128bedcda5245e2d222df8a8aaf7c993f90`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:46:33 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:46:33 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:46:34 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Tue, 03 Jul 2018 01:47:00 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:47:01 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:47:01 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:47:02 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:47:03 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56848579fc83e26d65e1dde0093f54e1227ae4f5821262a97a863753395722fb`  
		Last Modified: Tue, 03 Jul 2018 01:50:00 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971791fa9c74016317adbbd8bd884a7d0b9edc02c1d1c527b09f774909f403a9`  
		Last Modified: Tue, 03 Jul 2018 01:50:21 GMT  
		Size: 156.6 MB (156612718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abee5e0deb43de34baa5d3e42612f98699bb3e837ffcda0e8b0d098900ea7549`  
		Last Modified: Tue, 03 Jul 2018 01:50:00 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:0c27201f7084c0cd51f256c8a69ab4581cf0542d32e3f6e577f2256167b4726c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:67477c5325f31df31db8cdab4ddb97797a2db7e0effdcc5aee2d8503b4484f52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228998556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edc7097b2816e0677c240cf285cc128bedcda5245e2d222df8a8aaf7c993f90`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:46:33 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:46:33 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:46:34 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Tue, 03 Jul 2018 01:47:00 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:47:01 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:47:01 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:47:02 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:47:03 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56848579fc83e26d65e1dde0093f54e1227ae4f5821262a97a863753395722fb`  
		Last Modified: Tue, 03 Jul 2018 01:50:00 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971791fa9c74016317adbbd8bd884a7d0b9edc02c1d1c527b09f774909f403a9`  
		Last Modified: Tue, 03 Jul 2018 01:50:21 GMT  
		Size: 156.6 MB (156612718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abee5e0deb43de34baa5d3e42612f98699bb3e837ffcda0e8b0d098900ea7549`  
		Last Modified: Tue, 03 Jul 2018 01:50:00 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:a791413a0a6844dbc7dd994fed18b4a73c31900c5d080ade04c845316720baa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:d6386db8ae7d7c4422a4be169c392a4f37ead2357453574453fccd2128eeaae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395411808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4595fdec7170b7e052f94a99f4842e306eef79b5f5b5112adec7173af441d241`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:57:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_VERSION=8u171
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Mon, 02 Jul 2018 23:57:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 02 Jul 2018 23:58:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:45:24 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:45:25 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:45:26 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 03 Jul 2018 01:45:32 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 03 Jul 2018 01:46:14 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:46:15 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:46:15 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:46:16 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:46:16 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e47a4ab0225b6ee4c395aa6979ea0b1163b36f0b08b931f9fb7a43bb99da3`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 892.5 KB (892538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b21dd5ce8252da9da2000e24bfefe7c5d51409762134293f8d37697e04c796`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26054c6ae22c796517b458da2ea716c128499232cbe00feef5418add144406d9`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57152e61ecf5fc6fd0c4062c8f130af079dc1a151d7785a3cb6bbd5208073c5d`  
		Last Modified: Tue, 03 Jul 2018 00:33:28 GMT  
		Size: 134.0 MB (133970717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afc44390528977c361ba405945092b32d5755142f450334115ee5f8a7f083b`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 272.1 KB (272126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091cb20dbd8201255adc5f99f9dfa1d0dcb1d563bc579b91eb26e03b196ef29d`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d864eaf01f7cd10442acf010e18e01e069b62cd43586ae8e2f70c6b4b1006d16`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983e423df131e4c70d9dea0f1aa655fc388632827bc4af3ef545e941081bff2b`  
		Last Modified: Tue, 03 Jul 2018 01:49:29 GMT  
		Size: 149.3 MB (149281072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd417b0608e44393f7d27886d147985fbd7d2982d3e3d0b05f8b0d6c06ddf2`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:b49a18fee72168edf7cc25b821ce34ba0f04c453aa539cad7540ea58311f49ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:1e2398a3bc3b1c3ade64d307fc17b2905d317c47da760a3adf30efe85f8d73f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404922061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2244cdbce141f876694282578081f4dc6263825c890c9538b60cf7828eec7fd9`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:57:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_VERSION=8u171
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Mon, 02 Jul 2018 23:57:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 02 Jul 2018 23:58:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:44:06 GMT
ENV SONAR_VERSION=6.7.4 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:44:06 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:44:08 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 03 Jul 2018 01:44:13 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 03 Jul 2018 01:44:37 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:44:37 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:44:38 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:44:38 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:44:39 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e47a4ab0225b6ee4c395aa6979ea0b1163b36f0b08b931f9fb7a43bb99da3`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 892.5 KB (892538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b21dd5ce8252da9da2000e24bfefe7c5d51409762134293f8d37697e04c796`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26054c6ae22c796517b458da2ea716c128499232cbe00feef5418add144406d9`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57152e61ecf5fc6fd0c4062c8f130af079dc1a151d7785a3cb6bbd5208073c5d`  
		Last Modified: Tue, 03 Jul 2018 00:33:28 GMT  
		Size: 134.0 MB (133970717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afc44390528977c361ba405945092b32d5755142f450334115ee5f8a7f083b`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 272.1 KB (272126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cac9ac0ab5d861abd44b4a76d6f84dd07f0e94f27217abeef4c2def024779cd`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8600d3e690d9eab3ce712c7889249175b5e9d56f41966d8e12bc22954cbd0fd`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d042f169b2470adf219c7cc88e3692a22599741eb13a299e36f381fb82c4df`  
		Last Modified: Tue, 03 Jul 2018 01:47:44 GMT  
		Size: 158.8 MB (158791328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08719925fae594be9e7a4181dbdffa2d23a7fa59a32000f94b6e8ccbd4d21ae3`  
		Last Modified: Tue, 03 Jul 2018 01:47:23 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:f0bb59e49c06a93517845151993d1dbca3ace9b28e0eae5f00314128d8b6f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:13c5456717035c5403e4f1af59d2881ba0fd2338358598010800802773514d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238512355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edf4d498a62027336152f3603d8a439b242d6536f3043af94f9cd880784bb5a`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:01:12 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:13 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:01:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:44:50 GMT
ENV SONAR_VERSION=6.7.4 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:44:50 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:44:51 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Tue, 03 Jul 2018 01:45:07 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:45:08 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:45:09 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:45:09 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:45:10 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ae5b0ba186f2dc5fdfac52825e806479a2860a8a7c030c1703697d84e8714`  
		Last Modified: Tue, 03 Jul 2018 00:38:40 GMT  
		Size: 70.3 MB (70318325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192d6281b9901782bec0c232cbd74a6e250d2c36c50c5634a84364534a9c6728`  
		Last Modified: Tue, 03 Jul 2018 01:48:16 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7442487573dabb518aee10a3769ee16d9e6a3a4930f103b89809296e2a2ea390`  
		Last Modified: Tue, 03 Jul 2018 01:48:40 GMT  
		Size: 166.1 MB (166126517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8a5417aca9709f34765a3bc65bce0445e431aecb80abf3918f7304895ac75d`  
		Last Modified: Tue, 03 Jul 2018 01:48:15 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
