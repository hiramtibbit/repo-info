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
$ docker pull sonarqube@sha256:c339be028bd40a063cc16bc816e0cec7bc9fa375b493dcc77e19d1405a5fd222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5` - linux; amd64

```console
$ docker pull sonarqube@sha256:e6d6f813f7c3ec2051179404f35304846c48337e7f285a5c42b1153d33102660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404900508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd231a11701dfa5a627f143726d1f367328e545f66f2eb8f95399b2561ed8d9b`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:21:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 17:25:53 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:25:53 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:25:54 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 05 Sep 2018 17:25:57 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 05 Sep 2018 17:26:11 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:26:12 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:26:12 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:26:12 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:26:13 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40624ba8b77e273f4be3be6b60a55bd8b700624eeb37a26acb3d019f7fd862c8`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 892.4 KB (892405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8081dc39373d6d82eda189828a91d6f8ffaa33a764491c97a11946ae26714504`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4b3841871b679275ac91146501ee28b1b961c0e8495af78bb8e19ff9ae548d`  
		Last Modified: Wed, 05 Sep 2018 01:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919b8fd1620fbf048cb2f5e94af0f35b4981c92b319519625ee5d61c181a9d1`  
		Last Modified: Wed, 05 Sep 2018 01:40:13 GMT  
		Size: 134.0 MB (133991165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2760538fe6000d443ada98bfeaca178ac09e818f3b7604a8723e05e7b89661b0`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999b5e399c8fd763f7766ac559d895be85471f8846b5dd026bc5ad83664d9bfa`  
		Last Modified: Wed, 05 Sep 2018 17:27:42 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4b4d7b542c4af84f8e4a1820835b0897ab3c018a78901c5be1a320be7763d`  
		Last Modified: Wed, 05 Sep 2018 17:27:43 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2e0446c284eb6c50a0a13592763e0b9d5b74e6c1517077bdba406a4294dde2`  
		Last Modified: Wed, 05 Sep 2018 17:28:00 GMT  
		Size: 158.8 MB (158814814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b0dc5d08345ab11009e98ea22d58821e84bcba58ce4a40abd64373a8967b28`  
		Last Modified: Wed, 05 Sep 2018 17:27:43 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:6.7.5-alpine`

```console
$ docker pull sonarqube@sha256:bca08f9cf17df2774b75e377799ac00238711b87b45135a8e9311cf5dfb5b2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:6.7.5-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:1f956f9da1d1001ae708a61404d24d7b44005431c0c3f2fea3cd1b00bfd3fb8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238764814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc4f7c57692de5e04472aa08d786d92bbe323f2d064f4204d0c0847a8e09991`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 17:26:20 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:26:20 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:26:20 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 05 Sep 2018 17:26:31 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:26:32 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:26:33 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:26:33 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:26:33 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7337ef8991448d1a46d9c55b543e409af6ec669bf5d13612c04fe99d7d5d12fa`  
		Last Modified: Wed, 05 Sep 2018 17:28:14 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f426a5787fe73815221c7baab73d1688b57f8d0868ff2866fb562a5604fd3d42`  
		Last Modified: Wed, 05 Sep 2018 17:28:26 GMT  
		Size: 166.0 MB (165975039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561dc84cedb5cd9f4b5d2ba1527155e9e9561bffce9eca9d5e0ac5b73f6f9fc8`  
		Last Modified: Wed, 05 Sep 2018 17:28:15 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1`

```console
$ docker pull sonarqube@sha256:ffbdac030c32384f6dc18c91e1bac1519b6c343e88a71b94e76391335c03b29b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1` - linux; amd64

```console
$ docker pull sonarqube@sha256:a84e9aa57415846095ea9482a5e4ef85249bc9657d9536fd304655b7a0cfa918
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395366753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0628128176d80512d3a5e46d6b6833e42bbe904d6e600a14728bfc26d4e92`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:21:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 17:26:42 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:26:42 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:26:43 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 05 Sep 2018 17:26:47 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 05 Sep 2018 17:27:02 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:27:04 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:27:04 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:27:04 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:27:05 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40624ba8b77e273f4be3be6b60a55bd8b700624eeb37a26acb3d019f7fd862c8`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 892.4 KB (892405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8081dc39373d6d82eda189828a91d6f8ffaa33a764491c97a11946ae26714504`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4b3841871b679275ac91146501ee28b1b961c0e8495af78bb8e19ff9ae548d`  
		Last Modified: Wed, 05 Sep 2018 01:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919b8fd1620fbf048cb2f5e94af0f35b4981c92b319519625ee5d61c181a9d1`  
		Last Modified: Wed, 05 Sep 2018 01:40:13 GMT  
		Size: 134.0 MB (133991165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2760538fe6000d443ada98bfeaca178ac09e818f3b7604a8723e05e7b89661b0`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568568ebdfd4a628caa774e06f0ee32cce39ae29110af1e25b7a8dcd88c6a65`  
		Last Modified: Wed, 05 Sep 2018 17:28:35 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb2bb1922b2388a0a7047f1cd0db547c21cb6ba896fe4afb498a11fd3b148`  
		Last Modified: Wed, 05 Sep 2018 17:28:35 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0603c719d088d1ff386b47f5145e04a7936aae2ad7d0d7ba194fea5bda1d0602`  
		Last Modified: Wed, 05 Sep 2018 17:28:46 GMT  
		Size: 149.3 MB (149281063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94db2a022cd43e6e336ce8b9578d6cf6983445cf850e7fb460bc8564079bf98e`  
		Last Modified: Wed, 05 Sep 2018 17:28:35 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:7.1-alpine`

```console
$ docker pull sonarqube@sha256:20e0c3ef7ed59068a3563fe830624b177f86493e09d82de1677b9b282f70c368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:7.1-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:12bea89b4fedcba4389f677798543606af9070f56b4f5d4b7dfc150aa1f3fb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229232260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eac2fa1a40613bc4dbe5d8331bc280894cc4e4c48f50db90722a31ee97425d3`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 17:27:12 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:27:12 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:27:12 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 05 Sep 2018 17:27:23 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:27:24 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:27:24 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:27:24 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:27:25 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79b1aa5e7ebcd042ddb33d1558921c38451383d5ff8d4684072ed0c3c2e044`  
		Last Modified: Wed, 05 Sep 2018 17:28:56 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587cdc29a0a9ae6d3e5b067dad83dcd67098ad17f3a74b00cedd312920c0213c`  
		Last Modified: Wed, 05 Sep 2018 17:29:13 GMT  
		Size: 156.4 MB (156442484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd44d803b1155ed5ca9798a9cbd3a067640709686cdc9be64b6e7e20fac66d7`  
		Last Modified: Wed, 05 Sep 2018 17:28:56 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:alpine`

```console
$ docker pull sonarqube@sha256:20e0c3ef7ed59068a3563fe830624b177f86493e09d82de1677b9b282f70c368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:12bea89b4fedcba4389f677798543606af9070f56b4f5d4b7dfc150aa1f3fb27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229232260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eac2fa1a40613bc4dbe5d8331bc280894cc4e4c48f50db90722a31ee97425d3`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 17:27:12 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:27:12 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:27:12 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 05 Sep 2018 17:27:23 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:27:24 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:27:24 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:27:24 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:27:25 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d79b1aa5e7ebcd042ddb33d1558921c38451383d5ff8d4684072ed0c3c2e044`  
		Last Modified: Wed, 05 Sep 2018 17:28:56 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587cdc29a0a9ae6d3e5b067dad83dcd67098ad17f3a74b00cedd312920c0213c`  
		Last Modified: Wed, 05 Sep 2018 17:29:13 GMT  
		Size: 156.4 MB (156442484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd44d803b1155ed5ca9798a9cbd3a067640709686cdc9be64b6e7e20fac66d7`  
		Last Modified: Wed, 05 Sep 2018 17:28:56 GMT  
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
$ docker pull sonarqube@sha256:c339be028bd40a063cc16bc816e0cec7bc9fa375b493dcc77e19d1405a5fd222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts` - linux; amd64

```console
$ docker pull sonarqube@sha256:e6d6f813f7c3ec2051179404f35304846c48337e7f285a5c42b1153d33102660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404900508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd231a11701dfa5a627f143726d1f367328e545f66f2eb8f95399b2561ed8d9b`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:21:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 17:25:53 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:25:53 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:25:54 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Wed, 05 Sep 2018 17:25:57 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Wed, 05 Sep 2018 17:26:11 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:26:12 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:26:12 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:26:12 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:26:13 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40624ba8b77e273f4be3be6b60a55bd8b700624eeb37a26acb3d019f7fd862c8`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 892.4 KB (892405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8081dc39373d6d82eda189828a91d6f8ffaa33a764491c97a11946ae26714504`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4b3841871b679275ac91146501ee28b1b961c0e8495af78bb8e19ff9ae548d`  
		Last Modified: Wed, 05 Sep 2018 01:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919b8fd1620fbf048cb2f5e94af0f35b4981c92b319519625ee5d61c181a9d1`  
		Last Modified: Wed, 05 Sep 2018 01:40:13 GMT  
		Size: 134.0 MB (133991165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2760538fe6000d443ada98bfeaca178ac09e818f3b7604a8723e05e7b89661b0`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999b5e399c8fd763f7766ac559d895be85471f8846b5dd026bc5ad83664d9bfa`  
		Last Modified: Wed, 05 Sep 2018 17:27:42 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4b4d7b542c4af84f8e4a1820835b0897ab3c018a78901c5be1a320be7763d`  
		Last Modified: Wed, 05 Sep 2018 17:27:43 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2e0446c284eb6c50a0a13592763e0b9d5b74e6c1517077bdba406a4294dde2`  
		Last Modified: Wed, 05 Sep 2018 17:28:00 GMT  
		Size: 158.8 MB (158814814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b0dc5d08345ab11009e98ea22d58821e84bcba58ce4a40abd64373a8967b28`  
		Last Modified: Wed, 05 Sep 2018 17:27:43 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:bca08f9cf17df2774b75e377799ac00238711b87b45135a8e9311cf5dfb5b2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:1f956f9da1d1001ae708a61404d24d7b44005431c0c3f2fea3cd1b00bfd3fb8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238764814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc4f7c57692de5e04472aa08d786d92bbe323f2d064f4204d0c0847a8e09991`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 17:26:20 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:26:20 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:26:20 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 05 Sep 2018 17:26:31 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:26:32 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:26:33 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:26:33 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:26:33 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7337ef8991448d1a46d9c55b543e409af6ec669bf5d13612c04fe99d7d5d12fa`  
		Last Modified: Wed, 05 Sep 2018 17:28:14 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f426a5787fe73815221c7baab73d1688b57f8d0868ff2866fb562a5604fd3d42`  
		Last Modified: Wed, 05 Sep 2018 17:28:26 GMT  
		Size: 166.0 MB (165975039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561dc84cedb5cd9f4b5d2ba1527155e9e9561bffce9eca9d5e0ac5b73f6f9fc8`  
		Last Modified: Wed, 05 Sep 2018 17:28:15 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
