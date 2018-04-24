<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jruby`

-	[`jruby:9`](#jruby9)
-	[`jruby:9.1`](#jruby91)
-	[`jruby:9.1.17`](#jruby9117)
-	[`jruby:9.1.17.0`](#jruby91170)
-	[`jruby:9.1.17.0-alpine`](#jruby91170-alpine)
-	[`jruby:9.1.17.0-jdk`](#jruby91170-jdk)
-	[`jruby:9.1.17.0-jdk-alpine`](#jruby91170-jdk-alpine)
-	[`jruby:9.1.17.0-jre`](#jruby91170-jre)
-	[`jruby:9.1.17.0-jre-alpine`](#jruby91170-jre-alpine)
-	[`jruby:9.1.17.0-onbuild`](#jruby91170-onbuild)
-	[`jruby:9.1.17-alpine`](#jruby9117-alpine)
-	[`jruby:9.1.17-jdk`](#jruby9117-jdk)
-	[`jruby:9.1.17-jdk-alpine`](#jruby9117-jdk-alpine)
-	[`jruby:9.1.17-jre`](#jruby9117-jre)
-	[`jruby:9.1.17-jre-alpine`](#jruby9117-jre-alpine)
-	[`jruby:9.1.17-onbuild`](#jruby9117-onbuild)
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
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
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
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
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
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17` - linux; amd64

```console
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17.0` - linux; amd64

```console
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-jdk`

```console
$ docker pull jruby@sha256:67f7fda3943a9b7e24dab65693ba91f296e160b2b898c7148824e1d09f3a06d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17.0-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:fcdd33e051beaf5554747c2d680ca3a3fda223d21641c305b67bd5ba432d4e15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f29afd8f9c44687f2d3a2195c0f270d4017a231d5ed09161c36ba966343c89`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1367b8eed89d7315c0845145890ce70b037cd84f59642d19923eb2bf4351a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b0068d80ef9c2f19e929293404190173cd244cd935586355679cb9a032d985`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:7a2d486bfc6d291b883aa96511fd514f428d4251b1fc2e35472f6e82d966f883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd909f60aade63e95be82dc922adfa7bf3be6d92cc272bcb717220990dc623f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:1c417272722179da209d6d893e3354f52d88b3691e00c6048ff5381d497ad9c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321863945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e131743a3cf80274f5bdcd12726e1bada029b6f3ec4fa5aca9a623b3f922255a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:d10238ccb61a5c50550ccc3cdbf3e8a4154870f210c9f035f1e210619241cf3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd9e941c022c8e491264ac4aa02f4c7b92555da1a91013d1405503f27c7daa2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-jdk-alpine`

```console
$ docker pull jruby@sha256:d06c09098dfea4d5f1fcf4ca273cea1043079e2d190c308bee1043bfa2b596ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:1b5ae13618c35cc198b299d7daad4152d0817125bb5302e90f16e41509b91deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95881049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff286bc6c19a62e458767a7c1aea9c00abd828a4108e7b8665ae1697cf3a0d93`
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
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:13:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:13:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:13:18 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:13:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:13:20 GMT
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
	-	`sha256:74a397892b996fd5254791c2c6a74808ead96abfe4d748492704cc5d783a9368`  
		Last Modified: Tue, 24 Apr 2018 00:21:24 GMT  
		Size: 21.6 MB (21593377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059fe8a0427338f11d0da7c7f8559ef67dc09b095cf4c92d9778933cd647e85`  
		Last Modified: Tue, 24 Apr 2018 00:21:20 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a301d79dafa3d07cd954900c80fb058ad9d8bbd6cc4bd32588e53bb78fbbc5d`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c31ff1cdb9ae0c81f3b80843f02e8f2cbac82d2ef759d37e2667b0a70469a`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-jre`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17.0-jre` - linux; amd64

```console
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-jre-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17.0-onbuild`

```console
$ docker pull jruby@sha256:2d125c8bb734591ffaf3b078d323959f4e5034b7f5da4b382346d3b02fc78b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17.0-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:0a836b2e452099bedc2946e7fea36a317557e14f9d17227dff7f28a7cca31702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2c07205bb93b1410802d98f16f38e800ebc0845519ffd49c5ebc10141f57f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 00:13:43 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 00:13:43 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560d1846f51cc79c18009474b11394acf0dceeeef7973efa384978308e85a9`  
		Last Modified: Tue, 24 Apr 2018 00:22:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:4c4be14474aa5e77716cdf22556fd008f17dcd15073e6e976741b09db3da5575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7155f5dd25acbc3809bde3cc785e2bf382cc2f3c4e0edbd3eaaf68397ec8d662`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 11:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 11:34:50 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17ffa18a69cbc7b277dcdb353703e1d8185f4fef30a309bece9ee6d79ba09a`  
		Last Modified: Tue, 20 Mar 2018 11:37:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:54c0a3d530e0303f1e8304a3a0bdce8e99f7cb3ce6dd4e92945d8ea8873a1cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdb956031fb707b23dbe450c113f66f2b151f89f1d378c3301d203eae94317f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 12:58:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 12:58:40 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 12:58:42 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 12:58:43 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b583147f7ceac7e6a458db31ba2a34ff60ddd6c8ce7b7fa4131032134e1b1b0`  
		Last Modified: Tue, 20 Mar 2018 13:08:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:76566b69f7f56ecf90276b7b6f69f937cb3cc989ad7cfc64fca8f9428e3e9854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321864077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6d65b8e71500fe802de45247c27761b0cca41477ef51610abdd891b4c465d5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:46:00 GMT
RUN mkdir -p /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
WORKDIR /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD RUN bundle install --system
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226dcd0b9b35db32e6871dcd75827319fc7676ec6b4127332889c10a339c8e5a`  
		Last Modified: Sat, 14 Apr 2018 05:47:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17.0-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:c0cf23652622b7b9c2e07ce341c0a4bcf3b641c4affcf694c7b46440d5acda53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8f177eb590880b018b5c64f3197f28ca81119fcf1b048cfd6d630a25771a6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 08:38:38 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 08:38:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 08:38:42 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 08:38:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 08:38:46 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 08:38:48 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b64012a30b29a14aa97d58b7a5451a95bfaea81a6af5141892e0be36bf307`  
		Last Modified: Tue, 24 Apr 2018 08:40:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-jdk`

```console
$ docker pull jruby@sha256:67f7fda3943a9b7e24dab65693ba91f296e160b2b898c7148824e1d09f3a06d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:fcdd33e051beaf5554747c2d680ca3a3fda223d21641c305b67bd5ba432d4e15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f29afd8f9c44687f2d3a2195c0f270d4017a231d5ed09161c36ba966343c89`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1367b8eed89d7315c0845145890ce70b037cd84f59642d19923eb2bf4351a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b0068d80ef9c2f19e929293404190173cd244cd935586355679cb9a032d985`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:7a2d486bfc6d291b883aa96511fd514f428d4251b1fc2e35472f6e82d966f883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd909f60aade63e95be82dc922adfa7bf3be6d92cc272bcb717220990dc623f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jdk` - linux; 386

```console
$ docker pull jruby@sha256:1c417272722179da209d6d893e3354f52d88b3691e00c6048ff5381d497ad9c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321863945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e131743a3cf80274f5bdcd12726e1bada029b6f3ec4fa5aca9a623b3f922255a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:d10238ccb61a5c50550ccc3cdbf3e8a4154870f210c9f035f1e210619241cf3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd9e941c022c8e491264ac4aa02f4c7b92555da1a91013d1405503f27c7daa2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-jdk-alpine`

```console
$ docker pull jruby@sha256:d06c09098dfea4d5f1fcf4ca273cea1043079e2d190c308bee1043bfa2b596ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:1b5ae13618c35cc198b299d7daad4152d0817125bb5302e90f16e41509b91deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95881049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff286bc6c19a62e458767a7c1aea9c00abd828a4108e7b8665ae1697cf3a0d93`
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
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:13:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:13:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:13:18 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:13:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:13:20 GMT
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
	-	`sha256:74a397892b996fd5254791c2c6a74808ead96abfe4d748492704cc5d783a9368`  
		Last Modified: Tue, 24 Apr 2018 00:21:24 GMT  
		Size: 21.6 MB (21593377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059fe8a0427338f11d0da7c7f8559ef67dc09b095cf4c92d9778933cd647e85`  
		Last Modified: Tue, 24 Apr 2018 00:21:20 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a301d79dafa3d07cd954900c80fb058ad9d8bbd6cc4bd32588e53bb78fbbc5d`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c31ff1cdb9ae0c81f3b80843f02e8f2cbac82d2ef759d37e2667b0a70469a`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-jre`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17-jre` - linux; amd64

```console
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jre` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-jre-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1.17-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1.17-onbuild`

```console
$ docker pull jruby@sha256:2d125c8bb734591ffaf3b078d323959f4e5034b7f5da4b382346d3b02fc78b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9.1.17-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:0a836b2e452099bedc2946e7fea36a317557e14f9d17227dff7f28a7cca31702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2c07205bb93b1410802d98f16f38e800ebc0845519ffd49c5ebc10141f57f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 00:13:43 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 00:13:43 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560d1846f51cc79c18009474b11394acf0dceeeef7973efa384978308e85a9`  
		Last Modified: Tue, 24 Apr 2018 00:22:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:4c4be14474aa5e77716cdf22556fd008f17dcd15073e6e976741b09db3da5575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7155f5dd25acbc3809bde3cc785e2bf382cc2f3c4e0edbd3eaaf68397ec8d662`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 11:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 11:34:50 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17ffa18a69cbc7b277dcdb353703e1d8185f4fef30a309bece9ee6d79ba09a`  
		Last Modified: Tue, 20 Mar 2018 11:37:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:54c0a3d530e0303f1e8304a3a0bdce8e99f7cb3ce6dd4e92945d8ea8873a1cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdb956031fb707b23dbe450c113f66f2b151f89f1d378c3301d203eae94317f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 12:58:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 12:58:40 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 12:58:42 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 12:58:43 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b583147f7ceac7e6a458db31ba2a34ff60ddd6c8ce7b7fa4131032134e1b1b0`  
		Last Modified: Tue, 20 Mar 2018 13:08:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:76566b69f7f56ecf90276b7b6f69f937cb3cc989ad7cfc64fca8f9428e3e9854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321864077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6d65b8e71500fe802de45247c27761b0cca41477ef51610abdd891b4c465d5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:46:00 GMT
RUN mkdir -p /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
WORKDIR /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD RUN bundle install --system
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226dcd0b9b35db32e6871dcd75827319fc7676ec6b4127332889c10a339c8e5a`  
		Last Modified: Sat, 14 Apr 2018 05:47:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1.17-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:c0cf23652622b7b9c2e07ce341c0a4bcf3b641c4affcf694c7b46440d5acda53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8f177eb590880b018b5c64f3197f28ca81119fcf1b048cfd6d630a25771a6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 08:38:38 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 08:38:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 08:38:42 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 08:38:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 08:38:46 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 08:38:48 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b64012a30b29a14aa97d58b7a5451a95bfaea81a6af5141892e0be36bf307`  
		Last Modified: Tue, 24 Apr 2018 08:40:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk`

```console
$ docker pull jruby@sha256:67f7fda3943a9b7e24dab65693ba91f296e160b2b898c7148824e1d09f3a06d9
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
$ docker pull jruby@sha256:fcdd33e051beaf5554747c2d680ca3a3fda223d21641c305b67bd5ba432d4e15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f29afd8f9c44687f2d3a2195c0f270d4017a231d5ed09161c36ba966343c89`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1367b8eed89d7315c0845145890ce70b037cd84f59642d19923eb2bf4351a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b0068d80ef9c2f19e929293404190173cd244cd935586355679cb9a032d985`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:7a2d486bfc6d291b883aa96511fd514f428d4251b1fc2e35472f6e82d966f883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd909f60aade63e95be82dc922adfa7bf3be6d92cc272bcb717220990dc623f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; 386

```console
$ docker pull jruby@sha256:1c417272722179da209d6d893e3354f52d88b3691e00c6048ff5381d497ad9c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321863945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e131743a3cf80274f5bdcd12726e1bada029b6f3ec4fa5aca9a623b3f922255a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:d10238ccb61a5c50550ccc3cdbf3e8a4154870f210c9f035f1e210619241cf3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd9e941c022c8e491264ac4aa02f4c7b92555da1a91013d1405503f27c7daa2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jdk-alpine`

```console
$ docker pull jruby@sha256:d06c09098dfea4d5f1fcf4ca273cea1043079e2d190c308bee1043bfa2b596ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:1b5ae13618c35cc198b299d7daad4152d0817125bb5302e90f16e41509b91deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95881049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff286bc6c19a62e458767a7c1aea9c00abd828a4108e7b8665ae1697cf3a0d93`
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
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:13:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:13:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:13:18 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:13:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:13:20 GMT
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
	-	`sha256:74a397892b996fd5254791c2c6a74808ead96abfe4d748492704cc5d783a9368`  
		Last Modified: Tue, 24 Apr 2018 00:21:24 GMT  
		Size: 21.6 MB (21593377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059fe8a0427338f11d0da7c7f8559ef67dc09b095cf4c92d9778933cd647e85`  
		Last Modified: Tue, 24 Apr 2018 00:21:20 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a301d79dafa3d07cd954900c80fb058ad9d8bbd6cc4bd32588e53bb78fbbc5d`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c31ff1cdb9ae0c81f3b80843f02e8f2cbac82d2ef759d37e2667b0a70469a`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
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
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-jre-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.1-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.1-onbuild`

```console
$ docker pull jruby@sha256:2d125c8bb734591ffaf3b078d323959f4e5034b7f5da4b382346d3b02fc78b51
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
$ docker pull jruby@sha256:0a836b2e452099bedc2946e7fea36a317557e14f9d17227dff7f28a7cca31702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2c07205bb93b1410802d98f16f38e800ebc0845519ffd49c5ebc10141f57f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 00:13:43 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 00:13:43 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560d1846f51cc79c18009474b11394acf0dceeeef7973efa384978308e85a9`  
		Last Modified: Tue, 24 Apr 2018 00:22:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:4c4be14474aa5e77716cdf22556fd008f17dcd15073e6e976741b09db3da5575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7155f5dd25acbc3809bde3cc785e2bf382cc2f3c4e0edbd3eaaf68397ec8d662`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 11:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 11:34:50 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17ffa18a69cbc7b277dcdb353703e1d8185f4fef30a309bece9ee6d79ba09a`  
		Last Modified: Tue, 20 Mar 2018 11:37:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:54c0a3d530e0303f1e8304a3a0bdce8e99f7cb3ce6dd4e92945d8ea8873a1cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdb956031fb707b23dbe450c113f66f2b151f89f1d378c3301d203eae94317f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 12:58:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 12:58:40 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 12:58:42 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 12:58:43 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b583147f7ceac7e6a458db31ba2a34ff60ddd6c8ce7b7fa4131032134e1b1b0`  
		Last Modified: Tue, 20 Mar 2018 13:08:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:76566b69f7f56ecf90276b7b6f69f937cb3cc989ad7cfc64fca8f9428e3e9854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321864077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6d65b8e71500fe802de45247c27761b0cca41477ef51610abdd891b4c465d5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:46:00 GMT
RUN mkdir -p /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
WORKDIR /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD RUN bundle install --system
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226dcd0b9b35db32e6871dcd75827319fc7676ec6b4127332889c10a339c8e5a`  
		Last Modified: Sat, 14 Apr 2018 05:47:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.1-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:c0cf23652622b7b9c2e07ce341c0a4bcf3b641c4affcf694c7b46440d5acda53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8f177eb590880b018b5c64f3197f28ca81119fcf1b048cfd6d630a25771a6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 08:38:38 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 08:38:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 08:38:42 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 08:38:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 08:38:46 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 08:38:48 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b64012a30b29a14aa97d58b7a5451a95bfaea81a6af5141892e0be36bf307`  
		Last Modified: Tue, 24 Apr 2018 08:40:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:ac65a4f5a22f6cfd72356f3dd7d513589b07a7ae7b482b5530938875d4a7bc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:7f0bc4596c78db6052ccb915588a3262d12d65237251f74539c048f86f304b01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80104668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c446d415b69debedfbca2f62f8216711207c7beb4524de4ec56a7ac0d72c2b`
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
# Tue, 24 Apr 2018 00:11:18 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:11:19 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:11:26 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:11:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:27 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:11:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:11:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:11:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:11:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:11:44 GMT
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
	-	`sha256:6a5110a0668dce082fe316d17677129e8b1e8b22f2009ade5e87451877de7618`  
		Last Modified: Tue, 24 Apr 2018 00:17:14 GMT  
		Size: 21.6 MB (21591836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6e903d7a988755b35ef0a53e57862702251e8188f33139646b4f040c0fa5f`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f89370b2045bf53557da442d8a94b272589d0481449b6ae58d7f2365d0e872`  
		Last Modified: Tue, 24 Apr 2018 00:17:13 GMT  
		Size: 701.6 KB (701592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe283f67666ea4ac0e806888bc12f6db769af0b70ae0aa5a760a364ce82612c`  
		Last Modified: Tue, 24 Apr 2018 00:17:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:67f7fda3943a9b7e24dab65693ba91f296e160b2b898c7148824e1d09f3a06d9
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
$ docker pull jruby@sha256:fcdd33e051beaf5554747c2d680ca3a3fda223d21641c305b67bd5ba432d4e15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f29afd8f9c44687f2d3a2195c0f270d4017a231d5ed09161c36ba966343c89`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:1367b8eed89d7315c0845145890ce70b037cd84f59642d19923eb2bf4351a923
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90b0068d80ef9c2f19e929293404190173cd244cd935586355679cb9a032d985`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:7a2d486bfc6d291b883aa96511fd514f428d4251b1fc2e35472f6e82d966f883
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd909f60aade63e95be82dc922adfa7bf3be6d92cc272bcb717220990dc623f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:1c417272722179da209d6d893e3354f52d88b3691e00c6048ff5381d497ad9c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321863945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e131743a3cf80274f5bdcd12726e1bada029b6f3ec4fa5aca9a623b3f922255a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:d10238ccb61a5c50550ccc3cdbf3e8a4154870f210c9f035f1e210619241cf3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd9e941c022c8e491264ac4aa02f4c7b92555da1a91013d1405503f27c7daa2`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:d06c09098dfea4d5f1fcf4ca273cea1043079e2d190c308bee1043bfa2b596ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:1b5ae13618c35cc198b299d7daad4152d0817125bb5302e90f16e41509b91deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.9 MB (95881049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff286bc6c19a62e458767a7c1aea9c00abd828a4108e7b8665ae1697cf3a0d93`
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
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:55 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:13:02 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Tue, 24 Apr 2018 00:13:03 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:04 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:13:18 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:13:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:13:19 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 24 Apr 2018 00:13:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:13:20 GMT
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
	-	`sha256:74a397892b996fd5254791c2c6a74808ead96abfe4d748492704cc5d783a9368`  
		Last Modified: Tue, 24 Apr 2018 00:21:24 GMT  
		Size: 21.6 MB (21593377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1059fe8a0427338f11d0da7c7f8559ef67dc09b095cf4c92d9778933cd647e85`  
		Last Modified: Tue, 24 Apr 2018 00:21:20 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a301d79dafa3d07cd954900c80fb058ad9d8bbd6cc4bd32588e53bb78fbbc5d`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 701.5 KB (701545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c31ff1cdb9ae0c81f3b80843f02e8f2cbac82d2ef759d37e2667b0a70469a`  
		Last Modified: Tue, 24 Apr 2018 00:21:21 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:2d125c8bb734591ffaf3b078d323959f4e5034b7f5da4b382346d3b02fc78b51
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
$ docker pull jruby@sha256:0a836b2e452099bedc2946e7fea36a317557e14f9d17227dff7f28a7cca31702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2c07205bb93b1410802d98f16f38e800ebc0845519ffd49c5ebc10141f57f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 00:13:43 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 00:13:43 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560d1846f51cc79c18009474b11394acf0dceeeef7973efa384978308e85a9`  
		Last Modified: Tue, 24 Apr 2018 00:22:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:4c4be14474aa5e77716cdf22556fd008f17dcd15073e6e976741b09db3da5575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7155f5dd25acbc3809bde3cc785e2bf382cc2f3c4e0edbd3eaaf68397ec8d662`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 11:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 11:34:50 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17ffa18a69cbc7b277dcdb353703e1d8185f4fef30a309bece9ee6d79ba09a`  
		Last Modified: Tue, 20 Mar 2018 11:37:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:54c0a3d530e0303f1e8304a3a0bdce8e99f7cb3ce6dd4e92945d8ea8873a1cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdb956031fb707b23dbe450c113f66f2b151f89f1d378c3301d203eae94317f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 12:58:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 12:58:40 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 12:58:42 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 12:58:43 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b583147f7ceac7e6a458db31ba2a34ff60ddd6c8ce7b7fa4131032134e1b1b0`  
		Last Modified: Tue, 20 Mar 2018 13:08:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:76566b69f7f56ecf90276b7b6f69f937cb3cc989ad7cfc64fca8f9428e3e9854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321864077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6d65b8e71500fe802de45247c27761b0cca41477ef51610abdd891b4c465d5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:46:00 GMT
RUN mkdir -p /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
WORKDIR /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD RUN bundle install --system
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226dcd0b9b35db32e6871dcd75827319fc7676ec6b4127332889c10a339c8e5a`  
		Last Modified: Sat, 14 Apr 2018 05:47:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:c0cf23652622b7b9c2e07ce341c0a4bcf3b641c4affcf694c7b46440d5acda53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8f177eb590880b018b5c64f3197f28ca81119fcf1b048cfd6d630a25771a6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 08:38:38 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 08:38:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 08:38:42 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 08:38:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 08:38:46 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 08:38:48 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b64012a30b29a14aa97d58b7a5451a95bfaea81a6af5141892e0be36bf307`  
		Last Modified: Tue, 24 Apr 2018 08:40:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:latest`

```console
$ docker pull jruby@sha256:a224505eb27cb4b06f6c10dcff28104d9a36e06072bb83870bb935f042215c82
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
$ docker pull jruby@sha256:c5fc6fa61cf5e5dc3a9f5fd692015449c915a6be78f73998344b8d503d1c73d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245807933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f1adbaf332bf4532c1f0d2983cf4d929669c8f994f319b9dc1f53b5b07d204`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:17:40 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:08:58 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:09:04 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:09:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:09:20 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:09:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:09:21 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:09:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:09:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5251214c6f992327b625b327ee47d8007e1210312053b31f7a489154e24057d9`  
		Last Modified: Tue, 20 Mar 2018 03:19:39 GMT  
		Size: 6.7 MB (6688713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43566563938480ae45021243b3979d797196986cbee8851bc549f641851d4b8`  
		Last Modified: Tue, 24 Apr 2018 00:14:17 GMT  
		Size: 21.5 MB (21499605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e171959a994a88b2029e21b480d3790876e343e24fe9745655dc716c0efbb3`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc4304092e6b895335e3f26ff04cdc9a150dfd6741638354337a6e2cf7bc60eb`  
		Last Modified: Tue, 24 Apr 2018 00:14:15 GMT  
		Size: 701.6 KB (701551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c660c7fd8885c1c14535d913a5cee373a6599ba2991ead86d5b6fd8b7a1b6b82`  
		Last Modified: Tue, 24 Apr 2018 00:14:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm variant v5

```console
$ docker pull jruby@sha256:bc6630c1c10671844ad82958e8933d55ad8682381c8543a5635d29ae22148390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213655869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff2d5580aeb5c95d36581644d77be17fb4fb37ebaf78714d7227844f8aeb646`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 22:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:46:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:46:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:46:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:08:42 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:08:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:09:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:09:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:30:39 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:30:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:30:43 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:30:44 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:32:24 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:32:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:32:24 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:32:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad585ed3b1d830f1aa3f8a59ac69d690feb269ab4887d71fff937dca15d80d4`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 845.3 KB (845346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8b8e14691c155600235e4417cb181e025c671336a290508080046b9af17bc1`  
		Last Modified: Wed, 14 Mar 2018 23:10:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92e55e02fd90d1a39d3f61b468c712ca789929045a859865f67deef38d68450`  
		Last Modified: Wed, 14 Mar 2018 23:10:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee666f997e8cafec332c44bfc243ae97747ade3616bc22d21d9be655a9af8`  
		Last Modified: Tue, 20 Mar 2018 10:34:00 GMT  
		Size: 126.4 MB (126409522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199174367688c1548a38f73a8ba139d97830d4208d9a948d577881573acd4710`  
		Last Modified: Tue, 20 Mar 2018 10:33:28 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6026a89615cb9f6ef1ea9a4851ddf5d8e2ddff8605e1102f70e39528f706a4d`  
		Last Modified: Tue, 20 Mar 2018 11:35:13 GMT  
		Size: 5.8 MB (5770298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5ec43e348598e689ceb92027564313d9e55b523a074ca19faeb8bec8412e`  
		Last Modified: Tue, 20 Mar 2018 11:35:16 GMT  
		Size: 21.5 MB (21476696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1289b76fd7466c7317b553569763964832f0301605866f5d4a1c131b0f6e5679`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54f6013dd7c72ec47dc88f51c06d8df94800c6e108728f6f696a558e072c2fff`  
		Last Modified: Tue, 20 Mar 2018 11:35:12 GMT  
		Size: 701.9 KB (701936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71516fe8140ec893341abdb1821ae04a8cb04b7d2b6492bdf8982081f9307ccf`  
		Last Modified: Tue, 20 Mar 2018 11:35:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:bd3f3efed17e9ee3a36c677be150c5c20877d33945189c522c2c9d07609bcd83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229164804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6537bb7bff662ea5e287846fd9bb19b3c4980fc6f5d5b5f1ce6f80853b06c965`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:31:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:31:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:31:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:31:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:44:11 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:44:12 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:44:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:52:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:51:09 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:51:10 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:51:11 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:51:19 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:51:20 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:21 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:51:43 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:51:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:51:47 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:51:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:51:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a64fc0e12aebf56150d0d1d4231f0a5d008f1cbbcbf771f2d67ebb7e56dd94`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 838.7 KB (838689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65385707e7645724726348e6321596ade2b859b914648eee13c5a4ceada0d4b5`  
		Last Modified: Wed, 14 Mar 2018 21:38:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afb3d353487af077c3be7a3e49ccaefb261226e6fa355a6038037f42ae17b97`  
		Last Modified: Wed, 14 Mar 2018 21:38:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2b90a2c7eea1dd3bc4396406f9de076e4d288f48a373dcf2c73a9045b7fcc3`  
		Last Modified: Tue, 20 Mar 2018 12:06:29 GMT  
		Size: 142.7 MB (142746449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695ab85807d47cd9617b4098de82a9f8e30768ec36e23358a28b67001c963ac`  
		Last Modified: Tue, 20 Mar 2018 12:05:43 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114d0423bbb11af9e8ae6fe91d56160afa7d7c73db31177bf5e91f92824b83df`  
		Last Modified: Tue, 20 Mar 2018 13:01:21 GMT  
		Size: 6.1 MB (6066351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d307631126899f3bbb047b5881c07a4a0173db83f3d7152321d7d3b1034e60ee`  
		Last Modified: Tue, 20 Mar 2018 13:01:30 GMT  
		Size: 21.5 MB (21476649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91bc76125b6ce82363add70dccf98295bc4bdd7349cb9cfd418d9bb54007152`  
		Last Modified: Tue, 20 Mar 2018 12:59:59 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ab46b5abcfef1b5b03f705d3c2e6cd53c2b3aa9d4cfcf32aab325bad45e1d`  
		Last Modified: Tue, 20 Mar 2018 13:00:14 GMT  
		Size: 701.5 KB (701550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7834fccbaf6e84f72bab0162d9f2089374067b466fa994c8fc468b0592d9a5e`  
		Last Modified: Tue, 20 Mar 2018 12:59:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; 386

```console
$ docker pull jruby@sha256:c32c7f56d7e9ca5f4b18bd0542a3e40e286a9d5e41bb9a76f3ee1fe0c7240aa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253117188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093f87de333dd76e2da2b91d55a02e57c60b4c8a545a5f6984db6c77e7866641`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 14 Apr 2018 02:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:55:44 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:55:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:55:46 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:55:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:56:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:56:33 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 14 Apr 2018 05:44:21 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:44:21 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:44:22 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:44:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:44:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:44:44 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:44:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:44:44 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:44:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:44:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8fa06db025c88ecf69230008f8e19db3a5055c0320b1c419f2d739c13e2e7`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 861.3 KB (861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af29560a9ec606d4cf8408fdea2f2d219bc920d1dd365e4c91028a9b981513`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed77265a4cc7e78fd6680e15d0b653aaa76c38d8b74a7578d8b5e6aae73aacd`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a704e81bdf46db0850e1c0f68c70839d470ebd5d0b28a9c2a4d020c2521cc1`  
		Last Modified: Sat, 14 Apr 2018 03:19:21 GMT  
		Size: 158.1 MB (158148536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1871774ee30b32b10725bc6d39712e9511500fc240be44355dd56f0eb10bc38b`  
		Last Modified: Sat, 14 Apr 2018 03:18:42 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdead514a604712837a13715c39d6bf166ebbd7abc09997bc9b778c837702245`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 10.1 MB (10106809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dd8e3e33386b3a1f14fc772c3611a0cf3cef039dc408371320f86dc3de89cf`  
		Last Modified: Sat, 14 Apr 2018 05:46:15 GMT  
		Size: 21.5 MB (21476678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0acce54b7545b3e5213d660ad6597fb36cf59ab9798160f0a7a89202e9f5ca1`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6c6d99fddbba4f7239521125ab46a330787a22941c16b9288dcab885f0ce0`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 701.5 KB (701546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a5b56cd2b3ba85ce166f2fdc59e3564edb8113b071775ec5fd008bedc42db6`  
		Last Modified: Sat, 14 Apr 2018 05:46:11 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; ppc64le

```console
$ docker pull jruby@sha256:73dc864fe5236f3e630257902bfc60356337a8b7d07b6535129cbfed3e96e246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236327087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6cec789c404a2b017143c9b2cb5735759c51e8803e21c2a3cd8cfd5835104d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:51 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:37:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:38:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:38:05 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:40:37 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:40:39 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:40:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:47:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:48:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:44:51 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:32:34 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:32:38 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:33:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:33:13 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:33:42 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:33:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:33:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:33:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cb372d4693af24ddb9bcc199fd08c326a0dd7c0592b658541adccc88f0e1bb`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 848.1 KB (848068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e066842ca963446b46bf5b18a3dd688eaf6648d6e3af20a67b9cbce688844`  
		Last Modified: Thu, 15 Mar 2018 06:05:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa9900427d9762c8ca5f72bc3aee5eee315b06fd8e756218ff155a92b08704b`  
		Last Modified: Thu, 15 Mar 2018 06:05:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786b0c3c45dae2471e404f839f74574b2ab52ecc004ce9240e7a63b9bf1c9722`  
		Last Modified: Tue, 20 Mar 2018 12:17:34 GMT  
		Size: 146.3 MB (146333668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5e6a52612acc4725961993a88e4f0b70becd2763d95071c555e76de90ab4bb`  
		Last Modified: Tue, 20 Mar 2018 12:17:04 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19211945ba0d1252a825c52d88ef76653561b27a6274e7cd27995b188a4ca714`  
		Last Modified: Tue, 20 Mar 2018 12:50:54 GMT  
		Size: 6.7 MB (6664977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2bfbcfee71477d690d2e47e7f2f856855199556faa84d94118c4f5a85ad4be`  
		Last Modified: Tue, 24 Apr 2018 08:39:12 GMT  
		Size: 21.5 MB (21499424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578a712c446a50d9ce6d13d17d8672530da97c8271d46cfe230e7857ed821ef7`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465e694c7ee3637e4e6b7ab2702e38dfd3a12a3ef43544f71b51245a651c678`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 701.7 KB (701739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5683d279e21cae8afe16f58124ef3519f7a90b624252d876b28311b2e91e54c5`  
		Last Modified: Tue, 24 Apr 2018 08:39:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
