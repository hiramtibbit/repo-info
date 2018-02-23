<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1.16`](#jruby9116)
-	[`jruby:9.1.16.0`](#jruby91160)
-	[`jruby:9.1.16.0-alpine`](#jruby91160-alpine)
-	[`jruby:9.1.16.0-jdk`](#jruby91160-jdk)
-	[`jruby:9.1.16.0-jdk-alpine`](#jruby91160-jdk-alpine)
-	[`jruby:9.1.16.0-jre`](#jruby91160-jre)
-	[`jruby:9.1.16.0-jre-alpine`](#jruby91160-jre-alpine)
-	[`jruby:9.1.16.0-onbuild`](#jruby91160-onbuild)
-	[`jruby:9.1.16-alpine`](#jruby9116-alpine)
-	[`jruby:9.1.16-jdk`](#jruby9116-jdk)
-	[`jruby:9.1.16-jdk-alpine`](#jruby9116-jdk-alpine)
-	[`jruby:9.1.16-jre`](#jruby9116-jre)
-	[`jruby:9.1.16-jre-alpine`](#jruby9116-jre-alpine)
-	[`jruby:9.1.16-onbuild`](#jruby9116-onbuild)
-	[`jruby:9.1-alpine`](#jruby91-alpine)
-	[`jruby:9.1-jdk`](#jruby91-jdk)
-	[`jruby:9.1-jdk-alpine`](#jruby91-jdk-alpine)
-	[`jruby:9.1-jre`](#jruby91-jre)
-	[`jruby:9.1-jre-alpine`](#jruby91-jre-alpine)
-	[`jruby:9.1-onbuild`](#jruby91-onbuild)
-	[`jruby:9-alpine`](#jruby9-alpine)
-	[`jruby:9-jdk`](#jruby9-jdk)
-	[`jruby:9-jdk-alpine`](#jruby9-jdk-alpine)
-	[`jruby:9-onbuild`](#jruby9-onbuild)
-	[`jruby:latest`](#jrubylatest)

## `jruby:9`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
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
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16.0` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-jdk`

```console
$ docker pull jruby@sha256:c5d9753f2d8a9630381c17a268f5f50c647bf220f3fda4edd6f58f8f2d5e7d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:a7e182c2cb86fe8d59610019933d50c1d59f8f594f5713a83370ee7c84daed93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76856651435aded2b053ead944e833764e5a7982e3f60f65d8d98be066247d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:9faf5306ae3464860e8ec6e780445381dd34e510559a4a0a499e66c7749249a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287370977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3585c18cbc6eb9a74b32bb36c761008de00d0eae28113a379b08e961efebdd8c`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:e1f46f5acba87c1f019d4ca11e09e97682305a5e816d21bf399216ddeb85b0b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e13a16f8c9f571eaf10679bdc4dc407e2b1c56ebc046ca238eb0fd2a95b799`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:fd340c53eac7815fcad257b62be05feb2173e97edacd3fcdbca2618d1018e461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3fce07cca4fd0bf82619732bbdc784cdbb28f7b2e0bef590ff29500c4d807ab`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:62e1432d0df24855a2e0a41ba6b27fb4f173517fd55de4c58927bf7ff6a6c5a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28fa89693f94557ad65ca5312c31f23a9bba26847d1a620fd25502e91bf8c35`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-jdk-alpine`

```console
$ docker pull jruby@sha256:fc437a31d03e4bcc510494fd446f4de3fe155706e6e64f42562564f9df042571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:2f803250df806d15fde080ee909afc2089f9be293904d1e0709fdf58a8b86676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95858317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a45197a08fc3c8e178a3773000e2c5b7a3719a1642ab7d2dc57f0d5acc9a3c`
-	Default Command: `["irb"]`

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
# Wed, 10 Jan 2018 08:15:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:19:27 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:19:28 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:19:35 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:19:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:36 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:50 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:51 GMT
CMD ["irb"]
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
	-	`sha256:fc90cd7473b6324e5d2e04cc60f312f5de2d2ac9cd5baa808c9a1213b7e5e5a9`  
		Last Modified: Wed, 10 Jan 2018 08:18:34 GMT  
		Size: 1.3 MB (1292232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfa1d971ca335b1a81d13e11d173e51b2b0020d9c319576977a4bf9ba10725e`  
		Last Modified: Thu, 22 Feb 2018 19:25:53 GMT  
		Size: 21.6 MB (21570635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9156756c72085d4192ff3caa51884beea99e6f095d30542fde23e9fe04b1a53b`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511a8870d5f4a1e7ee865e389d126c460695bc1ac39e336cde696537087c42c4`  
		Last Modified: Thu, 22 Feb 2018 19:25:51 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5282fd1f94d32cc8479c70939d8ef9b2f42295f9b407e3b61e60742fb4fabae5`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-jre`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-jre-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16.0-onbuild`

```console
$ docker pull jruby@sha256:9e9c9db415e415a302e44c053291bc00149ddc79e9b090a9b6aeeeb78656fe0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:693c8dec51812581488dbbd1faad7c8af991162f8f25e176918dfd5b85465718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0586575530f763a5b4a2221f7ae04e98a51c45efa0f408890ce09ad50abfb316`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:20:10 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:20:10 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0618fbf44810759aca8d7378457b629caf0157b02be90672f60f307f9f973`  
		Last Modified: Thu, 22 Feb 2018 19:26:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:5aae2a055e6749649a98165cac1afe11964fe2653cebf66fb2c7997fb93a6545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287371141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad343105e690d227d12790d469f31ad1ef1542e60ba54f4fd7dfe6e49319e36`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 14:17:55 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc69fafac69d2a2056fa0d3a80fa291ea8d2e6055081c77eeeab8f7f5db5f8`  
		Last Modified: Fri, 23 Feb 2018 14:20:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:57e9ae80bb0dd409282bea60896aad7e5cf58176aafa30d13db4298ce84212dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a46b0d60e7b81a7c5e2ddbfc44140a677bcf7261241d8ee408d1b36559206c6`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 07:13:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 07:13:42 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37855d6669db4e474b8a4c7ee6e76254bc5fc9ecf8d144579b20abd89bfb6736`  
		Last Modified: Fri, 23 Feb 2018 07:17:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5562d9ad79867d1ee10cba72820f6642f54e5f71870adc806f6390323bb014c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a431ff07527a01c5c502455b11ad78fd943a8b81f4c87ac08b1254f3a8995768`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 09:55:37 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c07f9d6bfbb48cdc3f387ee3835d4d62f13db8ab5fe18f0ce0b459ab8d1b8b`  
		Last Modified: Fri, 23 Feb 2018 10:04:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16.0-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:5fdd0b04649a8c703ad5a13840f05aea09a1abed0ce53cd939bd78fad22cdfb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8400e2d76fa4b2e8fda854fdc5957f461754dbb66183114d68bcf8c380217744`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:11:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:11:21 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:11:22 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:11:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:11:25 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:11:26 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f94c7705e771bfefab9c1a1ec3640f2817643241e4b0a711e8490909211530`  
		Last Modified: Thu, 22 Feb 2018 19:13:37 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-jdk`

```console
$ docker pull jruby@sha256:c5d9753f2d8a9630381c17a268f5f50c647bf220f3fda4edd6f58f8f2d5e7d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:a7e182c2cb86fe8d59610019933d50c1d59f8f594f5713a83370ee7c84daed93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76856651435aded2b053ead944e833764e5a7982e3f60f65d8d98be066247d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:9faf5306ae3464860e8ec6e780445381dd34e510559a4a0a499e66c7749249a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287370977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3585c18cbc6eb9a74b32bb36c761008de00d0eae28113a379b08e961efebdd8c`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:e1f46f5acba87c1f019d4ca11e09e97682305a5e816d21bf399216ddeb85b0b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e13a16f8c9f571eaf10679bdc4dc407e2b1c56ebc046ca238eb0fd2a95b799`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jdk` - linux; 386

```console
$ docker pull jruby@sha256:fd340c53eac7815fcad257b62be05feb2173e97edacd3fcdbca2618d1018e461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3fce07cca4fd0bf82619732bbdc784cdbb28f7b2e0bef590ff29500c4d807ab`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:62e1432d0df24855a2e0a41ba6b27fb4f173517fd55de4c58927bf7ff6a6c5a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28fa89693f94557ad65ca5312c31f23a9bba26847d1a620fd25502e91bf8c35`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-jdk-alpine`

```console
$ docker pull jruby@sha256:fc437a31d03e4bcc510494fd446f4de3fe155706e6e64f42562564f9df042571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:2f803250df806d15fde080ee909afc2089f9be293904d1e0709fdf58a8b86676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95858317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a45197a08fc3c8e178a3773000e2c5b7a3719a1642ab7d2dc57f0d5acc9a3c`
-	Default Command: `["irb"]`

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
# Wed, 10 Jan 2018 08:15:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:19:27 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:19:28 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:19:35 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:19:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:36 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:50 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:51 GMT
CMD ["irb"]
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
	-	`sha256:fc90cd7473b6324e5d2e04cc60f312f5de2d2ac9cd5baa808c9a1213b7e5e5a9`  
		Last Modified: Wed, 10 Jan 2018 08:18:34 GMT  
		Size: 1.3 MB (1292232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfa1d971ca335b1a81d13e11d173e51b2b0020d9c319576977a4bf9ba10725e`  
		Last Modified: Thu, 22 Feb 2018 19:25:53 GMT  
		Size: 21.6 MB (21570635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9156756c72085d4192ff3caa51884beea99e6f095d30542fde23e9fe04b1a53b`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511a8870d5f4a1e7ee865e389d126c460695bc1ac39e336cde696537087c42c4`  
		Last Modified: Thu, 22 Feb 2018 19:25:51 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5282fd1f94d32cc8479c70939d8ef9b2f42295f9b407e3b61e60742fb4fabae5`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-jre`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16-jre` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jre` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-jre-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.16-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.16-onbuild`

```console
$ docker pull jruby@sha256:9e9c9db415e415a302e44c053291bc00149ddc79e9b090a9b6aeeeb78656fe0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.16-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:693c8dec51812581488dbbd1faad7c8af991162f8f25e176918dfd5b85465718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0586575530f763a5b4a2221f7ae04e98a51c45efa0f408890ce09ad50abfb316`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:20:10 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:20:10 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0618fbf44810759aca8d7378457b629caf0157b02be90672f60f307f9f973`  
		Last Modified: Thu, 22 Feb 2018 19:26:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:5aae2a055e6749649a98165cac1afe11964fe2653cebf66fb2c7997fb93a6545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287371141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad343105e690d227d12790d469f31ad1ef1542e60ba54f4fd7dfe6e49319e36`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 14:17:55 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc69fafac69d2a2056fa0d3a80fa291ea8d2e6055081c77eeeab8f7f5db5f8`  
		Last Modified: Fri, 23 Feb 2018 14:20:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:57e9ae80bb0dd409282bea60896aad7e5cf58176aafa30d13db4298ce84212dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a46b0d60e7b81a7c5e2ddbfc44140a677bcf7261241d8ee408d1b36559206c6`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 07:13:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 07:13:42 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37855d6669db4e474b8a4c7ee6e76254bc5fc9ecf8d144579b20abd89bfb6736`  
		Last Modified: Fri, 23 Feb 2018 07:17:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5562d9ad79867d1ee10cba72820f6642f54e5f71870adc806f6390323bb014c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a431ff07527a01c5c502455b11ad78fd943a8b81f4c87ac08b1254f3a8995768`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 09:55:37 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c07f9d6bfbb48cdc3f387ee3835d4d62f13db8ab5fe18f0ce0b459ab8d1b8b`  
		Last Modified: Fri, 23 Feb 2018 10:04:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.16-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:5fdd0b04649a8c703ad5a13840f05aea09a1abed0ce53cd939bd78fad22cdfb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8400e2d76fa4b2e8fda854fdc5957f461754dbb66183114d68bcf8c380217744`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:11:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:11:21 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:11:22 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:11:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:11:25 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:11:26 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f94c7705e771bfefab9c1a1ec3640f2817643241e4b0a711e8490909211530`  
		Last Modified: Thu, 22 Feb 2018 19:13:37 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:c5d9753f2d8a9630381c17a268f5f50c647bf220f3fda4edd6f58f8f2d5e7d12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:a7e182c2cb86fe8d59610019933d50c1d59f8f594f5713a83370ee7c84daed93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76856651435aded2b053ead944e833764e5a7982e3f60f65d8d98be066247d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:9faf5306ae3464860e8ec6e780445381dd34e510559a4a0a499e66c7749249a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287370977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3585c18cbc6eb9a74b32bb36c761008de00d0eae28113a379b08e961efebdd8c`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:e1f46f5acba87c1f019d4ca11e09e97682305a5e816d21bf399216ddeb85b0b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e13a16f8c9f571eaf10679bdc4dc407e2b1c56ebc046ca238eb0fd2a95b799`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; 386

```console
$ docker pull jruby@sha256:fd340c53eac7815fcad257b62be05feb2173e97edacd3fcdbca2618d1018e461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3fce07cca4fd0bf82619732bbdc784cdbb28f7b2e0bef590ff29500c4d807ab`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:62e1432d0df24855a2e0a41ba6b27fb4f173517fd55de4c58927bf7ff6a6c5a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28fa89693f94557ad65ca5312c31f23a9bba26847d1a620fd25502e91bf8c35`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:fc437a31d03e4bcc510494fd446f4de3fe155706e6e64f42562564f9df042571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:2f803250df806d15fde080ee909afc2089f9be293904d1e0709fdf58a8b86676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95858317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a45197a08fc3c8e178a3773000e2c5b7a3719a1642ab7d2dc57f0d5acc9a3c`
-	Default Command: `["irb"]`

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
# Wed, 10 Jan 2018 08:15:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:19:27 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:19:28 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:19:35 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:19:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:36 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:50 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:51 GMT
CMD ["irb"]
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
	-	`sha256:fc90cd7473b6324e5d2e04cc60f312f5de2d2ac9cd5baa808c9a1213b7e5e5a9`  
		Last Modified: Wed, 10 Jan 2018 08:18:34 GMT  
		Size: 1.3 MB (1292232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfa1d971ca335b1a81d13e11d173e51b2b0020d9c319576977a4bf9ba10725e`  
		Last Modified: Thu, 22 Feb 2018 19:25:53 GMT  
		Size: 21.6 MB (21570635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9156756c72085d4192ff3caa51884beea99e6f095d30542fde23e9fe04b1a53b`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511a8870d5f4a1e7ee865e389d126c460695bc1ac39e336cde696537087c42c4`  
		Last Modified: Thu, 22 Feb 2018 19:25:51 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5282fd1f94d32cc8479c70939d8ef9b2f42295f9b407e3b61e60742fb4fabae5`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1-jre` - linux; amd64

```console
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:9e9c9db415e415a302e44c053291bc00149ddc79e9b090a9b6aeeeb78656fe0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:693c8dec51812581488dbbd1faad7c8af991162f8f25e176918dfd5b85465718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0586575530f763a5b4a2221f7ae04e98a51c45efa0f408890ce09ad50abfb316`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:20:10 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:20:10 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0618fbf44810759aca8d7378457b629caf0157b02be90672f60f307f9f973`  
		Last Modified: Thu, 22 Feb 2018 19:26:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:5aae2a055e6749649a98165cac1afe11964fe2653cebf66fb2c7997fb93a6545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287371141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad343105e690d227d12790d469f31ad1ef1542e60ba54f4fd7dfe6e49319e36`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 14:17:55 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc69fafac69d2a2056fa0d3a80fa291ea8d2e6055081c77eeeab8f7f5db5f8`  
		Last Modified: Fri, 23 Feb 2018 14:20:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:57e9ae80bb0dd409282bea60896aad7e5cf58176aafa30d13db4298ce84212dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a46b0d60e7b81a7c5e2ddbfc44140a677bcf7261241d8ee408d1b36559206c6`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 07:13:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 07:13:42 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37855d6669db4e474b8a4c7ee6e76254bc5fc9ecf8d144579b20abd89bfb6736`  
		Last Modified: Fri, 23 Feb 2018 07:17:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5562d9ad79867d1ee10cba72820f6642f54e5f71870adc806f6390323bb014c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a431ff07527a01c5c502455b11ad78fd943a8b81f4c87ac08b1254f3a8995768`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 09:55:37 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c07f9d6bfbb48cdc3f387ee3835d4d62f13db8ab5fe18f0ce0b459ab8d1b8b`  
		Last Modified: Fri, 23 Feb 2018 10:04:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:5fdd0b04649a8c703ad5a13840f05aea09a1abed0ce53cd939bd78fad22cdfb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8400e2d76fa4b2e8fda854fdc5957f461754dbb66183114d68bcf8c380217744`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:11:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:11:21 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:11:22 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:11:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:11:25 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:11:26 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f94c7705e771bfefab9c1a1ec3640f2817643241e4b0a711e8490909211530`  
		Last Modified: Thu, 22 Feb 2018 19:13:37 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:db8df647f7c9127af606a7a7f8cd8a9d8919eb8aba3edae3660ffa6934c7ae27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:96b13b1d22b1bb0ac01bbc25fc369e5c062403ebad2b9d911dfb4ad79dee21ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80080872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4582edd69e73d28de970cd41d76163c9f0b0fc3a1a88f57fc343053902f7bc8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:15:12 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:08 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:15 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:18:16 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:16 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:18:30 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:18:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:18:31 GMT
CMD ["irb"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5503a3c165bc76914c7b723e47fcccbb09f36de5e25ee1745a47165d293b0f`  
		Last Modified: Wed, 10 Jan 2018 08:16:55 GMT  
		Size: 1.3 MB (1291161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4354a72920899d5daef3c909c463721d2553d35b0316d6cbcfe73adb2dcf85`  
		Last Modified: Thu, 22 Feb 2018 19:22:49 GMT  
		Size: 21.6 MB (21568076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c72e7081b42bf9efb4d8e042477d28f54b1139ea57d4bd2f9f4b10e3e8f1ee`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee67f45b51218df9b1468e1e620684b4fbe9a38b140a58ce3292eafdc9447ef`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 701.6 KB (701556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb512428a55630755c592b895717c4eb047736dbf1713e512835b4fe6cd8a8c4`  
		Last Modified: Thu, 22 Feb 2018 19:22:47 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:c5d9753f2d8a9630381c17a268f5f50c647bf220f3fda4edd6f58f8f2d5e7d12
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
$ docker pull jruby@sha256:a7e182c2cb86fe8d59610019933d50c1d59f8f594f5713a83370ee7c84daed93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e76856651435aded2b053ead944e833764e5a7982e3f60f65d8d98be066247d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:9faf5306ae3464860e8ec6e780445381dd34e510559a4a0a499e66c7749249a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287370977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3585c18cbc6eb9a74b32bb36c761008de00d0eae28113a379b08e961efebdd8c`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:e1f46f5acba87c1f019d4ca11e09e97682305a5e816d21bf399216ddeb85b0b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e13a16f8c9f571eaf10679bdc4dc407e2b1c56ebc046ca238eb0fd2a95b799`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:fd340c53eac7815fcad257b62be05feb2173e97edacd3fcdbca2618d1018e461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3fce07cca4fd0bf82619732bbdc784cdbb28f7b2e0bef590ff29500c4d807ab`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:62e1432d0df24855a2e0a41ba6b27fb4f173517fd55de4c58927bf7ff6a6c5a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28fa89693f94557ad65ca5312c31f23a9bba26847d1a620fd25502e91bf8c35`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:fc437a31d03e4bcc510494fd446f4de3fe155706e6e64f42562564f9df042571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:2f803250df806d15fde080ee909afc2089f9be293904d1e0709fdf58a8b86676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95858317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a45197a08fc3c8e178a3773000e2c5b7a3719a1642ab7d2dc57f0d5acc9a3c`
-	Default Command: `["irb"]`

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
# Wed, 10 Jan 2018 08:15:56 GMT
RUN apk add --no-cache       bash       libc6-compat
# Thu, 22 Feb 2018 19:19:27 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:19:28 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:19:35 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Thu, 22 Feb 2018 19:19:36 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:36 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:50 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 22 Feb 2018 19:19:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:51 GMT
CMD ["irb"]
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
	-	`sha256:fc90cd7473b6324e5d2e04cc60f312f5de2d2ac9cd5baa808c9a1213b7e5e5a9`  
		Last Modified: Wed, 10 Jan 2018 08:18:34 GMT  
		Size: 1.3 MB (1292232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfa1d971ca335b1a81d13e11d173e51b2b0020d9c319576977a4bf9ba10725e`  
		Last Modified: Thu, 22 Feb 2018 19:25:53 GMT  
		Size: 21.6 MB (21570635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9156756c72085d4192ff3caa51884beea99e6f095d30542fde23e9fe04b1a53b`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511a8870d5f4a1e7ee865e389d126c460695bc1ac39e336cde696537087c42c4`  
		Last Modified: Thu, 22 Feb 2018 19:25:51 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5282fd1f94d32cc8479c70939d8ef9b2f42295f9b407e3b61e60742fb4fabae5`  
		Last Modified: Thu, 22 Feb 2018 19:25:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:9e9c9db415e415a302e44c053291bc00149ddc79e9b090a9b6aeeeb78656fe0e
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
$ docker pull jruby@sha256:693c8dec51812581488dbbd1faad7c8af991162f8f25e176918dfd5b85465718
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323552979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0586575530f763a5b4a2221f7ae04e98a51c45efa0f408890ce09ad50abfb316`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:59:19 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:18:45 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:18:46 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:18:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:18:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:18:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:19:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:19:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:19:12 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:19:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:19:13 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:20:10 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:20:10 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:20:11 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a8886c50a241d595960dd2845e3ab15d3fde2fe1560880d03802ae87873922`  
		Last Modified: Thu, 15 Feb 2018 20:04:21 GMT  
		Size: 6.7 MB (6703096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cac97e584d09e5d0f7fc0d59689c4de5ddabd1904fc4a8670a772e51c9a3b`  
		Last Modified: Thu, 22 Feb 2018 19:24:44 GMT  
		Size: 21.5 MB (21477663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5005fcba4c05cc5b9d9d89f9537de37f81289c909e6329a2e06556ea72d0d8`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f97b6ed2e9927370bc53e0465f2f10132f8a468e7ea54b723df0808f202fd2`  
		Last Modified: Thu, 22 Feb 2018 19:24:42 GMT  
		Size: 701.5 KB (701532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be023d8168bfeee84952175b02814c0e49c309b8cf8c83fa2928974c0b5c60b2`  
		Last Modified: Thu, 22 Feb 2018 19:24:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb0618fbf44810759aca8d7378457b629caf0157b02be90672f60f307f9f973`  
		Last Modified: Thu, 22 Feb 2018 19:26:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:5aae2a055e6749649a98165cac1afe11964fe2653cebf66fb2c7997fb93a6545
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287371141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad343105e690d227d12790d469f31ad1ef1542e60ba54f4fd7dfe6e49319e36`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:45:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:45:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:45:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:45:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:46:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:46:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:49:35 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:15:48 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:15:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:15:52 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:53 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:17:33 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:17:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:17:33 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:17:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:17:34 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 14:17:55 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 14:17:55 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 14:17:56 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32a30ad89dee863e7a994617b921fc42bbbe95108dd650924f5d3226d98829`  
		Last Modified: Thu, 15 Feb 2018 21:55:01 GMT  
		Size: 48.2 MB (48233272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e02510e456e4ceb8f1aa7c6e05f42498d0c8d03fd2802095685fa845a54419`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 884.4 KB (884404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a8a1c2a040ea700da02e8531f9088aaa527abdf4da9668db3845b6c131f6`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6d2a839d95b8107f579aa44ce5c90bc979c497777fa8f8bb6b386dd5632cf3`  
		Last Modified: Fri, 16 Feb 2018 00:59:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c6048eec32ddeea870823e3817f0dd8423178450eed16066e70938a70eeb4a`  
		Last Modified: Fri, 16 Feb 2018 01:00:21 GMT  
		Size: 151.8 MB (151843248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d176a6463bf1118edb106d2d9a57a8b272a31d8b10c92990b825cf4e511a0ce6`  
		Last Modified: Fri, 16 Feb 2018 00:59:43 GMT  
		Size: 272.2 KB (272189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f278e8ebfc871ee1ba2dbb79264ce2373c0ce70e949953d28909669775bbe497`  
		Last Modified: Fri, 16 Feb 2018 01:53:41 GMT  
		Size: 5.8 MB (5783603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd92fedfc955c1aad256428b3182c968099e74f330bc5d00ed51f44e5e58af`  
		Last Modified: Fri, 23 Feb 2018 14:19:27 GMT  
		Size: 21.5 MB (21477793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70d8e4bc59a2062731486fe716460da9773115970b7414f559c60aa9672e386`  
		Last Modified: Fri, 23 Feb 2018 14:19:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd918549aedc36d0480b1503c69b008ca68475d1c3090052914c3d187f3f7fae`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 701.9 KB (701899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541bef99d95df331342044aa05d27baa7d4c201985e4f9ac550ae9433a79a7d`  
		Last Modified: Fri, 23 Feb 2018 14:19:20 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cc69fafac69d2a2056fa0d3a80fa291ea8d2e6055081c77eeeab8f7f5db5f8`  
		Last Modified: Fri, 23 Feb 2018 14:20:04 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:57e9ae80bb0dd409282bea60896aad7e5cf58176aafa30d13db4298ce84212dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302518490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a46b0d60e7b81a7c5e2ddbfc44140a677bcf7261241d8ee408d1b36559206c6`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 19:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:34:52 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:34:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:35:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:35:11 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:35:14 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:35:19 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:35:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:40:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:41:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:12:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:11:35 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:11:36 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:11:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:11:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:11:45 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:12:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:12:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:12:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:12:10 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 07:13:41 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 07:13:42 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 07:13:43 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 07:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a434d283e1e20068621bb55d760d5ea6ba21944e93cd241761d5ebfd5cfdd3`  
		Last Modified: Thu, 15 Feb 2018 20:16:18 GMT  
		Size: 48.0 MB (47983036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701b94a7967fd1d7bf8631e37bc8d9f8fe0de4e901cada1f5402e63b4a384ff`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 877.4 KB (877372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e3501074eb3ba85476134921d596116b98cf370561c542194381cfacd8b746`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23169740c7326bea1026f13a51d61795a5fc938e4da719fc52f02aedb0b79b89`  
		Last Modified: Thu, 15 Feb 2018 23:21:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52cbd8d39395028ea9c403d6cccd092a3092927cf4088bf16df52c138aac5e1`  
		Last Modified: Thu, 15 Feb 2018 23:22:32 GMT  
		Size: 168.0 MB (168049508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70b8f575025075d0bc58b2c6b73d3d819804704cbe08e0a1c65e83b4021fd2`  
		Last Modified: Thu, 15 Feb 2018 23:21:43 GMT  
		Size: 272.1 KB (272091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45b96ed371f4f4ee06eb37f734c69e9f31cff1e224882a313c4ccff1a2fcf0`  
		Last Modified: Fri, 16 Feb 2018 11:17:35 GMT  
		Size: 6.1 MB (6079811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8550982f8b5894dfccd382ad725f8f213a44b055868adeaf791c1bebd6173042`  
		Last Modified: Fri, 23 Feb 2018 07:16:17 GMT  
		Size: 21.5 MB (21477887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed69f0730319b0305ece35ef000c08bc50cf27d6a479c63ba7c4a8badc81607`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55138799d2203b4d3e6775ef7e583b73d8a96c5d664445cf40df6c5ccb0f4a4b`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 701.6 KB (701577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc7b4398335a3eba27a58dfd051df300ae770ac389cc3da244266e6065c7c6a`  
		Last Modified: Fri, 23 Feb 2018 07:16:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37855d6669db4e474b8a4c7ee6e76254bc5fc9ecf8d144579b20abd89bfb6736`  
		Last Modified: Fri, 23 Feb 2018 07:17:20 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:5562d9ad79867d1ee10cba72820f6642f54e5f71870adc806f6390323bb014c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.0 MB (332023906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a431ff07527a01c5c502455b11ad78fd943a8b81f4c87ac08b1254f3a8995768`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 09:13:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:26:48 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:26:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:26:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:26:51 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:26:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:28:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 22:09:45 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:47:40 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:47:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:47:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:47:50 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:48:06 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:48:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:48:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:48:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:48:09 GMT
CMD ["irb"]
# Fri, 23 Feb 2018 09:55:37 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
WORKDIR /usr/src/app
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Fri, 23 Feb 2018 09:55:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD RUN bundle install --system
# Fri, 23 Feb 2018 09:55:39 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9476a4303288bf3216074e1391fd34e057694d8f8cfd65e8a6a331838eb084a`  
		Last Modified: Fri, 16 Feb 2018 11:40:16 GMT  
		Size: 51.6 MB (51553959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47dae246ed9875942ba48169bb8923441909f100eb5cd149a3b96c869a6eb7e`  
		Last Modified: Sat, 17 Feb 2018 09:27:18 GMT  
		Size: 899.8 KB (899771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b7dba947c990ca9a57c9d59534af7306fc16da72038431e1c58047f3f338d`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245a67281929abe4df93d1f0bd098d54b454f6a08969c9f82a07a94f45770be`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91921fcaad9a2b44ee7787137a6a7e68449747a1c367526d52fc84923bd7e27f`  
		Last Modified: Sat, 17 Feb 2018 09:28:08 GMT  
		Size: 185.5 MB (185455309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0f164c79346852e9965d801fed8eb09809861cfd6303bcdb23a241291ceca`  
		Last Modified: Sat, 17 Feb 2018 09:27:17 GMT  
		Size: 272.2 KB (272182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9dc691749007e79fb6b55a6a19b5aaa49293c5fa061de0be1d3e1e32cbe186`  
		Last Modified: Sun, 18 Feb 2018 23:14:05 GMT  
		Size: 10.1 MB (10119311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93e64f4f444915e32f8c086951408c999eed068effdcfd8e0c75b01105bfbe5`  
		Last Modified: Fri, 23 Feb 2018 10:02:14 GMT  
		Size: 21.5 MB (21477785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f54e3fd639c2457835a3bc59092d293d6a05adc48846df7a8e12188b2abd3b`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef390a6a187381904ea7d7895f8b6eb52c4820bc114b71d07aa04bc141b56b6`  
		Last Modified: Fri, 23 Feb 2018 10:02:10 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7894d2dd4c956dbde9bf75e2cc179d4109929771fa13c93f28b25b83ff2a83`  
		Last Modified: Fri, 23 Feb 2018 10:02:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c07f9d6bfbb48cdc3f387ee3835d4d62f13db8ab5fe18f0ce0b459ab8d1b8b`  
		Last Modified: Fri, 23 Feb 2018 10:04:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:5fdd0b04649a8c703ad5a13840f05aea09a1abed0ce53cd939bd78fad22cdfb8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311767751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8400e2d76fa4b2e8fda854fdc5957f461754dbb66183114d68bcf8c380217744`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:26:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:27:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:27:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 12:27:18 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:27:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:27:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:36:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:37:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:50:56 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:09:29 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:09:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:09:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:09:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:09:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:10:03 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:10:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:10:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:10:12 GMT
CMD ["irb"]
# Thu, 22 Feb 2018 19:11:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 22 Feb 2018 19:11:21 GMT
WORKDIR /usr/src/app
# Thu, 22 Feb 2018 19:11:22 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 22 Feb 2018 19:11:23 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 22 Feb 2018 19:11:25 GMT
ONBUILD RUN bundle install --system
# Thu, 22 Feb 2018 19:11:26 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c30ae6c7e8ab2aa87128a6f2addb7e4e6e5ad2bc703bc7d43a7427991ec4e`  
		Last Modified: Thu, 15 Feb 2018 08:27:32 GMT  
		Size: 50.0 MB (50028084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd488bc2a9f69b4f63e3bbe13d90c0860ddb035846ac8fbdf89bf749b66bac4`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 886.3 KB (886321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fe892a20ffc079a5e1a568e368f3cbcabf7f31d65c7b3a257f97a5bc5eec36`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81777d91c805d950cb4775cc2daf7c024374fd390dc7e56de9d1ae4150b8e790`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199f7ed20dbd0892310586a464e0f4a050eae3c0bdacf6583070e2871dbe14`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 171.7 MB (171704528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6903c4011aa1c30687a6f3174bee8837d8685294916ff389b82ff5dc792461`  
		Last Modified: Thu, 15 Feb 2018 13:42:16 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ba6352f14c2b24872c7f01e54cf40552e6b22a3339187aaedf7c19dac8cfe9`  
		Last Modified: Thu, 15 Feb 2018 17:55:33 GMT  
		Size: 6.7 MB (6679384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5d6eff8a6640385fd54aac2adfe8ee96f718479e806054ca20a754c3ef0b14`  
		Last Modified: Thu, 22 Feb 2018 19:12:54 GMT  
		Size: 21.5 MB (21477837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9567b80d8d40a52ecb4060b716a64a484915d36fd706777408e39170d98d9c3`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c3cd57f3b9ecac0bf95110cadd79bcdaa388ff7d23dd84ce0c858cd04d661`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 701.7 KB (701737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f761322524a64f7e70a27865fe0a58a1d047f09eba4db007f826fc929b4828`  
		Last Modified: Thu, 22 Feb 2018 19:12:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f94c7705e771bfefab9c1a1ec3640f2817643241e4b0a711e8490909211530`  
		Last Modified: Thu, 22 Feb 2018 19:13:37 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:latest`

```console
$ docker pull jruby@sha256:35406bf66c1b86989f3ca5d249267fab66ca567f5c2da1b87aab486827f5a9f0
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
$ docker pull jruby@sha256:421a1cb3bc8a31c3a36168e21fddf27a1ebdd0a456d214191924c26961c3be0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.9 MB (255938956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de0121172224d0900e92ba8e40a3ce767b3a093394a1b24ad8042c7f5e860a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 19:58:01 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:17:30 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:17:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:17:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:17:52 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:17:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:17:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:17:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4536e286faf44984c324342102a863185ffb7ef8d9d3db8023d83df10464b5`  
		Last Modified: Thu, 15 Feb 2018 20:01:11 GMT  
		Size: 6.7 MB (6667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4b351cc6d8cddb74c462a51ac8e6e0c84d23830a8ed2434ec1b3250351449`  
		Last Modified: Thu, 22 Feb 2018 19:20:35 GMT  
		Size: 21.5 MB (21476423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99e5487674da46edb7025d3f1c0f419b1b9b2b65819cab85a351c57d894d08`  
		Last Modified: Thu, 22 Feb 2018 19:20:33 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722169e5d4201450ee0a3d8a061c8c310bf5bceb6e4d24f7c04f1f3595ba2b6a`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 701.5 KB (701548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70bb990a5e9dfdcb445fcf8fb28b78f4e04144824f644c00671c837be669496`  
		Last Modified: Thu, 22 Feb 2018 19:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1eaafdbef3e1af13452031091ca9e86418900dfae2b4ffa01587b769d9c312af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223808489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5b2b59f6c60f0c3bfd2bcdb02d19c384f1332c40d69a6387802a2f26dfb98ff`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:42:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:42:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 00:43:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:43:23 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 00:43:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 00:43:26 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 00:43:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 00:43:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 00:44:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 00:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 01:47:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 14:13:41 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 14:13:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 14:13:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:13:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 14:15:27 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 14:15:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 14:15:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 14:15:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 14:15:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9633086ab8bf9b644f2e526c1e31a653b237dd394e966e68cd869ac721123ba4`  
		Last Modified: Thu, 15 Feb 2018 21:54:22 GMT  
		Size: 10.2 MB (10206359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74cc7a63d9a1f4d3228550a6f08da560d0d43c11c89fabaebafbcf284452351`  
		Last Modified: Thu, 15 Feb 2018 21:54:18 GMT  
		Size: 4.2 MB (4153085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16eceaeb8294f1d121f614c88148716064f3ff4f7056c47dca11f7f5feddee57`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 845.3 KB (845280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f328199f36675dc3aa703594d9a9ba1fe953976a09aaad3e6ea78f67f14f0a`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596b0e13645588c52a400ca1b2b559bdb4423bcd7ecb0b867566d11bb740f13`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53994f4a7f32c588021ed119b953986a253f33f693305901c91a3d5b27d5d9d`  
		Last Modified: Fri, 16 Feb 2018 00:58:39 GMT  
		Size: 136.6 MB (136588439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c049b3749917b06385edf050dccf3290f9f6a512039868dc0681a24b29cdab1b`  
		Last Modified: Fri, 16 Feb 2018 00:58:02 GMT  
		Size: 272.2 KB (272198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a892210cce019b1691954e6adf4e4003271ff751c28bb4541d9e1c725f5b3d1`  
		Last Modified: Fri, 16 Feb 2018 01:52:12 GMT  
		Size: 5.7 MB (5749342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6e57e59e639aa94fe3726759704db27b9b2f81fa40d8c5f13808af831c50ef`  
		Last Modified: Fri, 23 Feb 2018 14:18:14 GMT  
		Size: 21.5 MB (21476760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a766ab52a7bc90f82d0d20ed91a00467c28bca5d696df5d8bf63e4cd89c208fc`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e7e2242d829fe26927539ad212796c185aff5d776c00bbfb2d7d95fe462458`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 701.9 KB (701904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d6a065b1addaf92fb89331fd4e519b411648b0048734ba15959867d0d48c31`  
		Last Modified: Fri, 23 Feb 2018 14:18:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:ff4166199e13d60fc828ab752e1af3463b77c8734a1871f887e4bb8897b6e790
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239354291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671f379090ef701b28fce53b1c399bb65da1ea986ee33edb83c836f9a4a9925d`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:09:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 07:09:14 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 07:09:15 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 07:09:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 07:09:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 07:09:53 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 07:09:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 07:09:55 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 07:09:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 07:09:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbba47476c9429d5d5c0cc84e0c1943534b9109f589b65b8c7691d742b831a7`  
		Last Modified: Fri, 16 Feb 2018 11:15:22 GMT  
		Size: 6.0 MB (6044070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb255c359d67ceda47080279ba1d55dc5463f25dc6ba467e4b1bb98a8f2966c4`  
		Last Modified: Fri, 23 Feb 2018 07:14:11 GMT  
		Size: 21.5 MB (21476480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f24de36e7390e9e152ecbe70ba2eb332a4afecdd4efffbe675c50c6b8ddd234`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd55b9b14632988782701227d0aa6d17ae4c9052324be2166699313a6129ba07`  
		Last Modified: Fri, 23 Feb 2018 07:14:08 GMT  
		Size: 701.6 KB (701598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df8922d9919089d50b7fc8c05b66b4daaa10fbabfd69d77de390e169436de8`  
		Last Modified: Fri, 23 Feb 2018 07:14:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; 386

```console
$ docker pull jruby@sha256:db1d8b5575f8f6aa90896b055ccb2a79a16caa70f05f37974c180f82518d3ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263267908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c372b96660f28c6cfb975657aa13968e77ac3b27f193f644937e6c8cdc61c363`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Feb 2018 21:57:32 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_VERSION=9.1.16.0
# Fri, 23 Feb 2018 09:35:01 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Fri, 23 Feb 2018 09:35:12 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 23 Feb 2018 09:35:12 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 23 Feb 2018 09:35:31 GMT
RUN gem install bundler
# Fri, 23 Feb 2018 09:35:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Feb 2018 09:35:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 09:35:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Feb 2018 09:35:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e65e1f27be625502de67b919a6ec0b986ee46238a6026365e2ccfe3e394aafb`  
		Last Modified: Sun, 18 Feb 2018 22:36:20 GMT  
		Size: 10.1 MB (10083808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f35b2e0df3347afdd30fe6921e21dff96871943b02c4c35cc88dd465d52e3c`  
		Last Modified: Fri, 23 Feb 2018 09:59:53 GMT  
		Size: 21.5 MB (21476419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7302bb924e0c85efbe1291856b686d9a2b2bdb4898ae676d79dd861345ffd8d5`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec6007e21350b4c9eac47afd7b80275c6b6f30c6ce628fec2c7488e291c05d`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 701.5 KB (701547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84330ce60a482aa4ba8c9b9b4cccb0b53743529616bee6b32575865a40c44300`  
		Last Modified: Fri, 23 Feb 2018 09:59:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; ppc64le

```console
$ docker pull jruby@sha256:e87473493715b430fd3a5e012f8b742b204de67660ad58b7615355776948ab0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246475265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471cf392499e11c7b0b75417f05ca17ddb83c9a8ac0a39318c8f46ba22f0216a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:56:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:14:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:14:37 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 12:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 12:14:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 12:14:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 12:14:56 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 12:14:58 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 12:15:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 12:25:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 12:26:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:48:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Feb 2018 19:07:43 GMT
ENV JRUBY_VERSION=9.1.16.0
# Thu, 22 Feb 2018 19:07:44 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Thu, 22 Feb 2018 19:07:52 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 22 Feb 2018 19:07:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:07:56 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 22 Feb 2018 19:08:12 GMT
RUN gem install bundler
# Thu, 22 Feb 2018 19:08:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 22 Feb 2018 19:08:18 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Feb 2018 19:08:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 22 Feb 2018 19:08:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973873e505f5d45a098d524617afcd53f6043873cce8353b33bf411badfc34a3`  
		Last Modified: Thu, 15 Feb 2018 08:26:58 GMT  
		Size: 10.3 MB (10339468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cc33d8bafc715aecb7512ba918f3ee19119c303b6ac2cdc55086a077bcc32`  
		Last Modified: Thu, 15 Feb 2018 08:26:56 GMT  
		Size: 4.3 MB (4289551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86adbeb875e6d4cbfc01c900084e54867d198c70e83eb23c2687fe3033d9d7`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 848.1 KB (848150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2040628123957a403dd82c03d163087bed9158c26b2828b279cbbb433ab706b2`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e33d68b79b5659ea0b0f46403fe891e619201db730e5c38717798753d7b7fe`  
		Last Modified: Thu, 15 Feb 2018 13:40:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59c9d2a0cb831793d45cc6b4912bad029f3a0e5cae23caf938e3ec8efb72618`  
		Last Modified: Thu, 15 Feb 2018 13:41:28 GMT  
		Size: 156.5 MB (156514554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29848bef1f97875ab1f9ccdf712347f1d0d82a17386e271f8b28412184dbfd88`  
		Last Modified: Thu, 15 Feb 2018 13:40:42 GMT  
		Size: 272.0 KB (272044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdaf9163ccdf4827d4f12684794131311afadb8bb845a549c6accac21acd3467`  
		Last Modified: Thu, 15 Feb 2018 17:54:21 GMT  
		Size: 6.6 MB (6644667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e33745dbf59aa34f3fd433c745d17dbec3a4d6ac709348ac3ee05c29f3de3b`  
		Last Modified: Thu, 22 Feb 2018 19:11:45 GMT  
		Size: 21.5 MB (21476479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e5cc155cd95095682eca30e760d0f63afb5859b52acabc3ff797b28bda6316`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a9b036f9222a06699410717f6cd58e6cd7859685d4e2660cdf5d7f9e371cd3`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 701.7 KB (701723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f262f845170927bd178b78da1ada1dde50690da510b2c47cda58bb799932de6f`  
		Last Modified: Thu, 22 Feb 2018 19:11:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
