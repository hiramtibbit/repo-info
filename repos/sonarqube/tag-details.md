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
$ docker pull sonarqube@sha256:ab43a9ad7fc060be3db740ba419b666ab16b6d31c0c55b98018422829e428b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5` - linux; amd64

```console
$ docker pull sonarqube@sha256:3a73442a85061f0ee7533ca2578149a03613aee9a60d6a82beac6124b9db0721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404897304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d68cd6234ed1e46abb5bb0057f667b985e29c45e115639680284d000088542`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 22:55:07 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 14 Aug 2018 22:55:07 GMT
EXPOSE 9000/tcp
# Tue, 14 Aug 2018 22:55:08 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 14 Aug 2018 22:55:14 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 14 Aug 2018 22:55:34 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 14 Aug 2018 22:55:36 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 14 Aug 2018 22:55:36 GMT
WORKDIR /opt/sonarqube
# Tue, 14 Aug 2018 22:55:37 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 14 Aug 2018 22:55:38 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5d1232dc0d5d5bd4ccca58517bdc77c3f90bfe2378d889d971e44332dc0d4e`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff21b61fc73eb955dafeae2303cf9ad6a427f06881cc6c469c57e8a4192a31`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aca50099d16942f316a1a5aa0937909f6f17ca97e81aa760194b612e6d717bd`  
		Last Modified: Tue, 14 Aug 2018 22:59:25 GMT  
		Size: 158.8 MB (158814828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3074d41df51518cf22ab7efcb7131dcce9c9da2cbcdb02c6a2dfab9eae409bcc`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7.5-alpine`

```console
$ docker pull sonarqube@sha256:8c33e1a0edce9d8d2715dcae69b0a08e352546140f2623870285d840b36fb425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:852de9c509a4377bcdad07d48e67f0b4a807eb626931a4d6f752d03646fc9643
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238762621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fee96c7caf2adfd2daa90d140e69349927afe5121f7c4260ef19b89f97bb1`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Aug 2018 21:21:31 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 09 Aug 2018 21:21:31 GMT
EXPOSE 9000/tcp
# Thu, 09 Aug 2018 21:21:32 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Thu, 09 Aug 2018 21:21:48 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 09 Aug 2018 21:21:49 GMT
VOLUME [/opt/sonarqube/data]
# Thu, 09 Aug 2018 21:21:49 GMT
WORKDIR /opt/sonarqube
# Thu, 09 Aug 2018 21:21:50 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Thu, 09 Aug 2018 21:21:51 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592637e08dee81778698189c5a3f06c543b9640a3b9df0cd4611d01d5969029b`  
		Last Modified: Thu, 09 Aug 2018 21:23:58 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfec1445ee82d6bdcd3d0861dfcceb53cc94622cda734ded98c02cf150c19c42`  
		Last Modified: Thu, 09 Aug 2018 21:25:14 GMT  
		Size: 166.0 MB (165972724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5bdf3982629fa4d197c9b3cfa7dc454e97740eea754859aeeec21caee4c297`  
		Last Modified: Thu, 09 Aug 2018 21:23:58 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1`

```console
$ docker pull sonarqube@sha256:4438a37735caa24d80da31ee29e72d686abdaa8f5009746ec60e0d43519e1a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1` - linux; amd64

```console
$ docker pull sonarqube@sha256:7e3426bbab3ffa904711f6a10fd287203c169b65d9f4e0d9525313215d2d8e1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395363572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e57279977f4f65a92518a648a21107cb4b5bd627e08416ec2e87df3e5f4b2`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 22:56:31 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 14 Aug 2018 22:56:31 GMT
EXPOSE 9000/tcp
# Tue, 14 Aug 2018 22:56:32 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 14 Aug 2018 22:56:38 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 14 Aug 2018 22:58:17 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 14 Aug 2018 22:58:21 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 14 Aug 2018 22:58:22 GMT
WORKDIR /opt/sonarqube
# Tue, 14 Aug 2018 22:58:23 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 14 Aug 2018 22:58:23 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6b3af7f55ae609515deae991eaa5b8e4cd220901cfcfc59d8d8d26b8e93eda`  
		Last Modified: Tue, 14 Aug 2018 23:00:37 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b67c57c8e1c2c0a7c06fe0e74417d2a81754ca9911645482a84272971bf618`  
		Last Modified: Tue, 14 Aug 2018 23:00:34 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12e009fbe74823fe6d173c663674b3ab643c346d4c4639e0cd4c4a27d6f5c4`  
		Last Modified: Tue, 14 Aug 2018 23:00:50 GMT  
		Size: 149.3 MB (149281093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edf8e47f9c4601de7c1c37dc422093134c43fe4e30b48f3327570fc564986cf`  
		Last Modified: Tue, 14 Aug 2018 23:00:35 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1-alpine`

```console
$ docker pull sonarqube@sha256:16a1b3b68e580fec8b9264c4fc342630c55be882ddeb6c7a69e523c21827b57a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:41594348b75603706c2a5d33e6796aaceb0ed586f2fe2dee92db5a0982b9d4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229230897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdffb18b3e3b359e84c7de12efd0ebe02eef18ded976e5492075a3017d72d3`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 02:15:34 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 11 Jul 2018 02:15:34 GMT
EXPOSE 9000/tcp
# Wed, 11 Jul 2018 02:15:35 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 11 Jul 2018 02:16:42 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 11 Jul 2018 02:16:43 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 11 Jul 2018 02:16:43 GMT
WORKDIR /opt/sonarqube
# Wed, 11 Jul 2018 02:16:43 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 11 Jul 2018 02:16:44 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c2d415b14393ec536a8571ea947d880083a413f6b67372dcfd9820aeea6b1d`  
		Last Modified: Wed, 11 Jul 2018 02:18:23 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d63343f8a088077ac83b8cc1d0d8b831fa30de5d69ffdcff1ad4622211abf`  
		Last Modified: Wed, 11 Jul 2018 02:18:45 GMT  
		Size: 156.4 MB (156440998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb8119c1a6e942b8d226df9f225f008f80a24cd2ebf3e52965c6915d1f2c61e`  
		Last Modified: Wed, 11 Jul 2018 02:18:24 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:16a1b3b68e580fec8b9264c4fc342630c55be882ddeb6c7a69e523c21827b57a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:41594348b75603706c2a5d33e6796aaceb0ed586f2fe2dee92db5a0982b9d4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229230897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cdffb18b3e3b359e84c7de12efd0ebe02eef18ded976e5492075a3017d72d3`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 02:15:34 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 11 Jul 2018 02:15:34 GMT
EXPOSE 9000/tcp
# Wed, 11 Jul 2018 02:15:35 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 11 Jul 2018 02:16:42 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 11 Jul 2018 02:16:43 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 11 Jul 2018 02:16:43 GMT
WORKDIR /opt/sonarqube
# Wed, 11 Jul 2018 02:16:43 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 11 Jul 2018 02:16:44 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c2d415b14393ec536a8571ea947d880083a413f6b67372dcfd9820aeea6b1d`  
		Last Modified: Wed, 11 Jul 2018 02:18:23 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d63343f8a088077ac83b8cc1d0d8b831fa30de5d69ffdcff1ad4622211abf`  
		Last Modified: Wed, 11 Jul 2018 02:18:45 GMT  
		Size: 156.4 MB (156440998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb8119c1a6e942b8d226df9f225f008f80a24cd2ebf3e52965c6915d1f2c61e`  
		Last Modified: Wed, 11 Jul 2018 02:18:24 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:4438a37735caa24d80da31ee29e72d686abdaa8f5009746ec60e0d43519e1a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:7e3426bbab3ffa904711f6a10fd287203c169b65d9f4e0d9525313215d2d8e1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395363572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e57279977f4f65a92518a648a21107cb4b5bd627e08416ec2e87df3e5f4b2`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 22:56:31 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 14 Aug 2018 22:56:31 GMT
EXPOSE 9000/tcp
# Tue, 14 Aug 2018 22:56:32 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 14 Aug 2018 22:56:38 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 14 Aug 2018 22:58:17 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 14 Aug 2018 22:58:21 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 14 Aug 2018 22:58:22 GMT
WORKDIR /opt/sonarqube
# Tue, 14 Aug 2018 22:58:23 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 14 Aug 2018 22:58:23 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6b3af7f55ae609515deae991eaa5b8e4cd220901cfcfc59d8d8d26b8e93eda`  
		Last Modified: Tue, 14 Aug 2018 23:00:37 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b67c57c8e1c2c0a7c06fe0e74417d2a81754ca9911645482a84272971bf618`  
		Last Modified: Tue, 14 Aug 2018 23:00:34 GMT  
		Size: 500.9 KB (500917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12e009fbe74823fe6d173c663674b3ab643c346d4c4639e0cd4c4a27d6f5c4`  
		Last Modified: Tue, 14 Aug 2018 23:00:50 GMT  
		Size: 149.3 MB (149281093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edf8e47f9c4601de7c1c37dc422093134c43fe4e30b48f3327570fc564986cf`  
		Last Modified: Tue, 14 Aug 2018 23:00:35 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:ab43a9ad7fc060be3db740ba419b666ab16b6d31c0c55b98018422829e428b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:3a73442a85061f0ee7533ca2578149a03613aee9a60d6a82beac6124b9db0721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404897304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d68cd6234ed1e46abb5bb0057f667b985e29c45e115639680284d000088542`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 22:55:07 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 14 Aug 2018 22:55:07 GMT
EXPOSE 9000/tcp
# Tue, 14 Aug 2018 22:55:08 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 14 Aug 2018 22:55:14 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 14 Aug 2018 22:55:34 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 14 Aug 2018 22:55:36 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 14 Aug 2018 22:55:36 GMT
WORKDIR /opt/sonarqube
# Tue, 14 Aug 2018 22:55:37 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 14 Aug 2018 22:55:38 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5d1232dc0d5d5bd4ccca58517bdc77c3f90bfe2378d889d971e44332dc0d4e`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff21b61fc73eb955dafeae2303cf9ad6a427f06881cc6c469c57e8a4192a31`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aca50099d16942f316a1a5aa0937909f6f17ca97e81aa760194b612e6d717bd`  
		Last Modified: Tue, 14 Aug 2018 22:59:25 GMT  
		Size: 158.8 MB (158814828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3074d41df51518cf22ab7efcb7131dcce9c9da2cbcdb02c6a2dfab9eae409bcc`  
		Last Modified: Tue, 14 Aug 2018 22:59:04 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:8c33e1a0edce9d8d2715dcae69b0a08e352546140f2623870285d840b36fb425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:852de9c509a4377bcdad07d48e67f0b4a807eb626931a4d6f752d03646fc9643
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238762621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6fee96c7caf2adfd2daa90d140e69349927afe5121f7c4260ef19b89f97bb1`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Aug 2018 21:21:31 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 09 Aug 2018 21:21:31 GMT
EXPOSE 9000/tcp
# Thu, 09 Aug 2018 21:21:32 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Thu, 09 Aug 2018 21:21:48 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 09 Aug 2018 21:21:49 GMT
VOLUME [/opt/sonarqube/data]
# Thu, 09 Aug 2018 21:21:49 GMT
WORKDIR /opt/sonarqube
# Thu, 09 Aug 2018 21:21:50 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Thu, 09 Aug 2018 21:21:51 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592637e08dee81778698189c5a3f06c543b9640a3b9df0cd4611d01d5969029b`  
		Last Modified: Thu, 09 Aug 2018 21:23:58 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfec1445ee82d6bdcd3d0861dfcceb53cc94622cda734ded98c02cf150c19c42`  
		Last Modified: Thu, 09 Aug 2018 21:25:14 GMT  
		Size: 166.0 MB (165972724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5bdf3982629fa4d197c9b3cfa7dc454e97740eea754859aeeec21caee4c297`  
		Last Modified: Thu, 09 Aug 2018 21:23:58 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
