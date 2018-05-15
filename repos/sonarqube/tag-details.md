<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.3`](#sonarqube673)
-	[`sonarqube:6.7.3-alpine`](#sonarqube673-alpine)
-	[`sonarqube:7.1`](#sonarqube71)
-	[`sonarqube:7.1-alpine`](#sonarqube71-alpine)
-	[`sonarqube:alpine`](#sonarqubealpine)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)
-	[`sonarqube:lts-alpine`](#sonarqubelts-alpine)

## `sonarqube:6.7.3`

```console
$ docker pull sonarqube@sha256:af47a91ee2b515842d29415d210c8ec89ed3dfc9884b1bff8b546561a306eb2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.3` - linux; amd64

```console
$ docker pull sonarqube@sha256:4d5bfe35f155a76c0225fa073eb38c4099a75d49f3eaeed8353d1cfb2db267aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404643265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da88d4388ced0fef933e4e53b1ce65f0fdfafa2e3d0a313c4a6879ea5d3b787d`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:28 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:45:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:45:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 03:42:44 GMT
ENV SONAR_VERSION=6.7.3 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 15 May 2018 03:42:44 GMT
EXPOSE 9000/tcp
# Tue, 15 May 2018 03:42:46 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 15 May 2018 03:42:52 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 15 May 2018 03:43:12 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 15 May 2018 03:43:12 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 15 May 2018 03:43:12 GMT
WORKDIR /opt/sonarqube
# Tue, 15 May 2018 03:43:13 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 15 May 2018 03:43:13 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec98735f56f2c1ad880156d0c969f405a8aa3077587870396782cbfbc43799d`  
		Last Modified: Fri, 04 May 2018 18:21:13 GMT  
		Size: 50.0 MB (50026250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55160131808f084fc2304dd05f27bbc1870237d9f1b78f94aa57770948f193bf`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 892.4 KB (892433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dbacf623ffcaa9a39a8c1afe93ffdbee4b0b0c323c43becf5481605e9b9344`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145eb5a3756f6fc5fd37487b97192459ae78be657826ea66a6fe5881262f0b0`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f3fe8a9cb7b27e7f4aa085b42a7ce021b92f556e9fdec2c95e667c41f6098`  
		Last Modified: Mon, 14 May 2018 23:21:00 GMT  
		Size: 134.0 MB (133969876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8dbecaf7f71c373e24d473bc342674296c7102b4fce75617b6121b496264b0`  
		Last Modified: Mon, 14 May 2018 23:20:30 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7d3107202a8e0de10d9cea5696d0ea902bd2c6404092850500a3beff6cde9b`  
		Last Modified: Tue, 15 May 2018 03:44:06 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84b2e7a8737f9c59dc9ec213cb353f43d39ebde293585eb75b6b1b6129c5d1c`  
		Last Modified: Tue, 15 May 2018 03:44:08 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9949b14db5f33ab9a19f6da8b8aeb0d45d619a086a6353dff10b108b8c0814`  
		Last Modified: Tue, 15 May 2018 03:44:18 GMT  
		Size: 158.6 MB (158551351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ce35351eb7d82f41d51b2925f37b24a15e6842a41166443abfe728730cd530`  
		Last Modified: Tue, 15 May 2018 03:44:07 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7.3-alpine`

```console
$ docker pull sonarqube@sha256:b9e22c5a3bdc5f67e45ebad303a3efd68afd1fc05c3877aa5dd91c2c07bb005d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.3-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:69b0dd106b1415e9b56601caf31fc75d2bbeed8abc73b5b15b61b097e578129d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238130864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e7deab89366c944412839ce9e8aba030e1a8c200a85537722fefd802922ae0`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 12 Apr 2018 00:04:34 GMT
ENV SONAR_VERSION=6.7.3 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 12 Apr 2018 00:04:35 GMT
EXPOSE 9000/tcp
# Thu, 12 Apr 2018 00:04:36 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Thu, 12 Apr 2018 00:05:02 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 12 Apr 2018 00:05:03 GMT
VOLUME [/opt/sonarqube/data]
# Thu, 12 Apr 2018 00:05:03 GMT
WORKDIR /opt/sonarqube
# Thu, 12 Apr 2018 00:05:04 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Thu, 12 Apr 2018 00:05:04 GMT
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
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213d57f165caad254b32eac06eb97250e432d01810249a9eb368f1627ecc999d`  
		Last Modified: Thu, 12 Apr 2018 00:18:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5a13537169d03f6f48f43b6ac3d5749c90ebd13a3491fc9c924b440b430ac6`  
		Last Modified: Thu, 12 Apr 2018 00:18:27 GMT  
		Size: 165.8 MB (165835590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee73790b660f71816e8f9e441181a18f8163c744405e55df8502fdb17f66b0`  
		Last Modified: Thu, 12 Apr 2018 00:18:10 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1`

```console
$ docker pull sonarqube@sha256:5b01b3af7938eb0e5cdcb865c1b5a9846d4286a95a9d6c0741355e4ae3cebe8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1` - linux; amd64

```console
$ docker pull sonarqube@sha256:da00fe1d5c2af03bc2e126b4b88eeae797c4e1422031034c501a0546b8c3d7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395372996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c238f0cb6d415808daa235c623a34211de4a48b6b9913f35b13c6983c8dea4`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:28 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:45:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:45:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 03:43:22 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 15 May 2018 03:43:22 GMT
EXPOSE 9000/tcp
# Tue, 15 May 2018 03:43:23 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 15 May 2018 03:43:31 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 15 May 2018 03:43:49 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 15 May 2018 03:43:49 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 15 May 2018 03:43:50 GMT
WORKDIR /opt/sonarqube
# Tue, 15 May 2018 03:43:50 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 15 May 2018 03:43:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec98735f56f2c1ad880156d0c969f405a8aa3077587870396782cbfbc43799d`  
		Last Modified: Fri, 04 May 2018 18:21:13 GMT  
		Size: 50.0 MB (50026250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55160131808f084fc2304dd05f27bbc1870237d9f1b78f94aa57770948f193bf`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 892.4 KB (892433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dbacf623ffcaa9a39a8c1afe93ffdbee4b0b0c323c43becf5481605e9b9344`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145eb5a3756f6fc5fd37487b97192459ae78be657826ea66a6fe5881262f0b0`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f3fe8a9cb7b27e7f4aa085b42a7ce021b92f556e9fdec2c95e667c41f6098`  
		Last Modified: Mon, 14 May 2018 23:21:00 GMT  
		Size: 134.0 MB (133969876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8dbecaf7f71c373e24d473bc342674296c7102b4fce75617b6121b496264b0`  
		Last Modified: Mon, 14 May 2018 23:20:30 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c1b4332464be40c88f61976f47a307181a3fd3b1acd9ba6619eabf41cd9501`  
		Last Modified: Tue, 15 May 2018 03:44:41 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6aff68accd44b3f001bb768155d010a095f077418cb7a5421ff458c22483e5`  
		Last Modified: Tue, 15 May 2018 03:44:42 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8d7f8159022756752efb703b36569d787e396157ac906a30bb767a9dee1e5c`  
		Last Modified: Tue, 15 May 2018 03:44:50 GMT  
		Size: 149.3 MB (149281086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d11a26b23935fa158cf6a402f5280cea9e21118d67e02cc7d742c5176eb691`  
		Last Modified: Tue, 15 May 2018 03:44:41 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1-alpine`

```console
$ docker pull sonarqube@sha256:f7f581a4de517d23f96aa3d6612a892a9741138c60e99933d24d5d2ee26a5332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:ba65d096536b4c1b13db3e5e260525853efae4bc6f622895d9ed990c9f0bdbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228867690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29251658a5f1254c260175add299ba70f9c99acce89c543bea256a165e8014c`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Apr 2018 19:20:00 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 18 Apr 2018 19:20:00 GMT
EXPOSE 9000/tcp
# Wed, 18 Apr 2018 19:20:01 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 18 Apr 2018 19:56:04 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 18 Apr 2018 19:56:04 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 18 Apr 2018 19:56:05 GMT
WORKDIR /opt/sonarqube
# Wed, 18 Apr 2018 19:56:06 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 18 Apr 2018 19:56:06 GMT
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
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c099ba8bd1c13ee7d9b9171a4c753249fdbbeae01cf7f585bb1486334061b1`  
		Last Modified: Wed, 18 Apr 2018 20:05:36 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17c64d63dca7da0104cd8117a7aa39dcaa8c27fa04fdfe441eec344676cc333`  
		Last Modified: Wed, 18 Apr 2018 20:05:53 GMT  
		Size: 156.6 MB (156572413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7773f7c061ed668b7e3d5917be0f3e4ef9426756a2a3df6f34658c5df7c5eeb2`  
		Last Modified: Wed, 18 Apr 2018 20:05:36 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:f7f581a4de517d23f96aa3d6612a892a9741138c60e99933d24d5d2ee26a5332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:ba65d096536b4c1b13db3e5e260525853efae4bc6f622895d9ed990c9f0bdbd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.9 MB (228867690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29251658a5f1254c260175add299ba70f9c99acce89c543bea256a165e8014c`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Apr 2018 19:20:00 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 18 Apr 2018 19:20:00 GMT
EXPOSE 9000/tcp
# Wed, 18 Apr 2018 19:20:01 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 18 Apr 2018 19:56:04 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 18 Apr 2018 19:56:04 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 18 Apr 2018 19:56:05 GMT
WORKDIR /opt/sonarqube
# Wed, 18 Apr 2018 19:56:06 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 18 Apr 2018 19:56:06 GMT
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
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c099ba8bd1c13ee7d9b9171a4c753249fdbbeae01cf7f585bb1486334061b1`  
		Last Modified: Wed, 18 Apr 2018 20:05:36 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17c64d63dca7da0104cd8117a7aa39dcaa8c27fa04fdfe441eec344676cc333`  
		Last Modified: Wed, 18 Apr 2018 20:05:53 GMT  
		Size: 156.6 MB (156572413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7773f7c061ed668b7e3d5917be0f3e4ef9426756a2a3df6f34658c5df7c5eeb2`  
		Last Modified: Wed, 18 Apr 2018 20:05:36 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:5b01b3af7938eb0e5cdcb865c1b5a9846d4286a95a9d6c0741355e4ae3cebe8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:da00fe1d5c2af03bc2e126b4b88eeae797c4e1422031034c501a0546b8c3d7db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395372996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c238f0cb6d415808daa235c623a34211de4a48b6b9913f35b13c6983c8dea4`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:28 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:45:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:45:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 03:43:22 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 15 May 2018 03:43:22 GMT
EXPOSE 9000/tcp
# Tue, 15 May 2018 03:43:23 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 15 May 2018 03:43:31 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 15 May 2018 03:43:49 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 15 May 2018 03:43:49 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 15 May 2018 03:43:50 GMT
WORKDIR /opt/sonarqube
# Tue, 15 May 2018 03:43:50 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 15 May 2018 03:43:50 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec98735f56f2c1ad880156d0c969f405a8aa3077587870396782cbfbc43799d`  
		Last Modified: Fri, 04 May 2018 18:21:13 GMT  
		Size: 50.0 MB (50026250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55160131808f084fc2304dd05f27bbc1870237d9f1b78f94aa57770948f193bf`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 892.4 KB (892433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dbacf623ffcaa9a39a8c1afe93ffdbee4b0b0c323c43becf5481605e9b9344`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145eb5a3756f6fc5fd37487b97192459ae78be657826ea66a6fe5881262f0b0`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f3fe8a9cb7b27e7f4aa085b42a7ce021b92f556e9fdec2c95e667c41f6098`  
		Last Modified: Mon, 14 May 2018 23:21:00 GMT  
		Size: 134.0 MB (133969876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8dbecaf7f71c373e24d473bc342674296c7102b4fce75617b6121b496264b0`  
		Last Modified: Mon, 14 May 2018 23:20:30 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c1b4332464be40c88f61976f47a307181a3fd3b1acd9ba6619eabf41cd9501`  
		Last Modified: Tue, 15 May 2018 03:44:41 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6aff68accd44b3f001bb768155d010a095f077418cb7a5421ff458c22483e5`  
		Last Modified: Tue, 15 May 2018 03:44:42 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8d7f8159022756752efb703b36569d787e396157ac906a30bb767a9dee1e5c`  
		Last Modified: Tue, 15 May 2018 03:44:50 GMT  
		Size: 149.3 MB (149281086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d11a26b23935fa158cf6a402f5280cea9e21118d67e02cc7d742c5176eb691`  
		Last Modified: Tue, 15 May 2018 03:44:41 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:af47a91ee2b515842d29415d210c8ec89ed3dfc9884b1bff8b546561a306eb2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:4d5bfe35f155a76c0225fa073eb38c4099a75d49f3eaeed8353d1cfb2db267aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.6 MB (404643265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da88d4388ced0fef933e4e53b1ce65f0fdfafa2e3d0a313c4a6879ea5d3b787d`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:41:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:53:28 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:53:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:53:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:45:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:45:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 03:42:44 GMT
ENV SONAR_VERSION=6.7.3 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 15 May 2018 03:42:44 GMT
EXPOSE 9000/tcp
# Tue, 15 May 2018 03:42:46 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 15 May 2018 03:42:52 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 15 May 2018 03:43:12 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 15 May 2018 03:43:12 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 15 May 2018 03:43:12 GMT
WORKDIR /opt/sonarqube
# Tue, 15 May 2018 03:43:13 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 15 May 2018 03:43:13 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec98735f56f2c1ad880156d0c969f405a8aa3077587870396782cbfbc43799d`  
		Last Modified: Fri, 04 May 2018 18:21:13 GMT  
		Size: 50.0 MB (50026250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55160131808f084fc2304dd05f27bbc1870237d9f1b78f94aa57770948f193bf`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 892.4 KB (892433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dbacf623ffcaa9a39a8c1afe93ffdbee4b0b0c323c43becf5481605e9b9344`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8145eb5a3756f6fc5fd37487b97192459ae78be657826ea66a6fe5881262f0b0`  
		Last Modified: Sat, 05 May 2018 00:10:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f3fe8a9cb7b27e7f4aa085b42a7ce021b92f556e9fdec2c95e667c41f6098`  
		Last Modified: Mon, 14 May 2018 23:21:00 GMT  
		Size: 134.0 MB (133969876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8dbecaf7f71c373e24d473bc342674296c7102b4fce75617b6121b496264b0`  
		Last Modified: Mon, 14 May 2018 23:20:30 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7d3107202a8e0de10d9cea5696d0ea902bd2c6404092850500a3beff6cde9b`  
		Last Modified: Tue, 15 May 2018 03:44:06 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84b2e7a8737f9c59dc9ec213cb353f43d39ebde293585eb75b6b1b6129c5d1c`  
		Last Modified: Tue, 15 May 2018 03:44:08 GMT  
		Size: 500.9 KB (500914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9949b14db5f33ab9a19f6da8b8aeb0d45d619a086a6353dff10b108b8c0814`  
		Last Modified: Tue, 15 May 2018 03:44:18 GMT  
		Size: 158.6 MB (158551351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ce35351eb7d82f41d51b2925f37b24a15e6842a41166443abfe728730cd530`  
		Last Modified: Tue, 15 May 2018 03:44:07 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:b9e22c5a3bdc5f67e45ebad303a3efd68afd1fc05c3877aa5dd91c2c07bb005d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:69b0dd106b1415e9b56601caf31fc75d2bbeed8abc73b5b15b61b097e578129d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238130864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e7deab89366c944412839ce9e8aba030e1a8c200a85537722fefd802922ae0`
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
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 12 Apr 2018 00:04:34 GMT
ENV SONAR_VERSION=6.7.3 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Thu, 12 Apr 2018 00:04:35 GMT
EXPOSE 9000/tcp
# Thu, 12 Apr 2018 00:04:36 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Thu, 12 Apr 2018 00:05:02 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Thu, 12 Apr 2018 00:05:03 GMT
VOLUME [/opt/sonarqube/data]
# Thu, 12 Apr 2018 00:05:03 GMT
WORKDIR /opt/sonarqube
# Thu, 12 Apr 2018 00:05:04 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Thu, 12 Apr 2018 00:05:04 GMT
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
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213d57f165caad254b32eac06eb97250e432d01810249a9eb368f1627ecc999d`  
		Last Modified: Thu, 12 Apr 2018 00:18:10 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5a13537169d03f6f48f43b6ac3d5749c90ebd13a3491fc9c924b440b430ac6`  
		Last Modified: Thu, 12 Apr 2018 00:18:27 GMT  
		Size: 165.8 MB (165835590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee73790b660f71816e8f9e441181a18f8163c744405e55df8502fdb17f66b0`  
		Last Modified: Thu, 12 Apr 2018 00:18:10 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
