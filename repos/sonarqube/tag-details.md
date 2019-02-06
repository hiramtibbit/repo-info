<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sonarqube`

-	[`sonarqube:6.7.6-community`](#sonarqube676-community)
-	[`sonarqube:6.7-community`](#sonarqube67-community)
-	[`sonarqube:7.6-community`](#sonarqube76-community)
-	[`sonarqube:latest`](#sonarqubelatest)
-	[`sonarqube:lts`](#sonarqubelts)

## `sonarqube:6.7.6-community`

```console
$ docker pull sonarqube@sha256:99f2706d05e234fa6aae09f8db5e08877e189af2891efc80e8d9e565103a78cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.6-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:386a98bc13da83afdb9da0fd6b8ecd8062a2d1cacf67b94cb3a7279784fcb5f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.7 MB (404709529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7837cba323995c09c7a43b5677a9cb6885439383f9fe8d9a3ee58fc3a6966b83`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:40:13 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 06 Feb 2019 17:40:13 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 17:40:15 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 06 Feb 2019 17:40:20 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 06 Feb 2019 17:40:38 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 06 Feb 2019 17:40:38 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 06 Feb 2019 17:40:39 GMT
WORKDIR /opt/sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
COPY file:108dc63c48e0f9caa767ef121de21a22716e7e01b409a40c32da36ee92cbf013 in /opt/sonarqube/bin/ 
# Wed, 06 Feb 2019 17:40:39 GMT
USER sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896902170c51b561ad8e71cfb0b4fe118190bba106299916700766c4d41d5211`  
		Last Modified: Wed, 06 Feb 2019 17:41:25 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1dd83244757700b387764841b55ccf0233f1112b1494c91077e306e1d1289b`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c432586c5bd1dedde1e1f5a9234890798de85e99cae76f3cb84543dc0081e11`  
		Last Modified: Wed, 06 Feb 2019 17:41:46 GMT  
		Size: 158.8 MB (158809617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f5ad16b0f5c49a14f9421b19e0d2d2592e82a8a87b927a479e35a048d7cdf`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 660.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7-community`

```console
$ docker pull sonarqube@sha256:99f2706d05e234fa6aae09f8db5e08877e189af2891efc80e8d9e565103a78cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:386a98bc13da83afdb9da0fd6b8ecd8062a2d1cacf67b94cb3a7279784fcb5f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.7 MB (404709529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7837cba323995c09c7a43b5677a9cb6885439383f9fe8d9a3ee58fc3a6966b83`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:40:13 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 06 Feb 2019 17:40:13 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 17:40:15 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 06 Feb 2019 17:40:20 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 06 Feb 2019 17:40:38 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 06 Feb 2019 17:40:38 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 06 Feb 2019 17:40:39 GMT
WORKDIR /opt/sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
COPY file:108dc63c48e0f9caa767ef121de21a22716e7e01b409a40c32da36ee92cbf013 in /opt/sonarqube/bin/ 
# Wed, 06 Feb 2019 17:40:39 GMT
USER sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896902170c51b561ad8e71cfb0b4fe118190bba106299916700766c4d41d5211`  
		Last Modified: Wed, 06 Feb 2019 17:41:25 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1dd83244757700b387764841b55ccf0233f1112b1494c91077e306e1d1289b`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c432586c5bd1dedde1e1f5a9234890798de85e99cae76f3cb84543dc0081e11`  
		Last Modified: Wed, 06 Feb 2019 17:41:46 GMT  
		Size: 158.8 MB (158809617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f5ad16b0f5c49a14f9421b19e0d2d2592e82a8a87b927a479e35a048d7cdf`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 660.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.6-community`

```console
$ docker pull sonarqube@sha256:20c2c776bb8a40f3a2a1b886c7573c0fb4b924426eed79ff3b34419a97b05dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.6-community` - linux; amd64

```console
$ docker pull sonarqube@sha256:b3a6658f975274a4d6e2426716ff1bd23a964d2507ed033ab50c5568e69acbb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.1 MB (434055603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3abc9ccb4113d636965be6eff984e94febbab93de2553ed52493da586d6cbf`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:40:45 GMT
ENV SONAR_VERSION=7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 06 Feb 2019 17:40:46 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 17:40:47 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 06 Feb 2019 17:40:51 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 06 Feb 2019 17:41:12 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 06 Feb 2019 17:41:13 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 06 Feb 2019 17:41:13 GMT
WORKDIR /opt/sonarqube
# Wed, 06 Feb 2019 17:41:13 GMT
COPY file:108dc63c48e0f9caa767ef121de21a22716e7e01b409a40c32da36ee92cbf013 in /opt/sonarqube/bin/ 
# Wed, 06 Feb 2019 17:41:14 GMT
USER sonarqube
# Wed, 06 Feb 2019 17:41:14 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cbe8ddc2d3dbd9ec312df45d904e9c223c543430fa55fd84a84f491fa36ce4`  
		Last Modified: Wed, 06 Feb 2019 17:41:57 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a0efff4bc34d77ad90739fa18bf36a456dfd835ee2dd79f4d7d2715430b6e4`  
		Last Modified: Wed, 06 Feb 2019 17:41:57 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06f1956daecfe78bd75f3cf57ef526e24d128d70b5c6973ecf40924e44c483e`  
		Last Modified: Wed, 06 Feb 2019 17:42:23 GMT  
		Size: 188.2 MB (188155686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524428f06a567d488ba3a4b362b654c33d9a88db1c375dd3e5ccdec48c13a3e`  
		Last Modified: Wed, 06 Feb 2019 17:41:57 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:13cebaf9423a85995fb31c0f566677a1faa7d035346ce5496e789561c6e7f174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:57503444894492d89f980ff12b9e978f1add0d7ee4b67c85700f40061d6e10e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.1 MB (434056266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ed7cb3afb4fb8341d16bff8e7cb2bf5b77b54cbeea8d23b77f382f07bfe666`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:16:38 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 28 Jan 2019 23:29:59 GMT
ENV SONAR_VERSION=7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Mon, 28 Jan 2019 23:29:59 GMT
EXPOSE 9000
# Mon, 28 Jan 2019 23:30:00 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Mon, 28 Jan 2019 23:30:04 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Mon, 28 Jan 2019 23:30:23 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Mon, 28 Jan 2019 23:30:23 GMT
VOLUME [/opt/sonarqube/data]
# Mon, 28 Jan 2019 23:30:23 GMT
WORKDIR /opt/sonarqube
# Mon, 28 Jan 2019 23:30:24 GMT
COPY file:108dc63c48e0f9caa767ef121de21a22716e7e01b409a40c32da36ee92cbf013 in /opt/sonarqube/bin/ 
# Mon, 28 Jan 2019 23:30:24 GMT
USER sonarqube
# Mon, 28 Jan 2019 23:30:24 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f886e483d6dc67cd1f7c19ed3e45348f3b1af49fe9b5f40fdfca2043281b76`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 892.4 KB (892370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346341d3c496637595bfdaad3837beba171fb2194b1abf1f5d0c898a2d2d477`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f2208d67a691a10ab1deab2f6dfbf600f087b0f6df94f8dc6cde9fc3928fe`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb85cf26717dc607155f9ea8b38b0d89ca987fbfd5786b4639afc2062176fd10`  
		Last Modified: Tue, 22 Jan 2019 21:41:51 GMT  
		Size: 134.0 MB (133975924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90f56f1905437e56f63c9c63a36a46ff52c6db60acf2544faf5f82b46a4163`  
		Last Modified: Mon, 28 Jan 2019 23:30:36 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccd547982b96bc29a9f72f0869bb04eb6857217c55e8fb8a63a0d720c1efdea`  
		Last Modified: Mon, 28 Jan 2019 23:30:36 GMT  
		Size: 500.9 KB (500915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b40190f22bea75a3347ed473d9d8950155f22a67118a7b91ff5f14ce4d3031`  
		Last Modified: Mon, 28 Jan 2019 23:30:55 GMT  
		Size: 188.2 MB (188155678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e680f15a401b1f664067176a17a2ca9ae1b844309198f218b38abae165512e`  
		Last Modified: Mon, 28 Jan 2019 23:30:35 GMT  
		Size: 654.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts`

```console
$ docker pull sonarqube@sha256:99f2706d05e234fa6aae09f8db5e08877e189af2891efc80e8d9e565103a78cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:386a98bc13da83afdb9da0fd6b8ecd8062a2d1cacf67b94cb3a7279784fcb5f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.7 MB (404709529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7837cba323995c09c7a43b5677a9cb6885439383f9fe8d9a3ee58fc3a6966b83`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:40:13 GMT
ENV SONAR_VERSION=6.7.6 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 06 Feb 2019 17:40:13 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 17:40:15 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 06 Feb 2019 17:40:20 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4         || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 06 Feb 2019 17:40:38 GMT
RUN set -x     && (gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE 	    || gpg --batch --keyserver ipv4.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE)     && cd /opt     && curl -o sonarqube.zip -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 06 Feb 2019 17:40:38 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 06 Feb 2019 17:40:39 GMT
WORKDIR /opt/sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
COPY file:108dc63c48e0f9caa767ef121de21a22716e7e01b409a40c32da36ee92cbf013 in /opt/sonarqube/bin/ 
# Wed, 06 Feb 2019 17:40:39 GMT
USER sonarqube
# Wed, 06 Feb 2019 17:40:39 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896902170c51b561ad8e71cfb0b4fe118190bba106299916700766c4d41d5211`  
		Last Modified: Wed, 06 Feb 2019 17:41:25 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1dd83244757700b387764841b55ccf0233f1112b1494c91077e306e1d1289b`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c432586c5bd1dedde1e1f5a9234890798de85e99cae76f3cb84543dc0081e11`  
		Last Modified: Wed, 06 Feb 2019 17:41:46 GMT  
		Size: 158.8 MB (158809617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f5ad16b0f5c49a14f9421b19e0d2d2592e82a8a87b927a479e35a048d7cdf`  
		Last Modified: Wed, 06 Feb 2019 17:41:26 GMT  
		Size: 660.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
