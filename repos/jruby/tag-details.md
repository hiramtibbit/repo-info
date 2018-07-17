<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:9`](#jruby9)
-	[`jruby:9.2`](#jruby92)
-	[`jruby:9.2.0`](#jruby920)
-	[`jruby:9.2.0.0`](#jruby9200)
-	[`jruby:9.2.0.0-alpine`](#jruby9200-alpine)
-	[`jruby:9.2.0.0-jdk`](#jruby9200-jdk)
-	[`jruby:9.2.0.0-jdk-alpine`](#jruby9200-jdk-alpine)
-	[`jruby:9.2.0.0-jre`](#jruby9200-jre)
-	[`jruby:9.2.0.0-jre-alpine`](#jruby9200-jre-alpine)
-	[`jruby:9.2.0.0-onbuild`](#jruby9200-onbuild)
-	[`jruby:9.2.0-alpine`](#jruby920-alpine)
-	[`jruby:9.2.0-jdk`](#jruby920-jdk)
-	[`jruby:9.2.0-jdk-alpine`](#jruby920-jdk-alpine)
-	[`jruby:9.2.0-jre`](#jruby920-jre)
-	[`jruby:9.2.0-jre-alpine`](#jruby920-jre-alpine)
-	[`jruby:9.2.0-onbuild`](#jruby920-onbuild)
-	[`jruby:9.2-alpine`](#jruby92-alpine)
-	[`jruby:9.2-jdk`](#jruby92-jdk)
-	[`jruby:9.2-jdk-alpine`](#jruby92-jdk-alpine)
-	[`jruby:9.2-jre`](#jruby92-jre)
-	[`jruby:9.2-jre-alpine`](#jruby92-jre-alpine)
-	[`jruby:9.2-onbuild`](#jruby92-onbuild)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9-jdk`](#jruby9-jdk)
-	[`jruby:9-jdk-alpine`](#jruby9-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:latest`](#jrubylatest)

## `jruby:9`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0.0` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jdk`

```console
$ docker pull jruby@sha256:94db977571ef2a0dff8cb20042532dcb8648a898ecdbd3e076ba2ae71be46484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:6086f74191bae47d7cba270cae3b1310918d673280f86c0806d7ca1e0ea27f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276188011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5721b35d8626807db3190b1cd592ed06de1346730b37b1ec30a7deafa45e37`
-	Default Command: `["irb"]`

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
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:16:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:18:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:18:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:38:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:38:48 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:38:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:39:04 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:39:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:39:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:39:09 GMT
CMD ["irb"]
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
	-	`sha256:0539c80a02be3183761cc42f94a4f9cd5e3bc455f4ac3f4ecaab6d476b7fe330`  
		Last Modified: Tue, 17 Jul 2018 06:55:33 GMT  
		Size: 133.9 MB (133944795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fefc6dcf80a7be81ef627ec6ba8449a8ee7958a026ef947f99cac250af8f53`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc6c1dc80f2b6eceb1275a4a5223dc709d4f78039b08d0fa05a3b14f40d84c9`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 6.7 MB (6732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc8a30726547692166f2fb2c69439ce8e70c4c311676bf92511aaaa67bf20a0`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 23.0 MB (22969439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f555b89390abdc57a1cd2a96a7652271342fd9a37f95e76f5272655063f08bf`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2ac1f33909464c6680b390e7975a727ff90338712464991f851d8f3bb867ee`  
		Last Modified: Tue, 17 Jul 2018 16:42:36 GMT  
		Size: 950.8 KB (950779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69adffc5a37cc6784e8255fc60a69164b70d11b46f036cab3912541f525edeef`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:92b9d73dcc49bcb1664b31ad814ee34044be6abe14525f927f5b2947096dcde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258412526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a076c189c63994f4724cfa5ecbc3a0f411ca0f932143107b8978b571726682a1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:40:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:40:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:42:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:42:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:41:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:41:17 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:41:18 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:41:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:41:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:41:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:43:37 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:43:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:43:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:43:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff07a7047bdbf3f1d34d007232ddb301a8ad8db690f9a765f2a2f4b46f4bae`  
		Last Modified: Tue, 17 Jul 2018 12:02:46 GMT  
		Size: 48.3 MB (48264515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa7a9c7103cb994282063146174006eaee187ef98c987e9f5cce7f524b4a63`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 884.6 KB (884609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec7d77d5d2b9587ea82e01b70cf5faed67e65fb33b15277e90e83d4b7ee056`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a8bc778ac2bb89ef08adaf7b656e04ed98befa0b462849942000043558c09`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5149660713a88af67534d8f760ffe762a996e66b55fc5f62ec92bbd4eb368cda`  
		Last Modified: Tue, 17 Jul 2018 12:54:28 GMT  
		Size: 121.3 MB (121284482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f936bb411f35835ed941e85f832d8c7b6cf3044f746d06f3fa012a670f31504`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 246.7 KB (246745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f04f331ee021a59bf78469fc7f94702e6b2c4008a07466fb56aceafcb1560`  
		Last Modified: Tue, 17 Jul 2018 14:46:19 GMT  
		Size: 5.8 MB (5813847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8275aed40cc2631d267ce12b8ad71209a941447391c76338316c45ccacce65`  
		Last Modified: Tue, 17 Jul 2018 14:46:21 GMT  
		Size: 23.0 MB (22969408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81db98cad1dd3d27df1dedfd8d6fa7670c5c458700d3efbcbf393a0a3b2d217`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642883dfe4f28d01a1ea55a0da945d96b570285673cda28793a694c85f4b1dcc`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 951.2 KB (951231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48ef7ee6735c7e528c296d05fc48a7e03884dde1bb05b6b4ba540960bcf08`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:a1fa295c39e68a4b7d1433330e01d39c33f3559ef45af99770830924e7a74552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258260435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236b2cc24d35568d2bfb21aff6e4a7c97e3b174b316c0d239cdaff15ce329afb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:18:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:18:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:18:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 20:18:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:18:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:18:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:23:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:57:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:57:29 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:57:37 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:58:01 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:58:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:58:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:58:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c82876ce7ec36daabd21b906519990de7cdad2450cdc228db6162b05abb10e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 877.7 KB (877692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c737e43b53477a18c547197a329e7951a247fe7622f5b78515eba57b2c2567e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53323c3b55cd768b0fc7ec5773a27a88654aa40cf977423dc9b560eca67c3517`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b86007424c9064dc6bfddff4edf7810757ceb9fc05d00685e5aa185c7d1228`  
		Last Modified: Tue, 17 Jul 2018 20:50:42 GMT  
		Size: 122.2 MB (122200534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5a35207261cf735156cb90c19ec96298ed1879a2917ac2d5f1d17871db36d8`  
		Last Modified: Tue, 17 Jul 2018 20:50:05 GMT  
		Size: 246.7 KB (246659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0c3e8c10a528a28e57c934e59b864e429bec2168a17c5fcbb89f31aaea097`  
		Last Modified: Tue, 17 Jul 2018 22:03:51 GMT  
		Size: 6.1 MB (6108838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd6bdc83307cbae9eae9adcf237dc28b13b24762105f682ef6440ec5cc2e1c`  
		Last Modified: Tue, 17 Jul 2018 22:03:56 GMT  
		Size: 23.0 MB (22969487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c572944cd95018f856af72a30efc8c0420f0695b54fbea22a8a34b6de02e441c`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4208ce99c91debd70e959ddc49c92469501a6e348b7ad9bd033b9e012d1959bf`  
		Last Modified: Tue, 17 Jul 2018 22:03:49 GMT  
		Size: 950.8 KB (950828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdbbbb096429e3dbe8b961c38a4cff2ded67c77eaae255d664412941e1c9c3b`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:212f29dfda14a947ac636f520862b29038a3626c691275d54b09bdf8f84868c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282151598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436aac624258429715877ff302cfe4e3ad259860ae4527bd19058948ce2f0fa8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:15:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:15:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:16:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:17:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:17:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:58:16 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:58:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:58:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:58:45 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:58:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:58:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e0f0ac283eb8aa7d523e3e9b705fe3e5c4842a08feb40a292deb20e20f87d`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 899.9 KB (899946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488ddd1b3028720563d49043ece69c59955a47731300f9ee501f3ec667520253`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297119e80f06eeab50446e3893b93f210078205d6b6cfd8c3f43d7717c92f17`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4923e708a90e1e738d939b1c0fa1ad147425fe4158a1c8a4c17e1611a76a7b7f`  
		Last Modified: Tue, 17 Jul 2018 18:45:46 GMT  
		Size: 134.0 MB (133996397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6425f27f2d3b622aaa5d994297ec260e71c03f7e3754e899a9338f4d200005`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 246.7 KB (246732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb054e417c44ee3f0830aad307979db0e1bc1f6d2c23cac6ff16085939437884`  
		Last Modified: Tue, 17 Jul 2018 20:01:45 GMT  
		Size: 10.1 MB (10149216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba60bcc892fe61de633e00a65de83991ff8c993e34e4bc8af0ca0a99879e8bd`  
		Last Modified: Tue, 17 Jul 2018 20:01:46 GMT  
		Size: 23.0 MB (22969479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c8e9160226fc9639f1b4629716647b1133310bd2e566d1e67e1d1087117938`  
		Last Modified: Tue, 17 Jul 2018 20:01:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662a4b0dbaf07a563ec42b908f9264e6fcaa9b7ea4b7dfb0db61305b42cc569`  
		Last Modified: Tue, 17 Jul 2018 20:01:41 GMT  
		Size: 950.8 KB (950784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607de04a6da3f58e78a72e7140e0738f7068ef79c44783691260d8855e9d0177`  
		Last Modified: Tue, 17 Jul 2018 20:01:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:35985e64cc4055375d3b5f8faf5a7e3be9a3154cb4efca64cf7836e84d4a3162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265689771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f4722ee83c1df7bdb594b7f97642cc104d13fb2ebf817dbb9adbf4c9436e0c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:02:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:02:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 17:02:56 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:03:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:03:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:13:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:14:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:37:20 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:37:24 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:37:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:37:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:37:53 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:38:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2868b335fa3529e1c024e3f109aa32681130cb83eaadc6c37f7adf1b2d63e6`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 50.1 MB (50061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66b91bddeea31add164312d699dabd8b8f8759b9fab1d447a8af10c649be133`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 886.5 KB (886451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c99fd65bb6207df4ac22db65d7058f0f28446e0aa6f7bb23048b43c657f6a5`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9f281492e2ef4ec594677e65b540f607ca66cfa25f7e157bff38d06a2af7c0`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364b7234b3003697e605c1290a30a7a9174ed95bb698654977db46c7c64759d5`  
		Last Modified: Tue, 17 Jul 2018 17:41:22 GMT  
		Size: 124.0 MB (124039682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e72d05bb0932229acf498d0e5910dc4df379a470bb6f1133fb8ca726838db58`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 246.7 KB (246677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eda4e5467a5c41962f5e3f5b68f4c342d518e32ce44e81051846bfbbdf49c0`  
		Last Modified: Tue, 17 Jul 2018 18:41:16 GMT  
		Size: 6.7 MB (6706677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71485c8e822b32fbd5697fc7cb7e1576dbab0d54c037b5a0ff0aa473b2d18ffb`  
		Last Modified: Tue, 17 Jul 2018 18:41:18 GMT  
		Size: 23.0 MB (22969584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827e0adbb286c684503b1f929fc574e701e83ae550466969adbb0a1609d769a`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c814a7226df34501862cea4d1385c7a614938e7a078de6206d3fad10f716e53d`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 950.9 KB (950945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2860a09e8e229474f91b79f5c4aa2f7ec9e3d28aaacbd1ee8574e39ace4731f`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jdk-alpine`

```console
$ docker pull jruby@sha256:36ecbdd4b257a84a82cc1532b05bd74742bb3d34cb475d0f0c5192bb9493e5bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:def6be81e4c2a728515832a6b3a1c614db7c272209b28fa86d9fc847798baa57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ad717235e88350a8af3816f64d24b1766bfd887b4704b507e4e6c7b87ae39`
-	Default Command: `["irb"]`

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
# Wed, 11 Jul 2018 01:52:44 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:49 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:50 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:53:07 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:53:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:53:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:53:09 GMT
CMD ["irb"]
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
	-	`sha256:fbc4e3d892a24e369160cf9685b504eb3bf5124bf8ba7d447541baf8fb2c5d50`  
		Last Modified: Wed, 11 Jul 2018 01:56:16 GMT  
		Size: 1.2 MB (1202707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56af18a98b29e92bed8ea8e166114f98f37fc5e38fa57bac62d2a9bdec460117`  
		Last Modified: Wed, 11 Jul 2018 01:56:18 GMT  
		Size: 24.3 MB (24334892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40759493dcb38d071b45cf9be494e87c3e19ea1e765af246906fc8201150ebe4`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10709235f4c916340ad04eaf6de71c320c97f8e3cb8f7cec2e1243375713df8d`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 948.6 KB (948639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6929e8a2030f99cc0cd40cf258427d0a660362975f05f23ec3fcc648e1489`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jre`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jre-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-onbuild`

```console
$ docker pull jruby@sha256:79cba0d1002928fd3123a84f5b3c15ec1a541788e19b273b323fb7afb31e2f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:a7b1bf9fdc561db7da623409bea342038113faf7f253afd87f44f5f040c1b707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274503447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33790b5bff9509fa63cc3ddd0ebccf976c362b94d209502fb6af357f335afadf`
-	Default Command: `["irb"]`

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
# Tue, 15 May 2018 01:52:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 01:52:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 01:52:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 01:52:54 GMT
RUN gem install bundler
# Tue, 15 May 2018 01:52:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 01:52:56 GMT
CMD ["irb"]
# Tue, 15 May 2018 01:53:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 01:53:03 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:756487786386237a3c062e505d50213a6b7840e4c1e022aaee944878c89bae74`  
		Last Modified: Tue, 15 May 2018 01:54:34 GMT  
		Size: 6.7 MB (6711798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9168d725e06d8951aa2c65ca689d2234d11ad838c79188adda3605f31a7be`  
		Last Modified: Tue, 15 May 2018 01:54:32 GMT  
		Size: 21.5 MB (21500859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f45ade82cb9d80d98d5f8fc6a7c0a16720a5c85b8d01fd9b118d168a5f8ca`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0728877d1df17c4bbd48d562503466b5c90c46ad7397a81be5281dacef544144`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 701.5 KB (701544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730167d1da35d73ed82f6f0957230c3ce7bf599dcae194955cdb83fc93ccb82`  
		Last Modified: Tue, 15 May 2018 01:54:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1697d30d28e7d0c5dbc42330e3c50007d380a2ebee5bcfc9ffb3d0b9986613`  
		Last Modified: Tue, 15 May 2018 01:55:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:f9450d25ec85a34296eddef6d96e503f03b9a107d5f738e5db1225177ef9cc91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256742076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e0e1aee3a6232f629f7e2576e91a19d42842c9d1354b4f90eaacc5ff09f3`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:00:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:33:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:33:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:48:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:53:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 10:54:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 10:54:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:54:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 10:55:45 GMT
RUN gem install bundler
# Tue, 15 May 2018 10:55:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:55:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 10:55:47 GMT
CMD ["irb"]
# Tue, 15 May 2018 10:55:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 10:55:59 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 10:56:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b447c1a942c4bbb82a6222d7f5abc3936dfb4b80c399d470515f9956cbc4e93`  
		Last Modified: Sat, 05 May 2018 09:13:26 GMT  
		Size: 9.8 MB (9842386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b217d1eda0719b1e84281d8b64839a9a234ee6976bc53a2a031453e60beb2`  
		Last Modified: Sat, 05 May 2018 09:13:23 GMT  
		Size: 4.2 MB (4153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705c6d41296d908acb07f9570f488678bb308e048c5039ba5d5c8f2773356e8`  
		Last Modified: Sat, 05 May 2018 09:14:04 GMT  
		Size: 48.2 MB (48239621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d5ed7613dd847b094cda955417c40e86b138585a75ec42baa02847940b15c`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 884.8 KB (884794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8721347d68d66c62cb3ef077d9d5a4e72c2ab8344791c0656110cc9ce4e1b`  
		Last Modified: Sat, 05 May 2018 09:59:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a4190394a36f501d1696a8bfa231634945a3159522d3953cf1f9fdbb3ca8b2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7cd6cb39e1c99635a0327f17e9d76ee2e8100fae6c27f225c7a2179a06a5ae`  
		Last Modified: Tue, 15 May 2018 10:24:53 GMT  
		Size: 121.3 MB (121313616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4a8cb06170165cdb0223112d476988b90fbe87a3df4958ebcb609cb6228caa`  
		Last Modified: Tue, 15 May 2018 10:24:20 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a9e4ab2d30fb85ae10a97016a3decf7b09664b1c04c63bb31fdc156178ec2f`  
		Last Modified: Tue, 15 May 2018 10:57:47 GMT  
		Size: 5.8 MB (5793738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a19a643af3f1849bbdf1777a8d1fd4fc89e7954afdde91d47a2e3e4fc870b5`  
		Last Modified: Tue, 15 May 2018 10:57:48 GMT  
		Size: 21.5 MB (21500851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146580cda8c474d91ae43571872e7fe494bca3daf4435e7d340c4fbc0e31097a`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ba1421fd9b67d486093e5a7db08a48b2b62f0af6d13f638cd50937dfd02b08`  
		Last Modified: Tue, 15 May 2018 10:57:46 GMT  
		Size: 701.9 KB (701937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f94982f36a4572ae3557f9640d8d258f2622870776dc46cf607f180bd8a20`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7967f353284e315ec9ac68d3b44e7a259cb1e11efdca5fd1e3460af8621ed1`  
		Last Modified: Tue, 15 May 2018 10:58:25 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:6422241eac4f4bbd68894d7ac71e622d4befd61133ee536182c2dfa84bc1657b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256551051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8977b4153fdb0e9b8a9a68643b724515aa43d6db157d507956098f25538481b6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:04:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:05:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:55:11 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:55:11 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:55:12 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:55:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:55:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:55:47 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:55:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:55:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:55:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:55:55 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:57:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:57:31 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:57:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:57:33 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c6a364e18bde16447984bcbc76f9f04d3dc8702e9b0d0ce7dbad52323ba2e`  
		Last Modified: Tue, 15 May 2018 11:04:39 GMT  
		Size: 122.2 MB (122202299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf501b32796c19d43b56ab9bb6aca3b3bdb3ef707b66ed45ad003003596b3fa7`  
		Last Modified: Tue, 15 May 2018 11:04:00 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf9e30eab32c34ad747510d0de2420e3de249aabe90461ee59b68eff90f5428`  
		Last Modified: Tue, 15 May 2018 13:59:47 GMT  
		Size: 6.1 MB (6089613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b1243f92323a931b8f89c326699953b073fcfb33711199afcca10666aa0f7`  
		Last Modified: Tue, 15 May 2018 13:59:49 GMT  
		Size: 21.5 MB (21500881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f95d12e8efb0a2188f25249a4c2e635951485fd03ae9e8f407a3244da17f6`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9850dc49d7ce7ed9f5c11d3bc609f74f9370e29a4349dd4f4915987d97d54a0`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 701.6 KB (701596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5999f89077a22209e052216c17565aacfd6a3d4094dc4ce95e17ad7f1450d89`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e928bf1a663890c73875db6f9d976f7eaac7c5b75bcd3bb339d7cf7c2c9568c`  
		Last Modified: Tue, 15 May 2018 14:00:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5a18c27d7b175c354e2616df567cea71ddb5064827e0eb857fffc141ba896c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280471708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df184427f8b23f189814d57ff08bc395b7d3bb668e0ee8e1c3a4a5304101fed`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:06:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:06:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:22:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 11:39:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:39:29 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:44:00 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:44:07 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:44:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:44:23 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:44:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:44:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:44:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:44:33 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af6543ea0fe065b8b039ef338aa11ccccc8921a78894d40c0594a1821e8c89`  
		Last Modified: Sat, 05 May 2018 11:40:01 GMT  
		Size: 10.8 MB (10783664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84eefdd216b0b19250871d762b9dd06baa7cb1a1a4094f165e32161cc7269754`  
		Last Modified: Sat, 05 May 2018 11:39:59 GMT  
		Size: 4.6 MB (4555015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9190d0da67a487e6c5843ce48a07d4ec97543307ec18377f260f2af44b6e5`  
		Last Modified: Sat, 05 May 2018 11:40:43 GMT  
		Size: 51.6 MB (51554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c73c3f41ff89acfb3c754b128bbef083614c69b98d854ff9516b73e3d60f19`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 900.1 KB (900067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237d1c179a1e888bca57623514704a7021e1f112394345cbc71d30f8bce6ce9`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915a66a3aad8071041f85c2aeb8fc305872236c3a87afabd341e73cf254f97e1`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ef60a567cb5fa284fa4b1196737fe1c18b7a7a1810511c8afd93259517990`  
		Last Modified: Tue, 15 May 2018 12:17:31 GMT  
		Size: 134.0 MB (134030401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccac42f1e79dbb16d86256590b009bf58506365e99cbd39583b07d5b1bb12bf`  
		Last Modified: Tue, 15 May 2018 12:16:54 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725924c7c66481707acd4481b041031d0d5e369ad8ea657d65232b1a5c0597ce`  
		Last Modified: Tue, 15 May 2018 13:45:48 GMT  
		Size: 10.1 MB (10128212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d376d9f7ae4dad290fe318d53ef369224b381ec28eb83cf81fad8d40583622`  
		Last Modified: Tue, 15 May 2018 13:45:49 GMT  
		Size: 21.5 MB (21500828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7948d79b56d9d4e2e57e15cb1df77e0bd0c9175ac30fea09a2eb3d275056ea`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a92a7ab856fc78763321ee2eda43c65b4b77fc9c9cc5b48e5e220d266242cf`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 701.6 KB (701557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6384418fd3f68d7c8e1dc3daeab9015a916d9c7924cdf61a28537a86eacfd0`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7333ff245ef83168f5ac2abfb76ef27f702b9daa14b089f51ef823aa31ec1`  
		Last Modified: Tue, 15 May 2018 13:46:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:67093303993efb3999cff6ca8f80c30e6b19541f9296c83104465e1bb578b7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264007746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e7e9546675b8460049b8fe57057be9f23c95531d822673f4d0ef22b9681955`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:00:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:00:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 11:00:44 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:00:45 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 11:00:47 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 11:00:55 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 11:00:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:00:59 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 11:01:16 GMT
RUN gem install bundler
# Tue, 15 May 2018 11:01:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 11:01:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 11:01:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:01:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 11:01:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 11:02:09 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 11:02:10 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 11:02:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 11:02:12 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 11:02:13 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 11:02:14 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0356d4e9531743ac3cc25d716fe318611d9d96c66d14f4b99a5bc2741b63342`  
		Last Modified: Tue, 15 May 2018 09:44:00 GMT  
		Size: 124.1 MB (124072333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1333145b576488a1f978a8224418bb0539556b1d9a6a9f8be06821475a8771b`  
		Last Modified: Tue, 15 May 2018 09:43:16 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f4a70b738b1a46f9e3944a12cc65e0c0f06778b0499a2f00b5088b7a30cdf`  
		Last Modified: Tue, 15 May 2018 11:03:36 GMT  
		Size: 6.7 MB (6688503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8893964ebe86525be186dfb4f054e8a45dcb367e6c767affcfcd24580982735d`  
		Last Modified: Tue, 15 May 2018 11:03:38 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd3f3f85cc807a192bee8bc705fcbf515d0d315045a50cec592559d0a7b4e8e`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc9e97006d2ee40a5680e16e3f7aff96bea49af6c97f9adff375f36e8ca472`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 701.7 KB (701735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9260a22d802e7c886b582484787fa28bbb146fc3015e1b99e559aaa577e11`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c04641af96806dba79f6c7b9980ed80cdd6f2764fac51135a5647183ba90ef`  
		Last Modified: Tue, 15 May 2018 11:04:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jdk`

```console
$ docker pull jruby@sha256:94db977571ef2a0dff8cb20042532dcb8648a898ecdbd3e076ba2ae71be46484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:6086f74191bae47d7cba270cae3b1310918d673280f86c0806d7ca1e0ea27f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276188011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5721b35d8626807db3190b1cd592ed06de1346730b37b1ec30a7deafa45e37`
-	Default Command: `["irb"]`

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
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:16:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:18:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:18:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:38:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:38:48 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:38:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:39:04 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:39:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:39:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:39:09 GMT
CMD ["irb"]
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
	-	`sha256:0539c80a02be3183761cc42f94a4f9cd5e3bc455f4ac3f4ecaab6d476b7fe330`  
		Last Modified: Tue, 17 Jul 2018 06:55:33 GMT  
		Size: 133.9 MB (133944795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fefc6dcf80a7be81ef627ec6ba8449a8ee7958a026ef947f99cac250af8f53`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc6c1dc80f2b6eceb1275a4a5223dc709d4f78039b08d0fa05a3b14f40d84c9`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 6.7 MB (6732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc8a30726547692166f2fb2c69439ce8e70c4c311676bf92511aaaa67bf20a0`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 23.0 MB (22969439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f555b89390abdc57a1cd2a96a7652271342fd9a37f95e76f5272655063f08bf`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2ac1f33909464c6680b390e7975a727ff90338712464991f851d8f3bb867ee`  
		Last Modified: Tue, 17 Jul 2018 16:42:36 GMT  
		Size: 950.8 KB (950779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69adffc5a37cc6784e8255fc60a69164b70d11b46f036cab3912541f525edeef`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:92b9d73dcc49bcb1664b31ad814ee34044be6abe14525f927f5b2947096dcde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258412526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a076c189c63994f4724cfa5ecbc3a0f411ca0f932143107b8978b571726682a1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:40:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:40:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:42:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:42:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:41:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:41:17 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:41:18 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:41:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:41:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:41:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:43:37 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:43:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:43:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:43:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff07a7047bdbf3f1d34d007232ddb301a8ad8db690f9a765f2a2f4b46f4bae`  
		Last Modified: Tue, 17 Jul 2018 12:02:46 GMT  
		Size: 48.3 MB (48264515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa7a9c7103cb994282063146174006eaee187ef98c987e9f5cce7f524b4a63`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 884.6 KB (884609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec7d77d5d2b9587ea82e01b70cf5faed67e65fb33b15277e90e83d4b7ee056`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a8bc778ac2bb89ef08adaf7b656e04ed98befa0b462849942000043558c09`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5149660713a88af67534d8f760ffe762a996e66b55fc5f62ec92bbd4eb368cda`  
		Last Modified: Tue, 17 Jul 2018 12:54:28 GMT  
		Size: 121.3 MB (121284482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f936bb411f35835ed941e85f832d8c7b6cf3044f746d06f3fa012a670f31504`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 246.7 KB (246745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f04f331ee021a59bf78469fc7f94702e6b2c4008a07466fb56aceafcb1560`  
		Last Modified: Tue, 17 Jul 2018 14:46:19 GMT  
		Size: 5.8 MB (5813847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8275aed40cc2631d267ce12b8ad71209a941447391c76338316c45ccacce65`  
		Last Modified: Tue, 17 Jul 2018 14:46:21 GMT  
		Size: 23.0 MB (22969408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81db98cad1dd3d27df1dedfd8d6fa7670c5c458700d3efbcbf393a0a3b2d217`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642883dfe4f28d01a1ea55a0da945d96b570285673cda28793a694c85f4b1dcc`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 951.2 KB (951231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48ef7ee6735c7e528c296d05fc48a7e03884dde1bb05b6b4ba540960bcf08`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:a1fa295c39e68a4b7d1433330e01d39c33f3559ef45af99770830924e7a74552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258260435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236b2cc24d35568d2bfb21aff6e4a7c97e3b174b316c0d239cdaff15ce329afb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:18:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:18:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:18:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 20:18:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:18:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:18:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:23:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:57:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:57:29 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:57:37 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:58:01 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:58:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:58:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:58:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c82876ce7ec36daabd21b906519990de7cdad2450cdc228db6162b05abb10e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 877.7 KB (877692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c737e43b53477a18c547197a329e7951a247fe7622f5b78515eba57b2c2567e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53323c3b55cd768b0fc7ec5773a27a88654aa40cf977423dc9b560eca67c3517`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b86007424c9064dc6bfddff4edf7810757ceb9fc05d00685e5aa185c7d1228`  
		Last Modified: Tue, 17 Jul 2018 20:50:42 GMT  
		Size: 122.2 MB (122200534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5a35207261cf735156cb90c19ec96298ed1879a2917ac2d5f1d17871db36d8`  
		Last Modified: Tue, 17 Jul 2018 20:50:05 GMT  
		Size: 246.7 KB (246659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0c3e8c10a528a28e57c934e59b864e429bec2168a17c5fcbb89f31aaea097`  
		Last Modified: Tue, 17 Jul 2018 22:03:51 GMT  
		Size: 6.1 MB (6108838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd6bdc83307cbae9eae9adcf237dc28b13b24762105f682ef6440ec5cc2e1c`  
		Last Modified: Tue, 17 Jul 2018 22:03:56 GMT  
		Size: 23.0 MB (22969487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c572944cd95018f856af72a30efc8c0420f0695b54fbea22a8a34b6de02e441c`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4208ce99c91debd70e959ddc49c92469501a6e348b7ad9bd033b9e012d1959bf`  
		Last Modified: Tue, 17 Jul 2018 22:03:49 GMT  
		Size: 950.8 KB (950828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdbbbb096429e3dbe8b961c38a4cff2ded67c77eaae255d664412941e1c9c3b`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:212f29dfda14a947ac636f520862b29038a3626c691275d54b09bdf8f84868c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282151598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436aac624258429715877ff302cfe4e3ad259860ae4527bd19058948ce2f0fa8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:15:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:15:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:16:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:17:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:17:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:58:16 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:58:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:58:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:58:45 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:58:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:58:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e0f0ac283eb8aa7d523e3e9b705fe3e5c4842a08feb40a292deb20e20f87d`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 899.9 KB (899946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488ddd1b3028720563d49043ece69c59955a47731300f9ee501f3ec667520253`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297119e80f06eeab50446e3893b93f210078205d6b6cfd8c3f43d7717c92f17`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4923e708a90e1e738d939b1c0fa1ad147425fe4158a1c8a4c17e1611a76a7b7f`  
		Last Modified: Tue, 17 Jul 2018 18:45:46 GMT  
		Size: 134.0 MB (133996397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6425f27f2d3b622aaa5d994297ec260e71c03f7e3754e899a9338f4d200005`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 246.7 KB (246732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb054e417c44ee3f0830aad307979db0e1bc1f6d2c23cac6ff16085939437884`  
		Last Modified: Tue, 17 Jul 2018 20:01:45 GMT  
		Size: 10.1 MB (10149216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba60bcc892fe61de633e00a65de83991ff8c993e34e4bc8af0ca0a99879e8bd`  
		Last Modified: Tue, 17 Jul 2018 20:01:46 GMT  
		Size: 23.0 MB (22969479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c8e9160226fc9639f1b4629716647b1133310bd2e566d1e67e1d1087117938`  
		Last Modified: Tue, 17 Jul 2018 20:01:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662a4b0dbaf07a563ec42b908f9264e6fcaa9b7ea4b7dfb0db61305b42cc569`  
		Last Modified: Tue, 17 Jul 2018 20:01:41 GMT  
		Size: 950.8 KB (950784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607de04a6da3f58e78a72e7140e0738f7068ef79c44783691260d8855e9d0177`  
		Last Modified: Tue, 17 Jul 2018 20:01:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:35985e64cc4055375d3b5f8faf5a7e3be9a3154cb4efca64cf7836e84d4a3162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265689771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f4722ee83c1df7bdb594b7f97642cc104d13fb2ebf817dbb9adbf4c9436e0c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:02:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:02:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 17:02:56 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:03:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:03:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:13:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:14:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:37:20 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:37:24 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:37:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:37:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:37:53 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:38:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2868b335fa3529e1c024e3f109aa32681130cb83eaadc6c37f7adf1b2d63e6`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 50.1 MB (50061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66b91bddeea31add164312d699dabd8b8f8759b9fab1d447a8af10c649be133`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 886.5 KB (886451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c99fd65bb6207df4ac22db65d7058f0f28446e0aa6f7bb23048b43c657f6a5`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9f281492e2ef4ec594677e65b540f607ca66cfa25f7e157bff38d06a2af7c0`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364b7234b3003697e605c1290a30a7a9174ed95bb698654977db46c7c64759d5`  
		Last Modified: Tue, 17 Jul 2018 17:41:22 GMT  
		Size: 124.0 MB (124039682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e72d05bb0932229acf498d0e5910dc4df379a470bb6f1133fb8ca726838db58`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 246.7 KB (246677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eda4e5467a5c41962f5e3f5b68f4c342d518e32ce44e81051846bfbbdf49c0`  
		Last Modified: Tue, 17 Jul 2018 18:41:16 GMT  
		Size: 6.7 MB (6706677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71485c8e822b32fbd5697fc7cb7e1576dbab0d54c037b5a0ff0aa473b2d18ffb`  
		Last Modified: Tue, 17 Jul 2018 18:41:18 GMT  
		Size: 23.0 MB (22969584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827e0adbb286c684503b1f929fc574e701e83ae550466969adbb0a1609d769a`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c814a7226df34501862cea4d1385c7a614938e7a078de6206d3fad10f716e53d`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 950.9 KB (950945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2860a09e8e229474f91b79f5c4aa2f7ec9e3d28aaacbd1ee8574e39ace4731f`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jdk-alpine`

```console
$ docker pull jruby@sha256:36ecbdd4b257a84a82cc1532b05bd74742bb3d34cb475d0f0c5192bb9493e5bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:def6be81e4c2a728515832a6b3a1c614db7c272209b28fa86d9fc847798baa57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ad717235e88350a8af3816f64d24b1766bfd887b4704b507e4e6c7b87ae39`
-	Default Command: `["irb"]`

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
# Wed, 11 Jul 2018 01:52:44 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:49 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:50 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:53:07 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:53:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:53:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:53:09 GMT
CMD ["irb"]
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
	-	`sha256:fbc4e3d892a24e369160cf9685b504eb3bf5124bf8ba7d447541baf8fb2c5d50`  
		Last Modified: Wed, 11 Jul 2018 01:56:16 GMT  
		Size: 1.2 MB (1202707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56af18a98b29e92bed8ea8e166114f98f37fc5e38fa57bac62d2a9bdec460117`  
		Last Modified: Wed, 11 Jul 2018 01:56:18 GMT  
		Size: 24.3 MB (24334892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40759493dcb38d071b45cf9be494e87c3e19ea1e765af246906fc8201150ebe4`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10709235f4c916340ad04eaf6de71c320c97f8e3cb8f7cec2e1243375713df8d`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 948.6 KB (948639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6929e8a2030f99cc0cd40cf258427d0a660362975f05f23ec3fcc648e1489`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jre`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jre-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-onbuild`

```console
$ docker pull jruby@sha256:79cba0d1002928fd3123a84f5b3c15ec1a541788e19b273b323fb7afb31e2f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:a7b1bf9fdc561db7da623409bea342038113faf7f253afd87f44f5f040c1b707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274503447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33790b5bff9509fa63cc3ddd0ebccf976c362b94d209502fb6af357f335afadf`
-	Default Command: `["irb"]`

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
# Tue, 15 May 2018 01:52:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 01:52:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 01:52:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 01:52:54 GMT
RUN gem install bundler
# Tue, 15 May 2018 01:52:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 01:52:56 GMT
CMD ["irb"]
# Tue, 15 May 2018 01:53:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 01:53:03 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:756487786386237a3c062e505d50213a6b7840e4c1e022aaee944878c89bae74`  
		Last Modified: Tue, 15 May 2018 01:54:34 GMT  
		Size: 6.7 MB (6711798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9168d725e06d8951aa2c65ca689d2234d11ad838c79188adda3605f31a7be`  
		Last Modified: Tue, 15 May 2018 01:54:32 GMT  
		Size: 21.5 MB (21500859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f45ade82cb9d80d98d5f8fc6a7c0a16720a5c85b8d01fd9b118d168a5f8ca`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0728877d1df17c4bbd48d562503466b5c90c46ad7397a81be5281dacef544144`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 701.5 KB (701544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730167d1da35d73ed82f6f0957230c3ce7bf599dcae194955cdb83fc93ccb82`  
		Last Modified: Tue, 15 May 2018 01:54:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1697d30d28e7d0c5dbc42330e3c50007d380a2ebee5bcfc9ffb3d0b9986613`  
		Last Modified: Tue, 15 May 2018 01:55:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:f9450d25ec85a34296eddef6d96e503f03b9a107d5f738e5db1225177ef9cc91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256742076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e0e1aee3a6232f629f7e2576e91a19d42842c9d1354b4f90eaacc5ff09f3`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:00:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:33:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:33:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:48:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:53:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 10:54:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 10:54:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:54:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 10:55:45 GMT
RUN gem install bundler
# Tue, 15 May 2018 10:55:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:55:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 10:55:47 GMT
CMD ["irb"]
# Tue, 15 May 2018 10:55:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 10:55:59 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 10:56:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b447c1a942c4bbb82a6222d7f5abc3936dfb4b80c399d470515f9956cbc4e93`  
		Last Modified: Sat, 05 May 2018 09:13:26 GMT  
		Size: 9.8 MB (9842386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b217d1eda0719b1e84281d8b64839a9a234ee6976bc53a2a031453e60beb2`  
		Last Modified: Sat, 05 May 2018 09:13:23 GMT  
		Size: 4.2 MB (4153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705c6d41296d908acb07f9570f488678bb308e048c5039ba5d5c8f2773356e8`  
		Last Modified: Sat, 05 May 2018 09:14:04 GMT  
		Size: 48.2 MB (48239621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d5ed7613dd847b094cda955417c40e86b138585a75ec42baa02847940b15c`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 884.8 KB (884794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8721347d68d66c62cb3ef077d9d5a4e72c2ab8344791c0656110cc9ce4e1b`  
		Last Modified: Sat, 05 May 2018 09:59:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a4190394a36f501d1696a8bfa231634945a3159522d3953cf1f9fdbb3ca8b2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7cd6cb39e1c99635a0327f17e9d76ee2e8100fae6c27f225c7a2179a06a5ae`  
		Last Modified: Tue, 15 May 2018 10:24:53 GMT  
		Size: 121.3 MB (121313616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4a8cb06170165cdb0223112d476988b90fbe87a3df4958ebcb609cb6228caa`  
		Last Modified: Tue, 15 May 2018 10:24:20 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a9e4ab2d30fb85ae10a97016a3decf7b09664b1c04c63bb31fdc156178ec2f`  
		Last Modified: Tue, 15 May 2018 10:57:47 GMT  
		Size: 5.8 MB (5793738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a19a643af3f1849bbdf1777a8d1fd4fc89e7954afdde91d47a2e3e4fc870b5`  
		Last Modified: Tue, 15 May 2018 10:57:48 GMT  
		Size: 21.5 MB (21500851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146580cda8c474d91ae43571872e7fe494bca3daf4435e7d340c4fbc0e31097a`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ba1421fd9b67d486093e5a7db08a48b2b62f0af6d13f638cd50937dfd02b08`  
		Last Modified: Tue, 15 May 2018 10:57:46 GMT  
		Size: 701.9 KB (701937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f94982f36a4572ae3557f9640d8d258f2622870776dc46cf607f180bd8a20`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7967f353284e315ec9ac68d3b44e7a259cb1e11efdca5fd1e3460af8621ed1`  
		Last Modified: Tue, 15 May 2018 10:58:25 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:6422241eac4f4bbd68894d7ac71e622d4befd61133ee536182c2dfa84bc1657b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256551051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8977b4153fdb0e9b8a9a68643b724515aa43d6db157d507956098f25538481b6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:04:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:05:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:55:11 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:55:11 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:55:12 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:55:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:55:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:55:47 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:55:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:55:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:55:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:55:55 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:57:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:57:31 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:57:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:57:33 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c6a364e18bde16447984bcbc76f9f04d3dc8702e9b0d0ce7dbad52323ba2e`  
		Last Modified: Tue, 15 May 2018 11:04:39 GMT  
		Size: 122.2 MB (122202299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf501b32796c19d43b56ab9bb6aca3b3bdb3ef707b66ed45ad003003596b3fa7`  
		Last Modified: Tue, 15 May 2018 11:04:00 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf9e30eab32c34ad747510d0de2420e3de249aabe90461ee59b68eff90f5428`  
		Last Modified: Tue, 15 May 2018 13:59:47 GMT  
		Size: 6.1 MB (6089613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b1243f92323a931b8f89c326699953b073fcfb33711199afcca10666aa0f7`  
		Last Modified: Tue, 15 May 2018 13:59:49 GMT  
		Size: 21.5 MB (21500881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f95d12e8efb0a2188f25249a4c2e635951485fd03ae9e8f407a3244da17f6`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9850dc49d7ce7ed9f5c11d3bc609f74f9370e29a4349dd4f4915987d97d54a0`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 701.6 KB (701596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5999f89077a22209e052216c17565aacfd6a3d4094dc4ce95e17ad7f1450d89`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e928bf1a663890c73875db6f9d976f7eaac7c5b75bcd3bb339d7cf7c2c9568c`  
		Last Modified: Tue, 15 May 2018 14:00:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5a18c27d7b175c354e2616df567cea71ddb5064827e0eb857fffc141ba896c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280471708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df184427f8b23f189814d57ff08bc395b7d3bb668e0ee8e1c3a4a5304101fed`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:06:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:06:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:22:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 11:39:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:39:29 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:44:00 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:44:07 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:44:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:44:23 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:44:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:44:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:44:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:44:33 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af6543ea0fe065b8b039ef338aa11ccccc8921a78894d40c0594a1821e8c89`  
		Last Modified: Sat, 05 May 2018 11:40:01 GMT  
		Size: 10.8 MB (10783664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84eefdd216b0b19250871d762b9dd06baa7cb1a1a4094f165e32161cc7269754`  
		Last Modified: Sat, 05 May 2018 11:39:59 GMT  
		Size: 4.6 MB (4555015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9190d0da67a487e6c5843ce48a07d4ec97543307ec18377f260f2af44b6e5`  
		Last Modified: Sat, 05 May 2018 11:40:43 GMT  
		Size: 51.6 MB (51554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c73c3f41ff89acfb3c754b128bbef083614c69b98d854ff9516b73e3d60f19`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 900.1 KB (900067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237d1c179a1e888bca57623514704a7021e1f112394345cbc71d30f8bce6ce9`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915a66a3aad8071041f85c2aeb8fc305872236c3a87afabd341e73cf254f97e1`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ef60a567cb5fa284fa4b1196737fe1c18b7a7a1810511c8afd93259517990`  
		Last Modified: Tue, 15 May 2018 12:17:31 GMT  
		Size: 134.0 MB (134030401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccac42f1e79dbb16d86256590b009bf58506365e99cbd39583b07d5b1bb12bf`  
		Last Modified: Tue, 15 May 2018 12:16:54 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725924c7c66481707acd4481b041031d0d5e369ad8ea657d65232b1a5c0597ce`  
		Last Modified: Tue, 15 May 2018 13:45:48 GMT  
		Size: 10.1 MB (10128212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d376d9f7ae4dad290fe318d53ef369224b381ec28eb83cf81fad8d40583622`  
		Last Modified: Tue, 15 May 2018 13:45:49 GMT  
		Size: 21.5 MB (21500828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7948d79b56d9d4e2e57e15cb1df77e0bd0c9175ac30fea09a2eb3d275056ea`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a92a7ab856fc78763321ee2eda43c65b4b77fc9c9cc5b48e5e220d266242cf`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 701.6 KB (701557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6384418fd3f68d7c8e1dc3daeab9015a916d9c7924cdf61a28537a86eacfd0`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7333ff245ef83168f5ac2abfb76ef27f702b9daa14b089f51ef823aa31ec1`  
		Last Modified: Tue, 15 May 2018 13:46:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:67093303993efb3999cff6ca8f80c30e6b19541f9296c83104465e1bb578b7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264007746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e7e9546675b8460049b8fe57057be9f23c95531d822673f4d0ef22b9681955`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:00:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:00:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 11:00:44 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:00:45 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 11:00:47 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 11:00:55 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 11:00:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:00:59 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 11:01:16 GMT
RUN gem install bundler
# Tue, 15 May 2018 11:01:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 11:01:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 11:01:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:01:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 11:01:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 11:02:09 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 11:02:10 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 11:02:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 11:02:12 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 11:02:13 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 11:02:14 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0356d4e9531743ac3cc25d716fe318611d9d96c66d14f4b99a5bc2741b63342`  
		Last Modified: Tue, 15 May 2018 09:44:00 GMT  
		Size: 124.1 MB (124072333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1333145b576488a1f978a8224418bb0539556b1d9a6a9f8be06821475a8771b`  
		Last Modified: Tue, 15 May 2018 09:43:16 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f4a70b738b1a46f9e3944a12cc65e0c0f06778b0499a2f00b5088b7a30cdf`  
		Last Modified: Tue, 15 May 2018 11:03:36 GMT  
		Size: 6.7 MB (6688503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8893964ebe86525be186dfb4f054e8a45dcb367e6c767affcfcd24580982735d`  
		Last Modified: Tue, 15 May 2018 11:03:38 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd3f3f85cc807a192bee8bc705fcbf515d0d315045a50cec592559d0a7b4e8e`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc9e97006d2ee40a5680e16e3f7aff96bea49af6c97f9adff375f36e8ca472`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 701.7 KB (701735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9260a22d802e7c886b582484787fa28bbb146fc3015e1b99e559aaa577e11`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c04641af96806dba79f6c7b9980ed80cdd6f2764fac51135a5647183ba90ef`  
		Last Modified: Tue, 15 May 2018 11:04:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jdk`

```console
$ docker pull jruby@sha256:94db977571ef2a0dff8cb20042532dcb8648a898ecdbd3e076ba2ae71be46484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:6086f74191bae47d7cba270cae3b1310918d673280f86c0806d7ca1e0ea27f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276188011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5721b35d8626807db3190b1cd592ed06de1346730b37b1ec30a7deafa45e37`
-	Default Command: `["irb"]`

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
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:16:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:18:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:18:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:38:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:38:48 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:38:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:39:04 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:39:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:39:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:39:09 GMT
CMD ["irb"]
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
	-	`sha256:0539c80a02be3183761cc42f94a4f9cd5e3bc455f4ac3f4ecaab6d476b7fe330`  
		Last Modified: Tue, 17 Jul 2018 06:55:33 GMT  
		Size: 133.9 MB (133944795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fefc6dcf80a7be81ef627ec6ba8449a8ee7958a026ef947f99cac250af8f53`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc6c1dc80f2b6eceb1275a4a5223dc709d4f78039b08d0fa05a3b14f40d84c9`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 6.7 MB (6732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc8a30726547692166f2fb2c69439ce8e70c4c311676bf92511aaaa67bf20a0`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 23.0 MB (22969439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f555b89390abdc57a1cd2a96a7652271342fd9a37f95e76f5272655063f08bf`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2ac1f33909464c6680b390e7975a727ff90338712464991f851d8f3bb867ee`  
		Last Modified: Tue, 17 Jul 2018 16:42:36 GMT  
		Size: 950.8 KB (950779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69adffc5a37cc6784e8255fc60a69164b70d11b46f036cab3912541f525edeef`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:92b9d73dcc49bcb1664b31ad814ee34044be6abe14525f927f5b2947096dcde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258412526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a076c189c63994f4724cfa5ecbc3a0f411ca0f932143107b8978b571726682a1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:40:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:40:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:42:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:42:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:41:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:41:17 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:41:18 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:41:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:41:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:41:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:43:37 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:43:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:43:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:43:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff07a7047bdbf3f1d34d007232ddb301a8ad8db690f9a765f2a2f4b46f4bae`  
		Last Modified: Tue, 17 Jul 2018 12:02:46 GMT  
		Size: 48.3 MB (48264515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa7a9c7103cb994282063146174006eaee187ef98c987e9f5cce7f524b4a63`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 884.6 KB (884609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec7d77d5d2b9587ea82e01b70cf5faed67e65fb33b15277e90e83d4b7ee056`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a8bc778ac2bb89ef08adaf7b656e04ed98befa0b462849942000043558c09`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5149660713a88af67534d8f760ffe762a996e66b55fc5f62ec92bbd4eb368cda`  
		Last Modified: Tue, 17 Jul 2018 12:54:28 GMT  
		Size: 121.3 MB (121284482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f936bb411f35835ed941e85f832d8c7b6cf3044f746d06f3fa012a670f31504`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 246.7 KB (246745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f04f331ee021a59bf78469fc7f94702e6b2c4008a07466fb56aceafcb1560`  
		Last Modified: Tue, 17 Jul 2018 14:46:19 GMT  
		Size: 5.8 MB (5813847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8275aed40cc2631d267ce12b8ad71209a941447391c76338316c45ccacce65`  
		Last Modified: Tue, 17 Jul 2018 14:46:21 GMT  
		Size: 23.0 MB (22969408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81db98cad1dd3d27df1dedfd8d6fa7670c5c458700d3efbcbf393a0a3b2d217`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642883dfe4f28d01a1ea55a0da945d96b570285673cda28793a694c85f4b1dcc`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 951.2 KB (951231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48ef7ee6735c7e528c296d05fc48a7e03884dde1bb05b6b4ba540960bcf08`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:a1fa295c39e68a4b7d1433330e01d39c33f3559ef45af99770830924e7a74552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258260435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236b2cc24d35568d2bfb21aff6e4a7c97e3b174b316c0d239cdaff15ce329afb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:18:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:18:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:18:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 20:18:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:18:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:18:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:23:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:57:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:57:29 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:57:37 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:58:01 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:58:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:58:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:58:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c82876ce7ec36daabd21b906519990de7cdad2450cdc228db6162b05abb10e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 877.7 KB (877692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c737e43b53477a18c547197a329e7951a247fe7622f5b78515eba57b2c2567e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53323c3b55cd768b0fc7ec5773a27a88654aa40cf977423dc9b560eca67c3517`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b86007424c9064dc6bfddff4edf7810757ceb9fc05d00685e5aa185c7d1228`  
		Last Modified: Tue, 17 Jul 2018 20:50:42 GMT  
		Size: 122.2 MB (122200534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5a35207261cf735156cb90c19ec96298ed1879a2917ac2d5f1d17871db36d8`  
		Last Modified: Tue, 17 Jul 2018 20:50:05 GMT  
		Size: 246.7 KB (246659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0c3e8c10a528a28e57c934e59b864e429bec2168a17c5fcbb89f31aaea097`  
		Last Modified: Tue, 17 Jul 2018 22:03:51 GMT  
		Size: 6.1 MB (6108838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd6bdc83307cbae9eae9adcf237dc28b13b24762105f682ef6440ec5cc2e1c`  
		Last Modified: Tue, 17 Jul 2018 22:03:56 GMT  
		Size: 23.0 MB (22969487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c572944cd95018f856af72a30efc8c0420f0695b54fbea22a8a34b6de02e441c`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4208ce99c91debd70e959ddc49c92469501a6e348b7ad9bd033b9e012d1959bf`  
		Last Modified: Tue, 17 Jul 2018 22:03:49 GMT  
		Size: 950.8 KB (950828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdbbbb096429e3dbe8b961c38a4cff2ded67c77eaae255d664412941e1c9c3b`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; 386

```console
$ docker pull jruby@sha256:212f29dfda14a947ac636f520862b29038a3626c691275d54b09bdf8f84868c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282151598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436aac624258429715877ff302cfe4e3ad259860ae4527bd19058948ce2f0fa8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:15:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:15:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:16:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:17:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:17:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:58:16 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:58:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:58:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:58:45 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:58:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:58:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e0f0ac283eb8aa7d523e3e9b705fe3e5c4842a08feb40a292deb20e20f87d`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 899.9 KB (899946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488ddd1b3028720563d49043ece69c59955a47731300f9ee501f3ec667520253`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297119e80f06eeab50446e3893b93f210078205d6b6cfd8c3f43d7717c92f17`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4923e708a90e1e738d939b1c0fa1ad147425fe4158a1c8a4c17e1611a76a7b7f`  
		Last Modified: Tue, 17 Jul 2018 18:45:46 GMT  
		Size: 134.0 MB (133996397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6425f27f2d3b622aaa5d994297ec260e71c03f7e3754e899a9338f4d200005`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 246.7 KB (246732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb054e417c44ee3f0830aad307979db0e1bc1f6d2c23cac6ff16085939437884`  
		Last Modified: Tue, 17 Jul 2018 20:01:45 GMT  
		Size: 10.1 MB (10149216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba60bcc892fe61de633e00a65de83991ff8c993e34e4bc8af0ca0a99879e8bd`  
		Last Modified: Tue, 17 Jul 2018 20:01:46 GMT  
		Size: 23.0 MB (22969479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c8e9160226fc9639f1b4629716647b1133310bd2e566d1e67e1d1087117938`  
		Last Modified: Tue, 17 Jul 2018 20:01:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662a4b0dbaf07a563ec42b908f9264e6fcaa9b7ea4b7dfb0db61305b42cc569`  
		Last Modified: Tue, 17 Jul 2018 20:01:41 GMT  
		Size: 950.8 KB (950784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607de04a6da3f58e78a72e7140e0738f7068ef79c44783691260d8855e9d0177`  
		Last Modified: Tue, 17 Jul 2018 20:01:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:35985e64cc4055375d3b5f8faf5a7e3be9a3154cb4efca64cf7836e84d4a3162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265689771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f4722ee83c1df7bdb594b7f97642cc104d13fb2ebf817dbb9adbf4c9436e0c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:02:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:02:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 17:02:56 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:03:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:03:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:13:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:14:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:37:20 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:37:24 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:37:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:37:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:37:53 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:38:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2868b335fa3529e1c024e3f109aa32681130cb83eaadc6c37f7adf1b2d63e6`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 50.1 MB (50061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66b91bddeea31add164312d699dabd8b8f8759b9fab1d447a8af10c649be133`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 886.5 KB (886451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c99fd65bb6207df4ac22db65d7058f0f28446e0aa6f7bb23048b43c657f6a5`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9f281492e2ef4ec594677e65b540f607ca66cfa25f7e157bff38d06a2af7c0`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364b7234b3003697e605c1290a30a7a9174ed95bb698654977db46c7c64759d5`  
		Last Modified: Tue, 17 Jul 2018 17:41:22 GMT  
		Size: 124.0 MB (124039682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e72d05bb0932229acf498d0e5910dc4df379a470bb6f1133fb8ca726838db58`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 246.7 KB (246677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eda4e5467a5c41962f5e3f5b68f4c342d518e32ce44e81051846bfbbdf49c0`  
		Last Modified: Tue, 17 Jul 2018 18:41:16 GMT  
		Size: 6.7 MB (6706677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71485c8e822b32fbd5697fc7cb7e1576dbab0d54c037b5a0ff0aa473b2d18ffb`  
		Last Modified: Tue, 17 Jul 2018 18:41:18 GMT  
		Size: 23.0 MB (22969584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827e0adbb286c684503b1f929fc574e701e83ae550466969adbb0a1609d769a`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c814a7226df34501862cea4d1385c7a614938e7a078de6206d3fad10f716e53d`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 950.9 KB (950945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2860a09e8e229474f91b79f5c4aa2f7ec9e3d28aaacbd1ee8574e39ace4731f`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jdk-alpine`

```console
$ docker pull jruby@sha256:36ecbdd4b257a84a82cc1532b05bd74742bb3d34cb475d0f0c5192bb9493e5bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:def6be81e4c2a728515832a6b3a1c614db7c272209b28fa86d9fc847798baa57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ad717235e88350a8af3816f64d24b1766bfd887b4704b507e4e6c7b87ae39`
-	Default Command: `["irb"]`

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
# Wed, 11 Jul 2018 01:52:44 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:49 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:50 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:53:07 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:53:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:53:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:53:09 GMT
CMD ["irb"]
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
	-	`sha256:fbc4e3d892a24e369160cf9685b504eb3bf5124bf8ba7d447541baf8fb2c5d50`  
		Last Modified: Wed, 11 Jul 2018 01:56:16 GMT  
		Size: 1.2 MB (1202707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56af18a98b29e92bed8ea8e166114f98f37fc5e38fa57bac62d2a9bdec460117`  
		Last Modified: Wed, 11 Jul 2018 01:56:18 GMT  
		Size: 24.3 MB (24334892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40759493dcb38d071b45cf9be494e87c3e19ea1e765af246906fc8201150ebe4`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10709235f4c916340ad04eaf6de71c320c97f8e3cb8f7cec2e1243375713df8d`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 948.6 KB (948639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6929e8a2030f99cc0cd40cf258427d0a660362975f05f23ec3fcc648e1489`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jre`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2-jre` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jre-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-onbuild`

```console
$ docker pull jruby@sha256:79cba0d1002928fd3123a84f5b3c15ec1a541788e19b273b323fb7afb31e2f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.2-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:a7b1bf9fdc561db7da623409bea342038113faf7f253afd87f44f5f040c1b707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274503447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33790b5bff9509fa63cc3ddd0ebccf976c362b94d209502fb6af357f335afadf`
-	Default Command: `["irb"]`

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
# Tue, 15 May 2018 01:52:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 01:52:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 01:52:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 01:52:54 GMT
RUN gem install bundler
# Tue, 15 May 2018 01:52:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 01:52:56 GMT
CMD ["irb"]
# Tue, 15 May 2018 01:53:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 01:53:03 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:756487786386237a3c062e505d50213a6b7840e4c1e022aaee944878c89bae74`  
		Last Modified: Tue, 15 May 2018 01:54:34 GMT  
		Size: 6.7 MB (6711798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9168d725e06d8951aa2c65ca689d2234d11ad838c79188adda3605f31a7be`  
		Last Modified: Tue, 15 May 2018 01:54:32 GMT  
		Size: 21.5 MB (21500859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f45ade82cb9d80d98d5f8fc6a7c0a16720a5c85b8d01fd9b118d168a5f8ca`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0728877d1df17c4bbd48d562503466b5c90c46ad7397a81be5281dacef544144`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 701.5 KB (701544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730167d1da35d73ed82f6f0957230c3ce7bf599dcae194955cdb83fc93ccb82`  
		Last Modified: Tue, 15 May 2018 01:54:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1697d30d28e7d0c5dbc42330e3c50007d380a2ebee5bcfc9ffb3d0b9986613`  
		Last Modified: Tue, 15 May 2018 01:55:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:f9450d25ec85a34296eddef6d96e503f03b9a107d5f738e5db1225177ef9cc91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256742076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e0e1aee3a6232f629f7e2576e91a19d42842c9d1354b4f90eaacc5ff09f3`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:00:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:33:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:33:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:48:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:53:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 10:54:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 10:54:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:54:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 10:55:45 GMT
RUN gem install bundler
# Tue, 15 May 2018 10:55:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:55:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 10:55:47 GMT
CMD ["irb"]
# Tue, 15 May 2018 10:55:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 10:55:59 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 10:56:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b447c1a942c4bbb82a6222d7f5abc3936dfb4b80c399d470515f9956cbc4e93`  
		Last Modified: Sat, 05 May 2018 09:13:26 GMT  
		Size: 9.8 MB (9842386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b217d1eda0719b1e84281d8b64839a9a234ee6976bc53a2a031453e60beb2`  
		Last Modified: Sat, 05 May 2018 09:13:23 GMT  
		Size: 4.2 MB (4153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705c6d41296d908acb07f9570f488678bb308e048c5039ba5d5c8f2773356e8`  
		Last Modified: Sat, 05 May 2018 09:14:04 GMT  
		Size: 48.2 MB (48239621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d5ed7613dd847b094cda955417c40e86b138585a75ec42baa02847940b15c`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 884.8 KB (884794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8721347d68d66c62cb3ef077d9d5a4e72c2ab8344791c0656110cc9ce4e1b`  
		Last Modified: Sat, 05 May 2018 09:59:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a4190394a36f501d1696a8bfa231634945a3159522d3953cf1f9fdbb3ca8b2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7cd6cb39e1c99635a0327f17e9d76ee2e8100fae6c27f225c7a2179a06a5ae`  
		Last Modified: Tue, 15 May 2018 10:24:53 GMT  
		Size: 121.3 MB (121313616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4a8cb06170165cdb0223112d476988b90fbe87a3df4958ebcb609cb6228caa`  
		Last Modified: Tue, 15 May 2018 10:24:20 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a9e4ab2d30fb85ae10a97016a3decf7b09664b1c04c63bb31fdc156178ec2f`  
		Last Modified: Tue, 15 May 2018 10:57:47 GMT  
		Size: 5.8 MB (5793738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a19a643af3f1849bbdf1777a8d1fd4fc89e7954afdde91d47a2e3e4fc870b5`  
		Last Modified: Tue, 15 May 2018 10:57:48 GMT  
		Size: 21.5 MB (21500851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146580cda8c474d91ae43571872e7fe494bca3daf4435e7d340c4fbc0e31097a`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ba1421fd9b67d486093e5a7db08a48b2b62f0af6d13f638cd50937dfd02b08`  
		Last Modified: Tue, 15 May 2018 10:57:46 GMT  
		Size: 701.9 KB (701937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f94982f36a4572ae3557f9640d8d258f2622870776dc46cf607f180bd8a20`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7967f353284e315ec9ac68d3b44e7a259cb1e11efdca5fd1e3460af8621ed1`  
		Last Modified: Tue, 15 May 2018 10:58:25 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:6422241eac4f4bbd68894d7ac71e622d4befd61133ee536182c2dfa84bc1657b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256551051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8977b4153fdb0e9b8a9a68643b724515aa43d6db157d507956098f25538481b6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:04:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:05:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:55:11 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:55:11 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:55:12 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:55:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:55:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:55:47 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:55:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:55:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:55:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:55:55 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:57:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:57:31 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:57:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:57:33 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c6a364e18bde16447984bcbc76f9f04d3dc8702e9b0d0ce7dbad52323ba2e`  
		Last Modified: Tue, 15 May 2018 11:04:39 GMT  
		Size: 122.2 MB (122202299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf501b32796c19d43b56ab9bb6aca3b3bdb3ef707b66ed45ad003003596b3fa7`  
		Last Modified: Tue, 15 May 2018 11:04:00 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf9e30eab32c34ad747510d0de2420e3de249aabe90461ee59b68eff90f5428`  
		Last Modified: Tue, 15 May 2018 13:59:47 GMT  
		Size: 6.1 MB (6089613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b1243f92323a931b8f89c326699953b073fcfb33711199afcca10666aa0f7`  
		Last Modified: Tue, 15 May 2018 13:59:49 GMT  
		Size: 21.5 MB (21500881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f95d12e8efb0a2188f25249a4c2e635951485fd03ae9e8f407a3244da17f6`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9850dc49d7ce7ed9f5c11d3bc609f74f9370e29a4349dd4f4915987d97d54a0`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 701.6 KB (701596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5999f89077a22209e052216c17565aacfd6a3d4094dc4ce95e17ad7f1450d89`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e928bf1a663890c73875db6f9d976f7eaac7c5b75bcd3bb339d7cf7c2c9568c`  
		Last Modified: Tue, 15 May 2018 14:00:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5a18c27d7b175c354e2616df567cea71ddb5064827e0eb857fffc141ba896c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280471708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df184427f8b23f189814d57ff08bc395b7d3bb668e0ee8e1c3a4a5304101fed`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:06:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:06:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:22:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 11:39:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:39:29 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:44:00 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:44:07 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:44:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:44:23 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:44:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:44:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:44:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:44:33 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af6543ea0fe065b8b039ef338aa11ccccc8921a78894d40c0594a1821e8c89`  
		Last Modified: Sat, 05 May 2018 11:40:01 GMT  
		Size: 10.8 MB (10783664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84eefdd216b0b19250871d762b9dd06baa7cb1a1a4094f165e32161cc7269754`  
		Last Modified: Sat, 05 May 2018 11:39:59 GMT  
		Size: 4.6 MB (4555015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9190d0da67a487e6c5843ce48a07d4ec97543307ec18377f260f2af44b6e5`  
		Last Modified: Sat, 05 May 2018 11:40:43 GMT  
		Size: 51.6 MB (51554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c73c3f41ff89acfb3c754b128bbef083614c69b98d854ff9516b73e3d60f19`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 900.1 KB (900067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237d1c179a1e888bca57623514704a7021e1f112394345cbc71d30f8bce6ce9`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915a66a3aad8071041f85c2aeb8fc305872236c3a87afabd341e73cf254f97e1`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ef60a567cb5fa284fa4b1196737fe1c18b7a7a1810511c8afd93259517990`  
		Last Modified: Tue, 15 May 2018 12:17:31 GMT  
		Size: 134.0 MB (134030401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccac42f1e79dbb16d86256590b009bf58506365e99cbd39583b07d5b1bb12bf`  
		Last Modified: Tue, 15 May 2018 12:16:54 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725924c7c66481707acd4481b041031d0d5e369ad8ea657d65232b1a5c0597ce`  
		Last Modified: Tue, 15 May 2018 13:45:48 GMT  
		Size: 10.1 MB (10128212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d376d9f7ae4dad290fe318d53ef369224b381ec28eb83cf81fad8d40583622`  
		Last Modified: Tue, 15 May 2018 13:45:49 GMT  
		Size: 21.5 MB (21500828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7948d79b56d9d4e2e57e15cb1df77e0bd0c9175ac30fea09a2eb3d275056ea`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a92a7ab856fc78763321ee2eda43c65b4b77fc9c9cc5b48e5e220d266242cf`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 701.6 KB (701557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6384418fd3f68d7c8e1dc3daeab9015a916d9c7924cdf61a28537a86eacfd0`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7333ff245ef83168f5ac2abfb76ef27f702b9daa14b089f51ef823aa31ec1`  
		Last Modified: Tue, 15 May 2018 13:46:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:67093303993efb3999cff6ca8f80c30e6b19541f9296c83104465e1bb578b7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264007746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e7e9546675b8460049b8fe57057be9f23c95531d822673f4d0ef22b9681955`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:00:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:00:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 11:00:44 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:00:45 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 11:00:47 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 11:00:55 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 11:00:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:00:59 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 11:01:16 GMT
RUN gem install bundler
# Tue, 15 May 2018 11:01:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 11:01:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 11:01:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:01:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 11:01:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 11:02:09 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 11:02:10 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 11:02:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 11:02:12 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 11:02:13 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 11:02:14 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0356d4e9531743ac3cc25d716fe318611d9d96c66d14f4b99a5bc2741b63342`  
		Last Modified: Tue, 15 May 2018 09:44:00 GMT  
		Size: 124.1 MB (124072333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1333145b576488a1f978a8224418bb0539556b1d9a6a9f8be06821475a8771b`  
		Last Modified: Tue, 15 May 2018 09:43:16 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f4a70b738b1a46f9e3944a12cc65e0c0f06778b0499a2f00b5088b7a30cdf`  
		Last Modified: Tue, 15 May 2018 11:03:36 GMT  
		Size: 6.7 MB (6688503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8893964ebe86525be186dfb4f054e8a45dcb367e6c767affcfcd24580982735d`  
		Last Modified: Tue, 15 May 2018 11:03:38 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd3f3f85cc807a192bee8bc705fcbf515d0d315045a50cec592559d0a7b4e8e`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc9e97006d2ee40a5680e16e3f7aff96bea49af6c97f9adff375f36e8ca472`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 701.7 KB (701735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9260a22d802e7c886b582484787fa28bbb146fc3015e1b99e559aaa577e11`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c04641af96806dba79f6c7b9980ed80cdd6f2764fac51135a5647183ba90ef`  
		Last Modified: Tue, 15 May 2018 11:04:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:b1fdd449700e174533487c68b4916d4611b1ee1a55da3601c3bec55bb4f61c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:63e764561e91d30351a3df2f3128cb4b4c5625d314ed2c9e4bc0e422b31e457a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83490535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d970c09f57fffc85b2fdce92961d6c3799a7b25a2cb0e1cd42dee0cd543aba7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 00:35:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:52:01 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:01 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:07 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:08 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:52:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:52:25 GMT
CMD ["irb"]
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
	-	`sha256:391a6a6b36513d84d55cbbe7e13bca7e92fbf257d910a5255f2b7bc9fcff4edf`  
		Last Modified: Wed, 11 Jul 2018 00:41:21 GMT  
		Size: 54.8 MB (54798327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768f7b5672ae13addfe4fb886657b53522203e738d76fe9b99d60d7b999264ed`  
		Last Modified: Wed, 11 Jul 2018 01:53:44 GMT  
		Size: 1.2 MB (1200994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69f0ca6425c2c65f055f23ec193305ab1372037c4629ed6da20688553ca297`  
		Last Modified: Wed, 11 Jul 2018 01:53:45 GMT  
		Size: 24.3 MB (24335481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdff541f8d31b8b4c633d68ea2504ea4aca288f93a6c5c74db868ee51eb7077`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397fb3bfcb875b5926fbabe0d380dd7190c67736cb6f69b0638b93f76ddfadf`  
		Last Modified: Wed, 11 Jul 2018 01:53:41 GMT  
		Size: 948.6 KB (948595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13acd90b0b064c0039c86a1bb384707df69b7227b16e1cb30a89343149fe844`  
		Last Modified: Wed, 11 Jul 2018 01:53:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:94db977571ef2a0dff8cb20042532dcb8648a898ecdbd3e076ba2ae71be46484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:6086f74191bae47d7cba270cae3b1310918d673280f86c0806d7ca1e0ea27f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276188011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5721b35d8626807db3190b1cd592ed06de1346730b37b1ec30a7deafa45e37`
-	Default Command: `["irb"]`

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
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:16:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:18:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:18:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:38:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:38:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:38:48 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:38:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:39:04 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:39:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:39:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:39:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:39:09 GMT
CMD ["irb"]
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
	-	`sha256:0539c80a02be3183761cc42f94a4f9cd5e3bc455f4ac3f4ecaab6d476b7fe330`  
		Last Modified: Tue, 17 Jul 2018 06:55:33 GMT  
		Size: 133.9 MB (133944795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fefc6dcf80a7be81ef627ec6ba8449a8ee7958a026ef947f99cac250af8f53`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 246.7 KB (246694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc6c1dc80f2b6eceb1275a4a5223dc709d4f78039b08d0fa05a3b14f40d84c9`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 6.7 MB (6732252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc8a30726547692166f2fb2c69439ce8e70c4c311676bf92511aaaa67bf20a0`  
		Last Modified: Tue, 17 Jul 2018 16:42:39 GMT  
		Size: 23.0 MB (22969439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f555b89390abdc57a1cd2a96a7652271342fd9a37f95e76f5272655063f08bf`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2ac1f33909464c6680b390e7975a727ff90338712464991f851d8f3bb867ee`  
		Last Modified: Tue, 17 Jul 2018 16:42:36 GMT  
		Size: 950.8 KB (950779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69adffc5a37cc6784e8255fc60a69164b70d11b46f036cab3912541f525edeef`  
		Last Modified: Tue, 17 Jul 2018 16:42:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:92b9d73dcc49bcb1664b31ad814ee34044be6abe14525f927f5b2947096dcde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258412526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a076c189c63994f4724cfa5ecbc3a0f411ca0f932143107b8978b571726682a1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 11:50:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:40:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:40:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:40:58 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:40:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:42:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:42:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:41:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:41:17 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:41:18 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:41:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:41:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:41:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:43:37 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:43:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:43:43 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:43:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:43:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ff07a7047bdbf3f1d34d007232ddb301a8ad8db690f9a765f2a2f4b46f4bae`  
		Last Modified: Tue, 17 Jul 2018 12:02:46 GMT  
		Size: 48.3 MB (48264515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa7a9c7103cb994282063146174006eaee187ef98c987e9f5cce7f524b4a63`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 884.6 KB (884609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec7d77d5d2b9587ea82e01b70cf5faed67e65fb33b15277e90e83d4b7ee056`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a8bc778ac2bb89ef08adaf7b656e04ed98befa0b462849942000043558c09`  
		Last Modified: Tue, 17 Jul 2018 12:53:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5149660713a88af67534d8f760ffe762a996e66b55fc5f62ec92bbd4eb368cda`  
		Last Modified: Tue, 17 Jul 2018 12:54:28 GMT  
		Size: 121.3 MB (121284482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f936bb411f35835ed941e85f832d8c7b6cf3044f746d06f3fa012a670f31504`  
		Last Modified: Tue, 17 Jul 2018 12:53:57 GMT  
		Size: 246.7 KB (246745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f04f331ee021a59bf78469fc7f94702e6b2c4008a07466fb56aceafcb1560`  
		Last Modified: Tue, 17 Jul 2018 14:46:19 GMT  
		Size: 5.8 MB (5813847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8275aed40cc2631d267ce12b8ad71209a941447391c76338316c45ccacce65`  
		Last Modified: Tue, 17 Jul 2018 14:46:21 GMT  
		Size: 23.0 MB (22969408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81db98cad1dd3d27df1dedfd8d6fa7670c5c458700d3efbcbf393a0a3b2d217`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642883dfe4f28d01a1ea55a0da945d96b570285673cda28793a694c85f4b1dcc`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 951.2 KB (951231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48ef7ee6735c7e528c296d05fc48a7e03884dde1bb05b6b4ba540960bcf08`  
		Last Modified: Tue, 17 Jul 2018 14:46:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:a1fa295c39e68a4b7d1433330e01d39c33f3559ef45af99770830924e7a74552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258260435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236b2cc24d35568d2bfb21aff6e4a7c97e3b174b316c0d239cdaff15ce329afb`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:54:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:18:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:18:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:18:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:18:47 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 20:18:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:18:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:18:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:23:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:24:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:57:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:57:29 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:57:37 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:58:01 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:58:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:58:03 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:58:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:58:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a390be6b2f0349f7391582a305479410441bcb0329b8daa800d13f3921fd39b7`  
		Last Modified: Tue, 17 Jul 2018 15:11:46 GMT  
		Size: 48.0 MB (48003327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c82876ce7ec36daabd21b906519990de7cdad2450cdc228db6162b05abb10e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 877.7 KB (877692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c737e43b53477a18c547197a329e7951a247fe7622f5b78515eba57b2c2567e`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53323c3b55cd768b0fc7ec5773a27a88654aa40cf977423dc9b560eca67c3517`  
		Last Modified: Tue, 17 Jul 2018 20:50:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b86007424c9064dc6bfddff4edf7810757ceb9fc05d00685e5aa185c7d1228`  
		Last Modified: Tue, 17 Jul 2018 20:50:42 GMT  
		Size: 122.2 MB (122200534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5a35207261cf735156cb90c19ec96298ed1879a2917ac2d5f1d17871db36d8`  
		Last Modified: Tue, 17 Jul 2018 20:50:05 GMT  
		Size: 246.7 KB (246659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca0c3e8c10a528a28e57c934e59b864e429bec2168a17c5fcbb89f31aaea097`  
		Last Modified: Tue, 17 Jul 2018 22:03:51 GMT  
		Size: 6.1 MB (6108838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd6bdc83307cbae9eae9adcf237dc28b13b24762105f682ef6440ec5cc2e1c`  
		Last Modified: Tue, 17 Jul 2018 22:03:56 GMT  
		Size: 23.0 MB (22969487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c572944cd95018f856af72a30efc8c0420f0695b54fbea22a8a34b6de02e441c`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4208ce99c91debd70e959ddc49c92469501a6e348b7ad9bd033b9e012d1959bf`  
		Last Modified: Tue, 17 Jul 2018 22:03:49 GMT  
		Size: 950.8 KB (950828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdbbbb096429e3dbe8b961c38a4cff2ded67c77eaae255d664412941e1c9c3b`  
		Last Modified: Tue, 17 Jul 2018 22:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:212f29dfda14a947ac636f520862b29038a3626c691275d54b09bdf8f84868c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282151598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436aac624258429715877ff302cfe4e3ad259860ae4527bd19058948ce2f0fa8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:15:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:15:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:15:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:16:00 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:16:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:17:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:17:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:58:16 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:58:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:58:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:58:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:58:45 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:58:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:58:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:58:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:58:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612e0f0ac283eb8aa7d523e3e9b705fe3e5c4842a08feb40a292deb20e20f87d`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 899.9 KB (899946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488ddd1b3028720563d49043ece69c59955a47731300f9ee501f3ec667520253`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c297119e80f06eeab50446e3893b93f210078205d6b6cfd8c3f43d7717c92f17`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4923e708a90e1e738d939b1c0fa1ad147425fe4158a1c8a4c17e1611a76a7b7f`  
		Last Modified: Tue, 17 Jul 2018 18:45:46 GMT  
		Size: 134.0 MB (133996397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6425f27f2d3b622aaa5d994297ec260e71c03f7e3754e899a9338f4d200005`  
		Last Modified: Tue, 17 Jul 2018 18:44:54 GMT  
		Size: 246.7 KB (246732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb054e417c44ee3f0830aad307979db0e1bc1f6d2c23cac6ff16085939437884`  
		Last Modified: Tue, 17 Jul 2018 20:01:45 GMT  
		Size: 10.1 MB (10149216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba60bcc892fe61de633e00a65de83991ff8c993e34e4bc8af0ca0a99879e8bd`  
		Last Modified: Tue, 17 Jul 2018 20:01:46 GMT  
		Size: 23.0 MB (22969479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c8e9160226fc9639f1b4629716647b1133310bd2e566d1e67e1d1087117938`  
		Last Modified: Tue, 17 Jul 2018 20:01:43 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662a4b0dbaf07a563ec42b908f9264e6fcaa9b7ea4b7dfb0db61305b42cc569`  
		Last Modified: Tue, 17 Jul 2018 20:01:41 GMT  
		Size: 950.8 KB (950784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607de04a6da3f58e78a72e7140e0738f7068ef79c44783691260d8855e9d0177`  
		Last Modified: Tue, 17 Jul 2018 20:01:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:35985e64cc4055375d3b5f8faf5a7e3be9a3154cb4efca64cf7836e84d4a3162
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265689771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f4722ee83c1df7bdb594b7f97642cc104d13fb2ebf817dbb9adbf4c9436e0c`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:15:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:02:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:02:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:02:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:02:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 17:02:56 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:03:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:03:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:13:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:14:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:37:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:37:20 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:37:24 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:37:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:37:32 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:34 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:37:53 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:37:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:37:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:37:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:38:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2868b335fa3529e1c024e3f109aa32681130cb83eaadc6c37f7adf1b2d63e6`  
		Last Modified: Tue, 17 Jul 2018 14:17:42 GMT  
		Size: 50.1 MB (50061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66b91bddeea31add164312d699dabd8b8f8759b9fab1d447a8af10c649be133`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 886.5 KB (886451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c99fd65bb6207df4ac22db65d7058f0f28446e0aa6f7bb23048b43c657f6a5`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9f281492e2ef4ec594677e65b540f607ca66cfa25f7e157bff38d06a2af7c0`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364b7234b3003697e605c1290a30a7a9174ed95bb698654977db46c7c64759d5`  
		Last Modified: Tue, 17 Jul 2018 17:41:22 GMT  
		Size: 124.0 MB (124039682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e72d05bb0932229acf498d0e5910dc4df379a470bb6f1133fb8ca726838db58`  
		Last Modified: Tue, 17 Jul 2018 17:40:54 GMT  
		Size: 246.7 KB (246677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eda4e5467a5c41962f5e3f5b68f4c342d518e32ce44e81051846bfbbdf49c0`  
		Last Modified: Tue, 17 Jul 2018 18:41:16 GMT  
		Size: 6.7 MB (6706677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71485c8e822b32fbd5697fc7cb7e1576dbab0d54c037b5a0ff0aa473b2d18ffb`  
		Last Modified: Tue, 17 Jul 2018 18:41:18 GMT  
		Size: 23.0 MB (22969584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6827e0adbb286c684503b1f929fc574e701e83ae550466969adbb0a1609d769a`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c814a7226df34501862cea4d1385c7a614938e7a078de6206d3fad10f716e53d`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 950.9 KB (950945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2860a09e8e229474f91b79f5c4aa2f7ec9e3d28aaacbd1ee8574e39ace4731f`  
		Last Modified: Tue, 17 Jul 2018 18:41:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:36ecbdd4b257a84a82cc1532b05bd74742bb3d34cb475d0f0c5192bb9493e5bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:def6be81e4c2a728515832a6b3a1c614db7c272209b28fa86d9fc847798baa57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103ad717235e88350a8af3816f64d24b1766bfd887b4704b507e4e6c7b87ae39`
-	Default Command: `["irb"]`

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
# Wed, 11 Jul 2018 01:52:44 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 11 Jul 2018 01:52:45 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 11 Jul 2018 01:52:49 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 11 Jul 2018 01:52:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:52:50 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 11 Jul 2018 01:53:07 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 11 Jul 2018 01:53:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 11 Jul 2018 01:53:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 01:53:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 11 Jul 2018 01:53:09 GMT
CMD ["irb"]
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
	-	`sha256:fbc4e3d892a24e369160cf9685b504eb3bf5124bf8ba7d447541baf8fb2c5d50`  
		Last Modified: Wed, 11 Jul 2018 01:56:16 GMT  
		Size: 1.2 MB (1202707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56af18a98b29e92bed8ea8e166114f98f37fc5e38fa57bac62d2a9bdec460117`  
		Last Modified: Wed, 11 Jul 2018 01:56:18 GMT  
		Size: 24.3 MB (24334892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40759493dcb38d071b45cf9be494e87c3e19ea1e765af246906fc8201150ebe4`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10709235f4c916340ad04eaf6de71c320c97f8e3cb8f7cec2e1243375713df8d`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 948.6 KB (948639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c6929e8a2030f99cc0cd40cf258427d0a660362975f05f23ec3fcc648e1489`  
		Last Modified: Wed, 11 Jul 2018 01:56:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:79cba0d1002928fd3123a84f5b3c15ec1a541788e19b273b323fb7afb31e2f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:a7b1bf9fdc561db7da623409bea342038113faf7f253afd87f44f5f040c1b707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274503447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33790b5bff9509fa63cc3ddd0ebccf976c362b94d209502fb6af357f335afadf`
-	Default Command: `["irb"]`

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
# Tue, 15 May 2018 01:52:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 01:52:35 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 01:52:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 01:52:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 01:52:54 GMT
RUN gem install bundler
# Tue, 15 May 2018 01:52:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 01:52:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 01:52:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 01:52:56 GMT
CMD ["irb"]
# Tue, 15 May 2018 01:53:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 01:53:03 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 01:53:04 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:756487786386237a3c062e505d50213a6b7840e4c1e022aaee944878c89bae74`  
		Last Modified: Tue, 15 May 2018 01:54:34 GMT  
		Size: 6.7 MB (6711798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9168d725e06d8951aa2c65ca689d2234d11ad838c79188adda3605f31a7be`  
		Last Modified: Tue, 15 May 2018 01:54:32 GMT  
		Size: 21.5 MB (21500859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f45ade82cb9d80d98d5f8fc6a7c0a16720a5c85b8d01fd9b118d168a5f8ca`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0728877d1df17c4bbd48d562503466b5c90c46ad7397a81be5281dacef544144`  
		Last Modified: Tue, 15 May 2018 01:54:30 GMT  
		Size: 701.5 KB (701544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8730167d1da35d73ed82f6f0957230c3ce7bf599dcae194955cdb83fc93ccb82`  
		Last Modified: Tue, 15 May 2018 01:54:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1697d30d28e7d0c5dbc42330e3c50007d380a2ebee5bcfc9ffb3d0b9986613`  
		Last Modified: Tue, 15 May 2018 01:55:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:f9450d25ec85a34296eddef6d96e503f03b9a107d5f738e5db1225177ef9cc91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256742076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f141e0e1aee3a6232f629f7e2576e91a19d42842c9d1354b4f90eaacc5ff09f3`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:00:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:00:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:33:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:33:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:33:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:33:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:48:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:48:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:53:59 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 10:54:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 10:54:03 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 10:54:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:54:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 10:55:45 GMT
RUN gem install bundler
# Tue, 15 May 2018 10:55:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 10:55:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 10:55:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 10:55:47 GMT
CMD ["irb"]
# Tue, 15 May 2018 10:55:59 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 10:55:59 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 10:56:00 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 10:56:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b447c1a942c4bbb82a6222d7f5abc3936dfb4b80c399d470515f9956cbc4e93`  
		Last Modified: Sat, 05 May 2018 09:13:26 GMT  
		Size: 9.8 MB (9842386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0b217d1eda0719b1e84281d8b64839a9a234ee6976bc53a2a031453e60beb2`  
		Last Modified: Sat, 05 May 2018 09:13:23 GMT  
		Size: 4.2 MB (4153388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705c6d41296d908acb07f9570f488678bb308e048c5039ba5d5c8f2773356e8`  
		Last Modified: Sat, 05 May 2018 09:14:04 GMT  
		Size: 48.2 MB (48239621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d5ed7613dd847b094cda955417c40e86b138585a75ec42baa02847940b15c`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 884.8 KB (884794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da8721347d68d66c62cb3ef077d9d5a4e72c2ab8344791c0656110cc9ce4e1b`  
		Last Modified: Sat, 05 May 2018 09:59:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a4190394a36f501d1696a8bfa231634945a3159522d3953cf1f9fdbb3ca8b2`  
		Last Modified: Sat, 05 May 2018 09:59:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7cd6cb39e1c99635a0327f17e9d76ee2e8100fae6c27f225c7a2179a06a5ae`  
		Last Modified: Tue, 15 May 2018 10:24:53 GMT  
		Size: 121.3 MB (121313616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4a8cb06170165cdb0223112d476988b90fbe87a3df4958ebcb609cb6228caa`  
		Last Modified: Tue, 15 May 2018 10:24:20 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a9e4ab2d30fb85ae10a97016a3decf7b09664b1c04c63bb31fdc156178ec2f`  
		Last Modified: Tue, 15 May 2018 10:57:47 GMT  
		Size: 5.8 MB (5793738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a19a643af3f1849bbdf1777a8d1fd4fc89e7954afdde91d47a2e3e4fc870b5`  
		Last Modified: Tue, 15 May 2018 10:57:48 GMT  
		Size: 21.5 MB (21500851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146580cda8c474d91ae43571872e7fe494bca3daf4435e7d340c4fbc0e31097a`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ba1421fd9b67d486093e5a7db08a48b2b62f0af6d13f638cd50937dfd02b08`  
		Last Modified: Tue, 15 May 2018 10:57:46 GMT  
		Size: 701.9 KB (701937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f94982f36a4572ae3557f9640d8d258f2622870776dc46cf607f180bd8a20`  
		Last Modified: Tue, 15 May 2018 10:57:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7967f353284e315ec9ac68d3b44e7a259cb1e11efdca5fd1e3460af8621ed1`  
		Last Modified: Tue, 15 May 2018 10:58:25 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:6422241eac4f4bbd68894d7ac71e622d4befd61133ee536182c2dfa84bc1657b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256551051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8977b4153fdb0e9b8a9a68643b724515aa43d6db157d507956098f25538481b6`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:14:09 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:14:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:14:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:14:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:14:21 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:14:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:04:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:05:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:55:11 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:55:11 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:55:12 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:55:21 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:55:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:26 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:55:47 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:55:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:55:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:55:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:55:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:55:55 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:57:30 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:57:31 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:57:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:57:33 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:57:34 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee9236e2af68c9ae98f323593e7a832808ed6be16d6a198b45e06d42c26d5da`  
		Last Modified: Sat, 05 May 2018 10:31:01 GMT  
		Size: 48.0 MB (47986386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223cb7070547c589a9938d8095409c3e2028ce59826b67444710059c1f1beacb`  
		Last Modified: Sat, 05 May 2018 13:04:23 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded8c39202caa0f53225389347da925133b2acf9d7e904044dd13bd12b1213ea`  
		Last Modified: Sat, 05 May 2018 13:04:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212969d5c76f0046cd15128b34aca2f924c402abe15876e7b4af1fc52604319`  
		Last Modified: Sat, 05 May 2018 13:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040c6a364e18bde16447984bcbc76f9f04d3dc8702e9b0d0ce7dbad52323ba2e`  
		Last Modified: Tue, 15 May 2018 11:04:39 GMT  
		Size: 122.2 MB (122202299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf501b32796c19d43b56ab9bb6aca3b3bdb3ef707b66ed45ad003003596b3fa7`  
		Last Modified: Tue, 15 May 2018 11:04:00 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf9e30eab32c34ad747510d0de2420e3de249aabe90461ee59b68eff90f5428`  
		Last Modified: Tue, 15 May 2018 13:59:47 GMT  
		Size: 6.1 MB (6089613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b1243f92323a931b8f89c326699953b073fcfb33711199afcca10666aa0f7`  
		Last Modified: Tue, 15 May 2018 13:59:49 GMT  
		Size: 21.5 MB (21500881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67f95d12e8efb0a2188f25249a4c2e635951485fd03ae9e8f407a3244da17f6`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9850dc49d7ce7ed9f5c11d3bc609f74f9370e29a4349dd4f4915987d97d54a0`  
		Last Modified: Tue, 15 May 2018 13:59:45 GMT  
		Size: 701.6 KB (701596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5999f89077a22209e052216c17565aacfd6a3d4094dc4ce95e17ad7f1450d89`  
		Last Modified: Tue, 15 May 2018 13:59:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e928bf1a663890c73875db6f9d976f7eaac7c5b75bcd3bb339d7cf7c2c9568c`  
		Last Modified: Tue, 15 May 2018 14:00:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5a18c27d7b175c354e2616df567cea71ddb5064827e0eb857fffc141ba896c9b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280471708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df184427f8b23f189814d57ff08bc395b7d3bb668e0ee8e1c3a4a5304101fed`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 05 May 2018 11:06:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 11:06:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 11:07:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:21:59 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:22:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:22:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:22:01 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:22:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 11:39:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 11:39:29 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:44:00 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 13:44:00 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 13:44:07 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 13:44:07 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 13:44:23 GMT
RUN gem install bundler
# Tue, 15 May 2018 13:44:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 13:44:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 13:44:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 13:44:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 13:44:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 13:44:32 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 13:44:33 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af6543ea0fe065b8b039ef338aa11ccccc8921a78894d40c0594a1821e8c89`  
		Last Modified: Sat, 05 May 2018 11:40:01 GMT  
		Size: 10.8 MB (10783664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84eefdd216b0b19250871d762b9dd06baa7cb1a1a4094f165e32161cc7269754`  
		Last Modified: Sat, 05 May 2018 11:39:59 GMT  
		Size: 4.6 MB (4555015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc9190d0da67a487e6c5843ce48a07d4ec97543307ec18377f260f2af44b6e5`  
		Last Modified: Sat, 05 May 2018 11:40:43 GMT  
		Size: 51.6 MB (51554057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c73c3f41ff89acfb3c754b128bbef083614c69b98d854ff9516b73e3d60f19`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 900.1 KB (900067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c237d1c179a1e888bca57623514704a7021e1f112394345cbc71d30f8bce6ce9`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915a66a3aad8071041f85c2aeb8fc305872236c3a87afabd341e73cf254f97e1`  
		Last Modified: Sat, 05 May 2018 13:45:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ef60a567cb5fa284fa4b1196737fe1c18b7a7a1810511c8afd93259517990`  
		Last Modified: Tue, 15 May 2018 12:17:31 GMT  
		Size: 134.0 MB (134030401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccac42f1e79dbb16d86256590b009bf58506365e99cbd39583b07d5b1bb12bf`  
		Last Modified: Tue, 15 May 2018 12:16:54 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725924c7c66481707acd4481b041031d0d5e369ad8ea657d65232b1a5c0597ce`  
		Last Modified: Tue, 15 May 2018 13:45:48 GMT  
		Size: 10.1 MB (10128212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d376d9f7ae4dad290fe318d53ef369224b381ec28eb83cf81fad8d40583622`  
		Last Modified: Tue, 15 May 2018 13:45:49 GMT  
		Size: 21.5 MB (21500828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7948d79b56d9d4e2e57e15cb1df77e0bd0c9175ac30fea09a2eb3d275056ea`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a92a7ab856fc78763321ee2eda43c65b4b77fc9c9cc5b48e5e220d266242cf`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 701.6 KB (701557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6384418fd3f68d7c8e1dc3daeab9015a916d9c7924cdf61a28537a86eacfd0`  
		Last Modified: Tue, 15 May 2018 13:45:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7333ff245ef83168f5ac2abfb76ef27f702b9daa14b089f51ef823aa31ec1`  
		Last Modified: Tue, 15 May 2018 13:46:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:67093303993efb3999cff6ca8f80c30e6b19541f9296c83104465e1bb578b7c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.0 MB (264007746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e7e9546675b8460049b8fe57057be9f23c95531d822673f4d0ef22b9681955`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:40:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:41:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 14:32:45 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 14:32:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 14:32:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:32:51 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:32:53 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:32:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:00:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:00:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 11:00:44 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 11:00:45 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 15 May 2018 11:00:47 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 15 May 2018 11:00:55 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 15 May 2018 11:00:57 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:00:59 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 15 May 2018 11:01:16 GMT
RUN gem install bundler
# Tue, 15 May 2018 11:01:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 15 May 2018 11:01:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 15 May 2018 11:01:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 11:01:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 15 May 2018 11:01:24 GMT
CMD ["irb"]
# Tue, 15 May 2018 11:02:09 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 May 2018 11:02:10 GMT
WORKDIR /usr/src/app
# Tue, 15 May 2018 11:02:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 15 May 2018 11:02:12 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 15 May 2018 11:02:13 GMT
ONBUILD RUN bundle install --system
# Tue, 15 May 2018 11:02:14 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49669ce29c6ff5b318515a879172199a17519151b56113a98648e4e5b813e9b0`  
		Last Modified: Sat, 05 May 2018 11:03:44 GMT  
		Size: 10.0 MB (9975625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f38ff4299d23fa1e29678b39bfeb1549f444a54368faf8f03460a72b6951e8`  
		Last Modified: Sat, 05 May 2018 11:03:41 GMT  
		Size: 4.3 MB (4289600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe44d1ddd947a837b5faf3133ee67533bc10e5762c7abc5606ed72dea959632f`  
		Last Modified: Sat, 05 May 2018 11:04:41 GMT  
		Size: 50.0 MB (50028981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f108972424e64270dd3513c82fbceacd9b85ac95e1e99e43cb5140e2d4ed6a21`  
		Last Modified: Sat, 05 May 2018 15:13:06 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285fd4b68faacbc88d600ef509b7228255381b631448443d508df4713e6b6fe8`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2a94501130de72b5470e06ed1e7516bc34b6bb7fa400dbf49bb34f8f5a514d`  
		Last Modified: Sat, 05 May 2018 15:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0356d4e9531743ac3cc25d716fe318611d9d96c66d14f4b99a5bc2741b63342`  
		Last Modified: Tue, 15 May 2018 09:44:00 GMT  
		Size: 124.1 MB (124072333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1333145b576488a1f978a8224418bb0539556b1d9a6a9f8be06821475a8771b`  
		Last Modified: Tue, 15 May 2018 09:43:16 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f4a70b738b1a46f9e3944a12cc65e0c0f06778b0499a2f00b5088b7a30cdf`  
		Last Modified: Tue, 15 May 2018 11:03:36 GMT  
		Size: 6.7 MB (6688503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8893964ebe86525be186dfb4f054e8a45dcb367e6c767affcfcd24580982735d`  
		Last Modified: Tue, 15 May 2018 11:03:38 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd3f3f85cc807a192bee8bc705fcbf515d0d315045a50cec592559d0a7b4e8e`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc9e97006d2ee40a5680e16e3f7aff96bea49af6c97f9adff375f36e8ca472`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 701.7 KB (701735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b9260a22d802e7c886b582484787fa28bbb146fc3015e1b99e559aaa577e11`  
		Last Modified: Tue, 15 May 2018 11:03:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c04641af96806dba79f6c7b9980ed80cdd6f2764fac51135a5647183ba90ef`  
		Last Modified: Tue, 15 May 2018 11:04:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:latest`

```console
$ docker pull jruby@sha256:64c154302626791846de117a47ebdd724f4d5f6f9c6a3bcf074a835b18f81d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:latest` - linux; amd64

```console
$ docker pull jruby@sha256:d253e77951e413dad7e9a3ba8eacb49da9c2a041c80274e116243d3fa544da5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214207714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a2ab95c01c6528af0da240e1f54c51494e6d934ea8fb2a4f3f8b2f4cc0d170a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 16:37:37 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 16:37:37 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 16:37:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 16:37:41 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:37:42 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 16:37:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 16:37:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 16:37:58 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:38:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 16:38:00 GMT
CMD ["irb"]
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
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e638287b6bf92cef05d02660a59f641e4cd7ca387c064e0961f8e7d4ee2ed6c4`  
		Last Modified: Tue, 17 Jul 2018 16:39:57 GMT  
		Size: 6.7 MB (6702480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ef97e9e9c473e5a66151ed7ba71e505c5435882f567f56e08e14052db4b827`  
		Last Modified: Tue, 17 Jul 2018 16:39:55 GMT  
		Size: 23.0 MB (22968065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e357b7019196fe3d686e800d06929700b41db8acdc026330d26dcf0ab87ce8`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5eccc78a46fe57a257a0076f7d4cbcdb34ff139b16f85826f1e6a4292b5cdd`  
		Last Modified: Tue, 17 Jul 2018 16:39:52 GMT  
		Size: 950.8 KB (950795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9abf030025c932d9d0b53b005afba713af7f6d828e12ce920c2f50be582070`  
		Last Modified: Tue, 17 Jul 2018 16:39:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e9473e942a834444581a56cb214fbe68f1b8a5925c2e1325e02452fb8d8757d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200674429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd245abb0018a93e42250bf191002b6bcbcaedea2c7d401526afbfdbb2f3be96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:55:48 GMT
ADD file:bf9eafe81eb19079a2f2055b6727392afa823dfa125a4b1696537cf603115e52 in / 
# Tue, 17 Jul 2018 08:55:49 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:43:03 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:43:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:43:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 12:43:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 12:43:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 12:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:44:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 14:38:05 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:06 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 14:38:13 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 14:38:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 14:38:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:38:18 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 14:40:29 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 14:40:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 14:40:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:40:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 14:40:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e0468d51364430736eb1d0d85f3dd880c4bebe4015787330b6c9227843acb4a6`  
		Last Modified: Tue, 17 Jul 2018 09:08:05 GMT  
		Size: 44.0 MB (44033063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad0b2352b28fea9acd0f76fa8814e168b15f21efe51602d644728d229d9bab9`  
		Last Modified: Tue, 17 Jul 2018 12:02:04 GMT  
		Size: 9.8 MB (9810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864851e50dc1192bbdfa9be12666036d86148172f3ead845ee38c8033885580e`  
		Last Modified: Tue, 17 Jul 2018 12:02:03 GMT  
		Size: 4.2 MB (4153726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835e5acfad7d56ae63ec170f3775123ea187c36c77147a58b1c8f77e944c094`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 845.9 KB (845860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ef3838b860ad2926373a0286edee0ed0209f0c88b9a118784b44620950df6b`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d09f94a09042fc2888b335d412166395678b9f17e6d701e4fed6ef5dc4e8a4`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2665b05a1829ed89b86aaf86d37b3e976afdaf372bb7010d059caaa9319656bf`  
		Last Modified: Tue, 17 Jul 2018 12:56:37 GMT  
		Size: 111.9 MB (111881554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f81224ac9d1826fb3ab03a9719c9b63b3c04cdd299da6da4f619387dd8297d`  
		Last Modified: Tue, 17 Jul 2018 12:56:10 GMT  
		Size: 246.8 KB (246753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77611203cddc8b523a258de438332ba404ac7c7ca1905aee293e185b99c5739`  
		Last Modified: Tue, 17 Jul 2018 14:44:20 GMT  
		Size: 5.8 MB (5783242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546944e88414347c8bee4f1314f6ea65b47a930f9a034761868207e48bcf2e7`  
		Last Modified: Tue, 17 Jul 2018 14:44:23 GMT  
		Size: 23.0 MB (22968105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5709cf210923a6782e382c85b96da1d8db0d64d510368dfadc7b55c58dea5f34`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efa8deb0e399af56af48df6f6b0740ab8d593287e9ee7c038594ec44837554`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 951.2 KB (951230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8918636cd55eac86916e7e5146cbbd195a3e84c2f3209c8ceb03b582d9da382`  
		Last Modified: Tue, 17 Jul 2018 14:44:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:50a816ae172077a764c8457b88591fe61f6fffcd932aebc6103ff9188c8d63fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200723847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1228b77bb17ff6ff5f10193dc4ec52f02c336e4dc141d2e57a490719c514f578`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 20:24:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:24:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:25:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:25:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 20:25:05 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 20:25:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 20:25:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 20:32:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 20:32:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 21:54:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:54:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 21:54:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 21:54:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 21:54:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:54:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 21:55:16 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 21:55:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 21:55:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:55:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 21:55:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34353c71abcb0a3423640b466779e00b7da4d2d4ebcdd89f3611d4c936b14ef`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 839.2 KB (839215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a58de95103410c7614c07fbfbd2339f5b6657abdb8d847198c246eb1d753e3`  
		Last Modified: Tue, 17 Jul 2018 20:53:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523b8fda53cc2bfd5306eedc221a547f3dd09df4aa2eeb8b0a72da68eace3c68`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5804acfb7d370f667eea9e080156de2267faf0dd2c30e9dfa933d4457cc7c1c7`  
		Last Modified: Tue, 17 Jul 2018 20:54:06 GMT  
		Size: 112.7 MB (112736817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add94f64388c3a031d48a5ddbf0e85acbd9d9443a2f3ef1de1701438d83fe022`  
		Last Modified: Tue, 17 Jul 2018 20:53:29 GMT  
		Size: 246.7 KB (246663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5906eb9d945f9ae3e9df594e43974a88a19469dd474f9c413bd17a619c7ed3e2`  
		Last Modified: Tue, 17 Jul 2018 22:00:48 GMT  
		Size: 6.1 MB (6079135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0400921e676f2a2072ebb8ad82c252404f450cecf8d3d8360cc8395522f20c`  
		Last Modified: Tue, 17 Jul 2018 22:00:50 GMT  
		Size: 23.0 MB (22968099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a18d85cd21c9c51fccec26e033ff8cbe00d9602c1e154ef8cc539b9a0258910`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a291de2560b4ff958f034615ccfcb3a214cf2682d3759996d8832cc865ffb8b`  
		Last Modified: Tue, 17 Jul 2018 22:00:46 GMT  
		Size: 950.8 KB (950846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310d52450aba2f3fae14ccc986954e95c40346a26aa17f4e6f7f0f2440c85d83`  
		Last Modified: Tue, 17 Jul 2018 22:00:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; 386

```console
$ docker pull jruby@sha256:e9344ab6142912e0a78f86713e371499a8c4fe0633996343e173df0a3c31cf69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219048259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b8c152a0cecf46e6b8b4ae4604a4d4365b840a1ae03575cd248d9b1dd6f427`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:17:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 18:17:49 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 18:17:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 18:17:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 18:18:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 18:18:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 19:57:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 19:57:28 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 19:57:35 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 19:57:35 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 19:57:49 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 19:57:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 19:57:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:57:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 19:57:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3087334993bfdb6aa03f8ed812f7ae6285de6d3ee1e641556605f833bbce1659`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 861.8 KB (861753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04203d47c665fca1d30763face2370a9dff9ca3660fecf95d8d4714b48b65a38`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b367c5a41976187a4e0c9aa9bb164c3adda20df48f0023fb68e0c069249cde`  
		Last Modified: Tue, 17 Jul 2018 18:49:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f7042ff378fa5a2cf877bf0920020768339d7cd12d26b04fe287b934052f52`  
		Last Modified: Tue, 17 Jul 2018 18:50:34 GMT  
		Size: 122.6 MB (122555245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b87c9a1d68e48e4b206913b88a0e22030e8ed60053e730d8ec061f9a61f4f`  
		Last Modified: Tue, 17 Jul 2018 18:49:51 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c1f5ad212a7b5903282aaa1ca95b84093d3a9f2a8df4685119236ba9f26d54`  
		Last Modified: Tue, 17 Jul 2018 19:59:18 GMT  
		Size: 10.1 MB (10119319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f2eba8e038ea21da42c50e99abdf6a7dc7e854af42098ce6f1e4e2029f8384`  
		Last Modified: Tue, 17 Jul 2018 19:59:19 GMT  
		Size: 23.0 MB (22968084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161f783a1d95f26bf148def3eddc0af137089b701009d4d534b1e7d6b8e276d9`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61165454d1860680155dd376dad9060388e755a4428970f5dad190e2a467de`  
		Last Modified: Tue, 17 Jul 2018 19:59:14 GMT  
		Size: 950.8 KB (950781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5fad74d9f1a6a3ebd5e77364878bdde394c5832317fc978e617434a4823b16`  
		Last Modified: Tue, 17 Jul 2018 19:59:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; ppc64le

```console
$ docker pull jruby@sha256:30df1c6cccde39ea46991b492a05993a9c070caea9db62042ca9e320a1cc18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (206034694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bb3534536f7461f00131fb460224d24890f430d5678ae89a7f18d25e284cd4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:06 GMT
ADD file:692c439870d267b1a84ee3f6c44eb8a4a8342eef759391242613964e31747b24 in / 
# Tue, 17 Jul 2018 08:20:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:11:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:14:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 17:14:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 17:14:44 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 17:14:45 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 17:14:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 17:19:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:19:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:33:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:33:44 GMT
ENV JRUBY_VERSION=9.2.0.0
# Tue, 17 Jul 2018 18:33:46 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Tue, 17 Jul 2018 18:33:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 17 Jul 2018 18:34:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 17 Jul 2018 18:34:33 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Tue, 17 Jul 2018 18:34:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 17 Jul 2018 18:34:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:34:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 17 Jul 2018 18:34:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4d37f09838fa8757d02699f103191e672c0ecde0fcf23bb3706d1343831762fb`  
		Last Modified: Tue, 17 Jul 2018 08:25:32 GMT  
		Size: 45.6 MB (45594057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b62820a77d74ffab7785bdebc26e90a2ad429b6a23be61002b575c308f717e`  
		Last Modified: Tue, 17 Jul 2018 14:16:47 GMT  
		Size: 9.9 MB (9943597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71a75676a8f5e4b583626a0edc6859aa782e4d90d17995e1e8251146eedfbe4`  
		Last Modified: Tue, 17 Jul 2018 14:16:45 GMT  
		Size: 4.3 MB (4290027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415e630df1874ff5d01fdfd39e6dd1daf0d79e810326feedc8d715cd280882d`  
		Last Modified: Tue, 17 Jul 2018 17:42:54 GMT  
		Size: 848.5 KB (848525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a97408c8c4458ef417c27d1d27b63afa6b96f8849073d3493df09ce7030b3`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffc60b9a164d01c0612e2cba6587ea3ce873cfa01f69534f141df3753c060e`  
		Last Modified: Tue, 17 Jul 2018 17:42:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79f3eef95ad2555ca830a4a00a408c28185fcb5f778712fd4b91d812859536`  
		Last Modified: Tue, 17 Jul 2018 17:43:48 GMT  
		Size: 114.5 MB (114515233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef42e2aecab248bff13c4d75f0a3257f134e44843e8b8d792d30fbb660889f9`  
		Last Modified: Tue, 17 Jul 2018 17:42:53 GMT  
		Size: 246.7 KB (246667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc5161fda0bd50b995330b5440cbe0886b098189c04ef21b806a2b59736f693`  
		Last Modified: Tue, 17 Jul 2018 18:39:39 GMT  
		Size: 6.7 MB (6676704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60268a2576b92827d09d3782b1a41cf0cd127272eed3c09bd713ac95e7189ecf`  
		Last Modified: Tue, 17 Jul 2018 18:39:41 GMT  
		Size: 23.0 MB (22968107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db49c262b50df717c3b9683a06f56e763a83fb07f72c90552e5b542e43ba65c`  
		Last Modified: Tue, 17 Jul 2018 18:39:37 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25843e5b8bf49bc115d7627454921fc48442d1a21e17714aee31a2227cb40cf`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 951.0 KB (950976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db358b0a7f364bfb9cee41366a66adc8d7f3cc96b92d91abf7f59fa86afe7b9`  
		Last Modified: Tue, 17 Jul 2018 18:39:38 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
