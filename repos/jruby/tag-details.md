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
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-alpine`

```console
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jdk`

```console
$ docker pull jruby@sha256:6db030c83d9e1f9fb06f60702bff37c7744415a08220ca7de0639f4758f71f97
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
$ docker pull jruby@sha256:e03585de6e8da8e4a5509e4bbb9444e84f758a4a55f3e112234ec690972ce86f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276259776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3576037f078698aff39b53211b9ac02a3f952c0d7c588a510dbd7570de1a594b`
-	Default Command: `["irb"]`

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
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:56:39 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:56:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:56:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:56:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:56:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:01 GMT
CMD ["irb"]
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
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556d36d6399a74ad77a24090c1dce86cc11ed9834340d3e23079b279ee3de93d`  
		Last Modified: Wed, 27 Jun 2018 06:01:26 GMT  
		Size: 6.7 MB (6711986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9a405d9977541b99b76f357cd70de70121c40126be501c5b0d078cd1e982a`  
		Last Modified: Wed, 27 Jun 2018 06:01:28 GMT  
		Size: 23.0 MB (22969441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0fa267a71ba97c52898e314f03665319f478335bc1162761f2438624588be5`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fea1defc28c24a3039b2334d718de7de49d5d1e1a1a2f9998df4c92856164b`  
		Last Modified: Wed, 27 Jun 2018 06:01:24 GMT  
		Size: 948.6 KB (948574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e531fa843dfdc66a7088fd61cb6f8ce8263c926a1129439abc3e3bf1983c8e1`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:ee5536d28e5d14a92cdba2e939939a11727d77e98fa54432706600fb2ad3ee9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258483338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85c128d477241d3ec16fc65e8f4354f758059a04354e70aac4cc02fce7e089`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:33:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:34:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:34:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:49:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:49:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:49:48 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:49 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:52:06 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:52:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:52:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:52:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d30a64dd4efa1965d8eba16d58622309e89bc7bc341e87d4b7da4b11590f61`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 884.8 KB (884771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178af86db29166d3a14dee3c51aa64cdc3425bc8885a52389f6bf45d997a3d17`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786eb29711a6246e3903e279cf2105ab5d5b2f26e1a57ee649c36ec19088b5e`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d6567a1cba1958fabd4792124c6bda49aaa9219fc6839e35ae43fe460b518`  
		Last Modified: Wed, 27 Jun 2018 12:53:45 GMT  
		Size: 121.3 MB (121314260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543d2de99506c467b67f2206d2316aaf96230c550f258610b879bd2253c0cc6`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80347d1b2190779c3201fad900b0dfd5751a1ebedbe07a6b94f4ec84ecae0442`  
		Last Modified: Wed, 27 Jun 2018 15:53:41 GMT  
		Size: 5.8 MB (5793677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d660a569795ebec70573126e72c7417ae78baf847006635a2d0875b00f136`  
		Last Modified: Wed, 27 Jun 2018 15:53:49 GMT  
		Size: 23.0 MB (22969456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81dbe10bc2cffc2b70295fb7f1f3b94fa350a38e5d9083d44cf093435e347f1`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5a587ff7ebf57aef7e0d8e24581a51656473284ff1c12215c7b988d04a51ef`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 949.0 KB (948987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097af47b6137c3252d241ff9ea52de565af525847a06c0adbd4cf2be859b3ba6`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d405faf441a414ed970f587a7b62c2d813abd4b0f724a50b8e4b4f112d51fab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258266567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70dd5679a3d6ef48551df16594f3c8f4864f57bbdc96d414e216abb2ffdc57a`
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
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:42:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:42:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:42:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:43:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:43:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:43:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:43:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:43:26 GMT
CMD ["irb"]
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
	-	`sha256:55b980bd3c661e822d12798462cedf623196c449882cb3c5269cdbb4fc80c1e8`  
		Last Modified: Wed, 30 May 2018 08:47:19 GMT  
		Size: 23.0 MB (22969460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3adf85f36cfcfb39849085ecd39c9747a6b1a18e262eb4a7d1bfa5974dd26ce`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aea38eb1ab24d6ec3a5cd27f8f1f85932b14e0a9f3ea92fdaae4dbe61aced2`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 948.7 KB (948662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c199f96addf27b3864cabeb6b41a085c6d9b893fe0d2cb4347132a67f087179`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:915718afdbcdd4cc5b78f92465134036b6708d94fca01c04ec7f90ada73ae426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282228888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3d4ea13025ee8513b306820ac2df1db93a5936eb119a8fee4f50ae063b12ef`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:28:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:28:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:29:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:29:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:31:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:31:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:31:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:31:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:31:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2904964ccebba6fb4b44cdc0fc48ed3cba667c104bd3418d8364f6a073c782e8`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 900.1 KB (900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fded8d8b20587143139608c99e097919cf777fed7760d46851956fed14d5e`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45addecb383b5fd97496c587c884d9a93732302e781825340004ceecb538c1`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3748c71ca1596fc810d3677935a06ac9e7957f2c114291c9ed2b75a5759de88`  
		Last Modified: Wed, 06 Jun 2018 13:56:50 GMT  
		Size: 134.0 MB (134031743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc03dc5a7cb62dfeef2aabdd340c8b08b0cf4471a669a46c6d6c15e662ba6e`  
		Last Modified: Wed, 06 Jun 2018 13:56:13 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988edfaa63bf58b1becdacaf204b44f6930852c758eeab04be137d71f0f858b`  
		Last Modified: Wed, 06 Jun 2018 15:33:57 GMT  
		Size: 10.1 MB (10128460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e0207b8cc507b0016584607122c546a03d9444f156aaceee30766ed95b94c`  
		Last Modified: Wed, 06 Jun 2018 15:34:04 GMT  
		Size: 23.0 MB (22969403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65272bd1811e25183e91f39fdf247cc95e38454fa9006e4d6f4239777109ac`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c184864e8755ab220dccd4ef56fe97abf7c8c5b07533dee72dde2ad1d1b01a62`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 948.6 KB (948602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b108528d0e9ae3f0a96af9f82a60b9d9d701ebc147ccf5e303989048615d260`  
		Last Modified: Wed, 06 Jun 2018 15:33:32 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:e4cffac2f34407af16dcaff0312839f1c1c5d1fb576ff1b685bb3240b2633e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484a3b1f10d31533d4244db5e9c9252162d2e3fe08b326a65ade2aae511b7aea`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:38:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:38:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:44:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:44:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:31:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:31:14 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:31:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:31:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:31:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:31:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:31:54 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:31:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:32:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:32:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44de56163033dccd4d94f096a072bad390c18b35174eb640dd7384763bad08b`  
		Last Modified: Wed, 27 Jun 2018 14:08:11 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4959c44ded2a8d0320645e825409ae94fcb6c5df3cdfbd404a0719ea9f02f39`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485d2cfa73799f5adc000b6c0d5754cbaffee826690f6a6ab540c912166d3ee`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd4d3391f4296a1eaf68259d9cc553ab2d07f2bebe848689096fc759f78183`  
		Last Modified: Wed, 27 Jun 2018 14:09:14 GMT  
		Size: 124.1 MB (124072225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac417867867a19bbf801b38f16240a4c20ce9cacd5ed143b984e405e301515c7`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 272.1 KB (272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957382b0bc560ab13f558bb59aa4a687801745237b063792c0fc4a652fa109a9`  
		Last Modified: Wed, 27 Jun 2018 19:34:28 GMT  
		Size: 6.7 MB (6688959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad5ade35d842ef55baf03613b24f680aedefe451ec082015756f2366211ec`  
		Last Modified: Wed, 27 Jun 2018 19:34:29 GMT  
		Size: 23.0 MB (22969517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5221da3fd7551852bfca1108ef09e770b807baa0c2857d31e13e9d288f45d6`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d928c7a78bb7899f91a8868c97c3a4c999e3236af0f37e027a2e5a9eff61142`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 948.8 KB (948781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f400e87b9defa933f65029d6d733b840a75d063f58c6a594458189b168fc8360`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jdk-alpine`

```console
$ docker pull jruby@sha256:d38ce04f7b8402b9a686bf66d4d939892fa8ba6850dd22523debe02f0d87801b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:200eacb0be095ddab7f9634ea00ab76977c11cb9a6887c4d51cc43dc484bea98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98082911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8268ee1d40c1fd6cbdefc2b6ee2a80dda4f08dae7b9adfc263b98653387ba4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:57:16 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:57:22 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:57:22 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:23 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:38 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1607a225063213028c67560efdfa63f339869cfebadb3e5ad10557dd8f5044`  
		Last Modified: Wed, 27 Jun 2018 06:02:27 GMT  
		Size: 1.7 MB (1687573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91fe27deeb43006fd25dbb45decbd17560fd6a16253ab676e3109cd4fc1f2d6`  
		Last Modified: Wed, 27 Jun 2018 06:02:30 GMT  
		Size: 23.1 MB (23062282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa9ac70c9ecf0c648a1811ff3a97de3f3e82bcc352a35e504564cf27a5c1b6`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e618956200a64bebdbcf1b8642f7ff881914036ddb33f486aa922120f936c`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 948.6 KB (948616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a83c72c4e9852a08945b2b8cd54448459cad6e8a0d1d37edd7b6202a8086c1`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jre`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0.0-jre-alpine`

```console
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
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
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jdk`

```console
$ docker pull jruby@sha256:6db030c83d9e1f9fb06f60702bff37c7744415a08220ca7de0639f4758f71f97
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
$ docker pull jruby@sha256:e03585de6e8da8e4a5509e4bbb9444e84f758a4a55f3e112234ec690972ce86f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276259776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3576037f078698aff39b53211b9ac02a3f952c0d7c588a510dbd7570de1a594b`
-	Default Command: `["irb"]`

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
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:56:39 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:56:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:56:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:56:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:56:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:01 GMT
CMD ["irb"]
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
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556d36d6399a74ad77a24090c1dce86cc11ed9834340d3e23079b279ee3de93d`  
		Last Modified: Wed, 27 Jun 2018 06:01:26 GMT  
		Size: 6.7 MB (6711986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9a405d9977541b99b76f357cd70de70121c40126be501c5b0d078cd1e982a`  
		Last Modified: Wed, 27 Jun 2018 06:01:28 GMT  
		Size: 23.0 MB (22969441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0fa267a71ba97c52898e314f03665319f478335bc1162761f2438624588be5`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fea1defc28c24a3039b2334d718de7de49d5d1e1a1a2f9998df4c92856164b`  
		Last Modified: Wed, 27 Jun 2018 06:01:24 GMT  
		Size: 948.6 KB (948574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e531fa843dfdc66a7088fd61cb6f8ce8263c926a1129439abc3e3bf1983c8e1`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:ee5536d28e5d14a92cdba2e939939a11727d77e98fa54432706600fb2ad3ee9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258483338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85c128d477241d3ec16fc65e8f4354f758059a04354e70aac4cc02fce7e089`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:33:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:34:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:34:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:49:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:49:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:49:48 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:49 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:52:06 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:52:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:52:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:52:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d30a64dd4efa1965d8eba16d58622309e89bc7bc341e87d4b7da4b11590f61`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 884.8 KB (884771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178af86db29166d3a14dee3c51aa64cdc3425bc8885a52389f6bf45d997a3d17`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786eb29711a6246e3903e279cf2105ab5d5b2f26e1a57ee649c36ec19088b5e`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d6567a1cba1958fabd4792124c6bda49aaa9219fc6839e35ae43fe460b518`  
		Last Modified: Wed, 27 Jun 2018 12:53:45 GMT  
		Size: 121.3 MB (121314260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543d2de99506c467b67f2206d2316aaf96230c550f258610b879bd2253c0cc6`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80347d1b2190779c3201fad900b0dfd5751a1ebedbe07a6b94f4ec84ecae0442`  
		Last Modified: Wed, 27 Jun 2018 15:53:41 GMT  
		Size: 5.8 MB (5793677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d660a569795ebec70573126e72c7417ae78baf847006635a2d0875b00f136`  
		Last Modified: Wed, 27 Jun 2018 15:53:49 GMT  
		Size: 23.0 MB (22969456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81dbe10bc2cffc2b70295fb7f1f3b94fa350a38e5d9083d44cf093435e347f1`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5a587ff7ebf57aef7e0d8e24581a51656473284ff1c12215c7b988d04a51ef`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 949.0 KB (948987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097af47b6137c3252d241ff9ea52de565af525847a06c0adbd4cf2be859b3ba6`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d405faf441a414ed970f587a7b62c2d813abd4b0f724a50b8e4b4f112d51fab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258266567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70dd5679a3d6ef48551df16594f3c8f4864f57bbdc96d414e216abb2ffdc57a`
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
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:42:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:42:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:42:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:43:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:43:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:43:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:43:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:43:26 GMT
CMD ["irb"]
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
	-	`sha256:55b980bd3c661e822d12798462cedf623196c449882cb3c5269cdbb4fc80c1e8`  
		Last Modified: Wed, 30 May 2018 08:47:19 GMT  
		Size: 23.0 MB (22969460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3adf85f36cfcfb39849085ecd39c9747a6b1a18e262eb4a7d1bfa5974dd26ce`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aea38eb1ab24d6ec3a5cd27f8f1f85932b14e0a9f3ea92fdaae4dbe61aced2`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 948.7 KB (948662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c199f96addf27b3864cabeb6b41a085c6d9b893fe0d2cb4347132a67f087179`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; 386

```console
$ docker pull jruby@sha256:915718afdbcdd4cc5b78f92465134036b6708d94fca01c04ec7f90ada73ae426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282228888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3d4ea13025ee8513b306820ac2df1db93a5936eb119a8fee4f50ae063b12ef`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:28:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:28:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:29:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:29:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:31:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:31:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:31:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:31:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:31:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2904964ccebba6fb4b44cdc0fc48ed3cba667c104bd3418d8364f6a073c782e8`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 900.1 KB (900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fded8d8b20587143139608c99e097919cf777fed7760d46851956fed14d5e`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45addecb383b5fd97496c587c884d9a93732302e781825340004ceecb538c1`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3748c71ca1596fc810d3677935a06ac9e7957f2c114291c9ed2b75a5759de88`  
		Last Modified: Wed, 06 Jun 2018 13:56:50 GMT  
		Size: 134.0 MB (134031743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc03dc5a7cb62dfeef2aabdd340c8b08b0cf4471a669a46c6d6c15e662ba6e`  
		Last Modified: Wed, 06 Jun 2018 13:56:13 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988edfaa63bf58b1becdacaf204b44f6930852c758eeab04be137d71f0f858b`  
		Last Modified: Wed, 06 Jun 2018 15:33:57 GMT  
		Size: 10.1 MB (10128460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e0207b8cc507b0016584607122c546a03d9444f156aaceee30766ed95b94c`  
		Last Modified: Wed, 06 Jun 2018 15:34:04 GMT  
		Size: 23.0 MB (22969403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65272bd1811e25183e91f39fdf247cc95e38454fa9006e4d6f4239777109ac`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c184864e8755ab220dccd4ef56fe97abf7c8c5b07533dee72dde2ad1d1b01a62`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 948.6 KB (948602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b108528d0e9ae3f0a96af9f82a60b9d9d701ebc147ccf5e303989048615d260`  
		Last Modified: Wed, 06 Jun 2018 15:33:32 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:e4cffac2f34407af16dcaff0312839f1c1c5d1fb576ff1b685bb3240b2633e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484a3b1f10d31533d4244db5e9c9252162d2e3fe08b326a65ade2aae511b7aea`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:38:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:38:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:44:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:44:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:31:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:31:14 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:31:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:31:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:31:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:31:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:31:54 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:31:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:32:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:32:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44de56163033dccd4d94f096a072bad390c18b35174eb640dd7384763bad08b`  
		Last Modified: Wed, 27 Jun 2018 14:08:11 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4959c44ded2a8d0320645e825409ae94fcb6c5df3cdfbd404a0719ea9f02f39`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485d2cfa73799f5adc000b6c0d5754cbaffee826690f6a6ab540c912166d3ee`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd4d3391f4296a1eaf68259d9cc553ab2d07f2bebe848689096fc759f78183`  
		Last Modified: Wed, 27 Jun 2018 14:09:14 GMT  
		Size: 124.1 MB (124072225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac417867867a19bbf801b38f16240a4c20ce9cacd5ed143b984e405e301515c7`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 272.1 KB (272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957382b0bc560ab13f558bb59aa4a687801745237b063792c0fc4a652fa109a9`  
		Last Modified: Wed, 27 Jun 2018 19:34:28 GMT  
		Size: 6.7 MB (6688959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad5ade35d842ef55baf03613b24f680aedefe451ec082015756f2366211ec`  
		Last Modified: Wed, 27 Jun 2018 19:34:29 GMT  
		Size: 23.0 MB (22969517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5221da3fd7551852bfca1108ef09e770b807baa0c2857d31e13e9d288f45d6`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d928c7a78bb7899f91a8868c97c3a4c999e3236af0f37e027a2e5a9eff61142`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 948.8 KB (948781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f400e87b9defa933f65029d6d733b840a75d063f58c6a594458189b168fc8360`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jdk-alpine`

```console
$ docker pull jruby@sha256:d38ce04f7b8402b9a686bf66d4d939892fa8ba6850dd22523debe02f0d87801b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:200eacb0be095ddab7f9634ea00ab76977c11cb9a6887c4d51cc43dc484bea98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98082911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8268ee1d40c1fd6cbdefc2b6ee2a80dda4f08dae7b9adfc263b98653387ba4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:57:16 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:57:22 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:57:22 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:23 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:38 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1607a225063213028c67560efdfa63f339869cfebadb3e5ad10557dd8f5044`  
		Last Modified: Wed, 27 Jun 2018 06:02:27 GMT  
		Size: 1.7 MB (1687573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91fe27deeb43006fd25dbb45decbd17560fd6a16253ab676e3109cd4fc1f2d6`  
		Last Modified: Wed, 27 Jun 2018 06:02:30 GMT  
		Size: 23.1 MB (23062282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa9ac70c9ecf0c648a1811ff3a97de3f3e82bcc352a35e504564cf27a5c1b6`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e618956200a64bebdbcf1b8642f7ff881914036ddb33f486aa922120f936c`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 948.6 KB (948616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a83c72c4e9852a08945b2b8cd54448459cad6e8a0d1d37edd7b6202a8086c1`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jre`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2.0-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2.0-jre-alpine`

```console
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2.0-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
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
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jdk`

```console
$ docker pull jruby@sha256:6db030c83d9e1f9fb06f60702bff37c7744415a08220ca7de0639f4758f71f97
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
$ docker pull jruby@sha256:e03585de6e8da8e4a5509e4bbb9444e84f758a4a55f3e112234ec690972ce86f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276259776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3576037f078698aff39b53211b9ac02a3f952c0d7c588a510dbd7570de1a594b`
-	Default Command: `["irb"]`

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
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:56:39 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:56:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:56:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:56:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:56:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:01 GMT
CMD ["irb"]
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
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556d36d6399a74ad77a24090c1dce86cc11ed9834340d3e23079b279ee3de93d`  
		Last Modified: Wed, 27 Jun 2018 06:01:26 GMT  
		Size: 6.7 MB (6711986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9a405d9977541b99b76f357cd70de70121c40126be501c5b0d078cd1e982a`  
		Last Modified: Wed, 27 Jun 2018 06:01:28 GMT  
		Size: 23.0 MB (22969441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0fa267a71ba97c52898e314f03665319f478335bc1162761f2438624588be5`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fea1defc28c24a3039b2334d718de7de49d5d1e1a1a2f9998df4c92856164b`  
		Last Modified: Wed, 27 Jun 2018 06:01:24 GMT  
		Size: 948.6 KB (948574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e531fa843dfdc66a7088fd61cb6f8ce8263c926a1129439abc3e3bf1983c8e1`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:ee5536d28e5d14a92cdba2e939939a11727d77e98fa54432706600fb2ad3ee9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258483338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85c128d477241d3ec16fc65e8f4354f758059a04354e70aac4cc02fce7e089`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:33:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:34:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:34:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:49:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:49:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:49:48 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:49 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:52:06 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:52:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:52:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:52:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d30a64dd4efa1965d8eba16d58622309e89bc7bc341e87d4b7da4b11590f61`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 884.8 KB (884771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178af86db29166d3a14dee3c51aa64cdc3425bc8885a52389f6bf45d997a3d17`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786eb29711a6246e3903e279cf2105ab5d5b2f26e1a57ee649c36ec19088b5e`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d6567a1cba1958fabd4792124c6bda49aaa9219fc6839e35ae43fe460b518`  
		Last Modified: Wed, 27 Jun 2018 12:53:45 GMT  
		Size: 121.3 MB (121314260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543d2de99506c467b67f2206d2316aaf96230c550f258610b879bd2253c0cc6`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80347d1b2190779c3201fad900b0dfd5751a1ebedbe07a6b94f4ec84ecae0442`  
		Last Modified: Wed, 27 Jun 2018 15:53:41 GMT  
		Size: 5.8 MB (5793677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d660a569795ebec70573126e72c7417ae78baf847006635a2d0875b00f136`  
		Last Modified: Wed, 27 Jun 2018 15:53:49 GMT  
		Size: 23.0 MB (22969456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81dbe10bc2cffc2b70295fb7f1f3b94fa350a38e5d9083d44cf093435e347f1`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5a587ff7ebf57aef7e0d8e24581a51656473284ff1c12215c7b988d04a51ef`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 949.0 KB (948987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097af47b6137c3252d241ff9ea52de565af525847a06c0adbd4cf2be859b3ba6`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d405faf441a414ed970f587a7b62c2d813abd4b0f724a50b8e4b4f112d51fab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258266567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70dd5679a3d6ef48551df16594f3c8f4864f57bbdc96d414e216abb2ffdc57a`
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
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:42:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:42:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:42:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:43:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:43:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:43:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:43:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:43:26 GMT
CMD ["irb"]
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
	-	`sha256:55b980bd3c661e822d12798462cedf623196c449882cb3c5269cdbb4fc80c1e8`  
		Last Modified: Wed, 30 May 2018 08:47:19 GMT  
		Size: 23.0 MB (22969460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3adf85f36cfcfb39849085ecd39c9747a6b1a18e262eb4a7d1bfa5974dd26ce`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aea38eb1ab24d6ec3a5cd27f8f1f85932b14e0a9f3ea92fdaae4dbe61aced2`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 948.7 KB (948662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c199f96addf27b3864cabeb6b41a085c6d9b893fe0d2cb4347132a67f087179`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; 386

```console
$ docker pull jruby@sha256:915718afdbcdd4cc5b78f92465134036b6708d94fca01c04ec7f90ada73ae426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282228888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3d4ea13025ee8513b306820ac2df1db93a5936eb119a8fee4f50ae063b12ef`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:28:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:28:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:29:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:29:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:31:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:31:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:31:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:31:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:31:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2904964ccebba6fb4b44cdc0fc48ed3cba667c104bd3418d8364f6a073c782e8`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 900.1 KB (900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fded8d8b20587143139608c99e097919cf777fed7760d46851956fed14d5e`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45addecb383b5fd97496c587c884d9a93732302e781825340004ceecb538c1`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3748c71ca1596fc810d3677935a06ac9e7957f2c114291c9ed2b75a5759de88`  
		Last Modified: Wed, 06 Jun 2018 13:56:50 GMT  
		Size: 134.0 MB (134031743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc03dc5a7cb62dfeef2aabdd340c8b08b0cf4471a669a46c6d6c15e662ba6e`  
		Last Modified: Wed, 06 Jun 2018 13:56:13 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988edfaa63bf58b1becdacaf204b44f6930852c758eeab04be137d71f0f858b`  
		Last Modified: Wed, 06 Jun 2018 15:33:57 GMT  
		Size: 10.1 MB (10128460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e0207b8cc507b0016584607122c546a03d9444f156aaceee30766ed95b94c`  
		Last Modified: Wed, 06 Jun 2018 15:34:04 GMT  
		Size: 23.0 MB (22969403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65272bd1811e25183e91f39fdf247cc95e38454fa9006e4d6f4239777109ac`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c184864e8755ab220dccd4ef56fe97abf7c8c5b07533dee72dde2ad1d1b01a62`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 948.6 KB (948602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b108528d0e9ae3f0a96af9f82a60b9d9d701ebc147ccf5e303989048615d260`  
		Last Modified: Wed, 06 Jun 2018 15:33:32 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:e4cffac2f34407af16dcaff0312839f1c1c5d1fb576ff1b685bb3240b2633e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484a3b1f10d31533d4244db5e9c9252162d2e3fe08b326a65ade2aae511b7aea`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:38:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:38:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:44:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:44:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:31:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:31:14 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:31:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:31:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:31:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:31:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:31:54 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:31:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:32:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:32:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44de56163033dccd4d94f096a072bad390c18b35174eb640dd7384763bad08b`  
		Last Modified: Wed, 27 Jun 2018 14:08:11 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4959c44ded2a8d0320645e825409ae94fcb6c5df3cdfbd404a0719ea9f02f39`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485d2cfa73799f5adc000b6c0d5754cbaffee826690f6a6ab540c912166d3ee`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd4d3391f4296a1eaf68259d9cc553ab2d07f2bebe848689096fc759f78183`  
		Last Modified: Wed, 27 Jun 2018 14:09:14 GMT  
		Size: 124.1 MB (124072225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac417867867a19bbf801b38f16240a4c20ce9cacd5ed143b984e405e301515c7`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 272.1 KB (272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957382b0bc560ab13f558bb59aa4a687801745237b063792c0fc4a652fa109a9`  
		Last Modified: Wed, 27 Jun 2018 19:34:28 GMT  
		Size: 6.7 MB (6688959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad5ade35d842ef55baf03613b24f680aedefe451ec082015756f2366211ec`  
		Last Modified: Wed, 27 Jun 2018 19:34:29 GMT  
		Size: 23.0 MB (22969517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5221da3fd7551852bfca1108ef09e770b807baa0c2857d31e13e9d288f45d6`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d928c7a78bb7899f91a8868c97c3a4c999e3236af0f37e027a2e5a9eff61142`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 948.8 KB (948781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f400e87b9defa933f65029d6d733b840a75d063f58c6a594458189b168fc8360`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jdk-alpine`

```console
$ docker pull jruby@sha256:d38ce04f7b8402b9a686bf66d4d939892fa8ba6850dd22523debe02f0d87801b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:200eacb0be095ddab7f9634ea00ab76977c11cb9a6887c4d51cc43dc484bea98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98082911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8268ee1d40c1fd6cbdefc2b6ee2a80dda4f08dae7b9adfc263b98653387ba4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:57:16 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:57:22 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:57:22 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:23 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:38 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1607a225063213028c67560efdfa63f339869cfebadb3e5ad10557dd8f5044`  
		Last Modified: Wed, 27 Jun 2018 06:02:27 GMT  
		Size: 1.7 MB (1687573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91fe27deeb43006fd25dbb45decbd17560fd6a16253ab676e3109cd4fc1f2d6`  
		Last Modified: Wed, 27 Jun 2018 06:02:30 GMT  
		Size: 23.1 MB (23062282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa9ac70c9ecf0c648a1811ff3a97de3f3e82bcc352a35e504564cf27a5c1b6`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e618956200a64bebdbcf1b8642f7ff881914036ddb33f486aa922120f936c`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 948.6 KB (948616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a83c72c4e9852a08945b2b8cd54448459cad6e8a0d1d37edd7b6202a8086c1`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jre`

```console
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9.2-jre` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9.2-jre-alpine`

```console
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9.2-jre-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
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
$ docker pull jruby@sha256:5046fb2dd0b4a75c9c7723de417dfc13174bd433d68aea116cd3cebbe4111aba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:0910834dc2d8d8a1af691715aa7d4722ebe5ab3bebe27e3d07e1ea8519e5dc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82299373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0780e5311e79f3178b4cc9808a91089873e4bd16b06ffaef398dfc34b5f321b`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:55:58 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:04 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:56:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:05 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:56:21 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:56:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:56:22 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:56:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:56:23 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f05fa9027f3926bfcaa6ca3e8eb887f9494960eb821cc16cb29d3e9d10a73`  
		Last Modified: Wed, 27 Jun 2018 05:59:50 GMT  
		Size: 1.7 MB (1686700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409c79059cff900fa1df3721c28914a8ff7a3733f994df3f7336d913ad5792a0`  
		Last Modified: Wed, 27 Jun 2018 05:59:54 GMT  
		Size: 23.1 MB (23061033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8919576529c2ad29fd311b4d75bb44c1831f8b10414de8f7174fbdd7bcfa6d24`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c186c80a06eae38501602c7750db03611484bc107d3f7584c20b4b0f1185001`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 948.6 KB (948596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bed7576172cb5476e6b8cec853fd9b69ac6d4ef5a02f1ecbcfc01731824f0eb`  
		Last Modified: Wed, 27 Jun 2018 05:59:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:6db030c83d9e1f9fb06f60702bff37c7744415a08220ca7de0639f4758f71f97
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
$ docker pull jruby@sha256:e03585de6e8da8e4a5509e4bbb9444e84f758a4a55f3e112234ec690972ce86f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276259776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3576037f078698aff39b53211b9ac02a3f952c0d7c588a510dbd7570de1a594b`
-	Default Command: `["irb"]`

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
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:56:39 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:56:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:56:40 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:56:45 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:56:46 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:56:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:57:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:01 GMT
CMD ["irb"]
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
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556d36d6399a74ad77a24090c1dce86cc11ed9834340d3e23079b279ee3de93d`  
		Last Modified: Wed, 27 Jun 2018 06:01:26 GMT  
		Size: 6.7 MB (6711986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9a405d9977541b99b76f357cd70de70121c40126be501c5b0d078cd1e982a`  
		Last Modified: Wed, 27 Jun 2018 06:01:28 GMT  
		Size: 23.0 MB (22969441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0fa267a71ba97c52898e314f03665319f478335bc1162761f2438624588be5`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fea1defc28c24a3039b2334d718de7de49d5d1e1a1a2f9998df4c92856164b`  
		Last Modified: Wed, 27 Jun 2018 06:01:24 GMT  
		Size: 948.6 KB (948574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e531fa843dfdc66a7088fd61cb6f8ce8263c926a1129439abc3e3bf1983c8e1`  
		Last Modified: Wed, 27 Jun 2018 06:01:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:ee5536d28e5d14a92cdba2e939939a11727d77e98fa54432706600fb2ad3ee9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258483338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc85c128d477241d3ec16fc65e8f4354f758059a04354e70aac4cc02fce7e089`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:33:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:33:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:33:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:33:08 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:33:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:34:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:34:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:49:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:49:43 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:49:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:49:48 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:49 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:52:06 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:52:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:52:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:52:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:52:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d30a64dd4efa1965d8eba16d58622309e89bc7bc341e87d4b7da4b11590f61`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 884.8 KB (884771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178af86db29166d3a14dee3c51aa64cdc3425bc8885a52389f6bf45d997a3d17`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d786eb29711a6246e3903e279cf2105ab5d5b2f26e1a57ee649c36ec19088b5e`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0d6567a1cba1958fabd4792124c6bda49aaa9219fc6839e35ae43fe460b518`  
		Last Modified: Wed, 27 Jun 2018 12:53:45 GMT  
		Size: 121.3 MB (121314260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543d2de99506c467b67f2206d2316aaf96230c550f258610b879bd2253c0cc6`  
		Last Modified: Wed, 27 Jun 2018 12:53:16 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80347d1b2190779c3201fad900b0dfd5751a1ebedbe07a6b94f4ec84ecae0442`  
		Last Modified: Wed, 27 Jun 2018 15:53:41 GMT  
		Size: 5.8 MB (5793677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4d660a569795ebec70573126e72c7417ae78baf847006635a2d0875b00f136`  
		Last Modified: Wed, 27 Jun 2018 15:53:49 GMT  
		Size: 23.0 MB (22969456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f81dbe10bc2cffc2b70295fb7f1f3b94fa350a38e5d9083d44cf093435e347f1`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5a587ff7ebf57aef7e0d8e24581a51656473284ff1c12215c7b988d04a51ef`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 949.0 KB (948987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097af47b6137c3252d241ff9ea52de565af525847a06c0adbd4cf2be859b3ba6`  
		Last Modified: Wed, 27 Jun 2018 15:53:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:d405faf441a414ed970f587a7b62c2d813abd4b0f724a50b8e4b4f112d51fab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258266567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f70dd5679a3d6ef48551df16594f3c8f4864f57bbdc96d414e216abb2ffdc57a`
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
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:42:30 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:42:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:42:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:42:47 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:43:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:43:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:43:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:43:23 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:43:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:43:26 GMT
CMD ["irb"]
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
	-	`sha256:55b980bd3c661e822d12798462cedf623196c449882cb3c5269cdbb4fc80c1e8`  
		Last Modified: Wed, 30 May 2018 08:47:19 GMT  
		Size: 23.0 MB (22969460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3adf85f36cfcfb39849085ecd39c9747a6b1a18e262eb4a7d1bfa5974dd26ce`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20aea38eb1ab24d6ec3a5cd27f8f1f85932b14e0a9f3ea92fdaae4dbe61aced2`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 948.7 KB (948662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c199f96addf27b3864cabeb6b41a085c6d9b893fe0d2cb4347132a67f087179`  
		Last Modified: Wed, 30 May 2018 08:47:14 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:915718afdbcdd4cc5b78f92465134036b6708d94fca01c04ec7f90ada73ae426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282228888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3d4ea13025ee8513b306820ac2df1db93a5936eb119a8fee4f50ae063b12ef`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:28:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:28:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:28:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:28:07 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:28:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:29:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:29:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:30:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:30:39 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:31:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:31:26 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:27 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:31:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:31:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:31:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:31:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:31:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2904964ccebba6fb4b44cdc0fc48ed3cba667c104bd3418d8364f6a073c782e8`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 900.1 KB (900106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fded8d8b20587143139608c99e097919cf777fed7760d46851956fed14d5e`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b45addecb383b5fd97496c587c884d9a93732302e781825340004ceecb538c1`  
		Last Modified: Wed, 06 Jun 2018 13:56:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3748c71ca1596fc810d3677935a06ac9e7957f2c114291c9ed2b75a5759de88`  
		Last Modified: Wed, 06 Jun 2018 13:56:50 GMT  
		Size: 134.0 MB (134031743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc03dc5a7cb62dfeef2aabdd340c8b08b0cf4471a669a46c6d6c15e662ba6e`  
		Last Modified: Wed, 06 Jun 2018 13:56:13 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e988edfaa63bf58b1becdacaf204b44f6930852c758eeab04be137d71f0f858b`  
		Last Modified: Wed, 06 Jun 2018 15:33:57 GMT  
		Size: 10.1 MB (10128460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1e0207b8cc507b0016584607122c546a03d9444f156aaceee30766ed95b94c`  
		Last Modified: Wed, 06 Jun 2018 15:34:04 GMT  
		Size: 23.0 MB (22969403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b65272bd1811e25183e91f39fdf247cc95e38454fa9006e4d6f4239777109ac`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c184864e8755ab220dccd4ef56fe97abf7c8c5b07533dee72dde2ad1d1b01a62`  
		Last Modified: Wed, 06 Jun 2018 15:33:35 GMT  
		Size: 948.6 KB (948602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b108528d0e9ae3f0a96af9f82a60b9d9d701ebc147ccf5e303989048615d260`  
		Last Modified: Wed, 06 Jun 2018 15:33:32 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:e4cffac2f34407af16dcaff0312839f1c1c5d1fb576ff1b685bb3240b2633e9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.8 MB (265750718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484a3b1f10d31533d4244db5e9c9252162d2e3fe08b326a65ade2aae511b7aea`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:38:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:38:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:38:30 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:38:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:44:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:44:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:31:14 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:31:14 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:31:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:31:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:31:24 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:31:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:31:54 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:31:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:31:57 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:32:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:32:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44de56163033dccd4d94f096a072bad390c18b35174eb640dd7384763bad08b`  
		Last Modified: Wed, 27 Jun 2018 14:08:11 GMT  
		Size: 886.1 KB (886098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4959c44ded2a8d0320645e825409ae94fcb6c5df3cdfbd404a0719ea9f02f39`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485d2cfa73799f5adc000b6c0d5754cbaffee826690f6a6ab540c912166d3ee`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cd4d3391f4296a1eaf68259d9cc553ab2d07f2bebe848689096fc759f78183`  
		Last Modified: Wed, 27 Jun 2018 14:09:14 GMT  
		Size: 124.1 MB (124072225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac417867867a19bbf801b38f16240a4c20ce9cacd5ed143b984e405e301515c7`  
		Last Modified: Wed, 27 Jun 2018 14:08:10 GMT  
		Size: 272.1 KB (272068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957382b0bc560ab13f558bb59aa4a687801745237b063792c0fc4a652fa109a9`  
		Last Modified: Wed, 27 Jun 2018 19:34:28 GMT  
		Size: 6.7 MB (6688959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8ad5ade35d842ef55baf03613b24f680aedefe451ec082015756f2366211ec`  
		Last Modified: Wed, 27 Jun 2018 19:34:29 GMT  
		Size: 23.0 MB (22969517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5221da3fd7551852bfca1108ef09e770b807baa0c2857d31e13e9d288f45d6`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d928c7a78bb7899f91a8868c97c3a4c999e3236af0f37e027a2e5a9eff61142`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 948.8 KB (948781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f400e87b9defa933f65029d6d733b840a75d063f58c6a594458189b168fc8360`  
		Last Modified: Wed, 27 Jun 2018 19:34:26 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:d38ce04f7b8402b9a686bf66d4d939892fa8ba6850dd22523debe02f0d87801b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:200eacb0be095ddab7f9634ea00ab76977c11cb9a6887c4d51cc43dc484bea98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.1 MB (98082911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8268ee1d40c1fd6cbdefc2b6ee2a80dda4f08dae7b9adfc263b98653387ba4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 05:57:16 GMT
RUN apk add --no-cache       bash       libc6-compat
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:57:16 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:57:22 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Wed, 27 Jun 2018 05:57:22 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:23 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:57:38 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:57:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:57:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Jun 2018 05:57:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:57:43 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1607a225063213028c67560efdfa63f339869cfebadb3e5ad10557dd8f5044`  
		Last Modified: Wed, 27 Jun 2018 06:02:27 GMT  
		Size: 1.7 MB (1687573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91fe27deeb43006fd25dbb45decbd17560fd6a16253ab676e3109cd4fc1f2d6`  
		Last Modified: Wed, 27 Jun 2018 06:02:30 GMT  
		Size: 23.1 MB (23062282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aaa9ac70c9ecf0c648a1811ff3a97de3f3e82bcc352a35e504564cf27a5c1b6`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756e618956200a64bebdbcf1b8642f7ff881914036ddb33f486aa922120f936c`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 948.6 KB (948616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a83c72c4e9852a08945b2b8cd54448459cad6e8a0d1d37edd7b6202a8086c1`  
		Last Modified: Wed, 27 Jun 2018 06:02:26 GMT  
		Size: 155.0 B  
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
$ docker pull jruby@sha256:ba3f592a3a4499ddf43645c2386d4e455bdcd0bf7f210ea54b4fe00fe1bed226
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
$ docker pull jruby@sha256:7795334e209e7ce01d9cda7019441f760ba439c1784042d1157d17bca752e3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.3 MB (214294090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9d641f2c9e47f6baf844ebe518ddc0c6a4c148dd2c74de53e6974d49458a82`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:30:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:30:08 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:30:09 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:30:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:30:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:30:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 05:55:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 05:55:15 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 05:55:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 05:55:27 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:28 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 05:55:42 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 05:55:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 05:55:42 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 05:55:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 05:55:43 GMT
CMD ["irb"]
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
	-	`sha256:4a05570971bbd4fc8399fea42a503a1b97aaab37102f13c4a962be39f27e6163`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 853.1 KB (853058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f679cd585927aabeb285db9b30a47efe57b16796c17219d3932ed2ee248f5c`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89362eaac850d91cec4637452d94219414c1a2fa3ac79d5367af0b64144afbd6`  
		Last Modified: Tue, 26 Jun 2018 23:52:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76c23323cb414a1aee9a85be228dfbbacb343fc1fb7519d7aba515e7a1b71d1`  
		Last Modified: Tue, 26 Jun 2018 23:52:58 GMT  
		Size: 122.1 MB (122140144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a113d2d56642caccde7fa2fa12401b150966969be947cd945cc9c2ad9fb56b`  
		Last Modified: Tue, 26 Jun 2018 23:52:35 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b8d196c7c09d5b284af2abd46ea683c45a964aaf1b1383cb0a477e10ebb5c`  
		Last Modified: Wed, 27 Jun 2018 05:58:13 GMT  
		Size: 6.7 MB (6681858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6688cd9bd469f08617d940257d8332b9ce9277ff104c5aa5fce8c5b9f49aa8a`  
		Last Modified: Wed, 27 Jun 2018 05:58:16 GMT  
		Size: 23.0 MB (22968062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca1be519caf815dfbe6e0df440248546561c00f3b3d3393a92baf4b35b14d98`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f5cbabd4e8d93d344bb0dbb65d52e01533617a6c5e2c90f8b1a80f1bef42ad`  
		Last Modified: Wed, 27 Jun 2018 05:58:11 GMT  
		Size: 948.6 KB (948583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc1fc3c85fe30db90459e9fee1cc59975c8d6e246d3ee19bf69ca0a35e5cc`  
		Last Modified: Wed, 27 Jun 2018 05:58:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm variant v5

```console
$ docker pull jruby@sha256:0a7cc78e3e847570d220027ce6262b59d6e2f36289ce7c814b69adaa307e40d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200739451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea15c1b60ec4c15293876fbfb769e0681c2778d8046b9fe623ca4c4f3224d7b7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:35:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:35:46 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:35:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:35:52 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:35:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:36:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 15:46:53 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 15:46:58 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 15:47:02 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 15:47:02 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:47:04 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 15:49:19 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 15:49:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 15:49:20 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 15:49:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 15:49:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e667e3ddbea3ad46638cd1c07455b5a270ded007f17aaaac316495070ff2d31c`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2097de4902e193e94d8dcc60b2ecb319963b50c3090b1cc7b8735292dd21a`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24cb5b0fca86faed493a4acbcf36f41c5b8c5636a4b9399966486a1b9b19e`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243fbb498fd74b410dcb29d222cbdd6102069a272efeaca4abc789cf6196fa7d`  
		Last Modified: Wed, 27 Jun 2018 12:56:50 GMT  
		Size: 111.9 MB (111902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe74a9cac620255d31ebd0dcd9bdcad40d2f10644dd712750108e8582a091d`  
		Last Modified: Wed, 27 Jun 2018 12:56:21 GMT  
		Size: 272.2 KB (272200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27637515a12bcbad819f67da71abdf8b153849fbef1a80e75244cf20547c97e7`  
		Last Modified: Wed, 27 Jun 2018 15:52:41 GMT  
		Size: 5.8 MB (5764327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d3efdcd14114d99c8fdab93289d6b811b0ced6c607c3817b40142b86351502`  
		Last Modified: Wed, 27 Jun 2018 15:52:45 GMT  
		Size: 23.0 MB (22968113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3bea063f2ed461d9b6d3d40e37f3e5d481ce304f026ba162783eb3e38d804`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fda22bc7acb2c5675a7fd50ee090af734c3c6743b14fba6bef7c6436dacdab`  
		Last Modified: Wed, 27 Jun 2018 15:52:39 GMT  
		Size: 949.0 KB (948986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e957cdc64c460f57422ffa9977959542bac392b02d09c794bc7d036ac0ae7e`  
		Last Modified: Wed, 27 Jun 2018 15:52:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:f862b8467a80a715f892da1e98d95e5d79254a0bb6d8ac69df03f5550c7e6e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200753299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ffed99a6273ac684952d84c05e084d5c7fba95bfbae18648edecb018da8ceb`
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
# Sat, 05 May 2018 12:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:34 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:03:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:03:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:03:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:03:45 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:03:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:03:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:57:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:52:22 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 30 May 2018 08:39:47 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 30 May 2018 08:39:48 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 30 May 2018 08:39:58 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 30 May 2018 08:39:59 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:01 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 30 May 2018 08:40:34 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 30 May 2018 08:40:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 30 May 2018 08:40:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 30 May 2018 08:40:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 May 2018 08:40:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 30 May 2018 08:40:39 GMT
CMD ["irb"]
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
	-	`sha256:caabf35448f16b9e3326e8f780f01877aba13f9ec6815f975d4da42043dbf329`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 839.3 KB (839299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0802d24798c77025ece2adb6489409aa0f5789f4e82aa4242a0d9d622696157a`  
		Last Modified: Sat, 05 May 2018 13:00:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ab48d1ba995a67328f25f0660cdf40027abdd6587d59727f7ba0f72c4beb4b`  
		Last Modified: Sat, 05 May 2018 13:00:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c450eedb74d167d4e5fc41e7d53a2b506218189e9184552476d6a66b9cad348`  
		Last Modified: Tue, 15 May 2018 11:02:00 GMT  
		Size: 112.7 MB (112745447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f571a7544609d6069b1a1275b0c87cd79aace6c30f4537b8860f62b95d6a06`  
		Last Modified: Tue, 15 May 2018 11:01:25 GMT  
		Size: 272.1 KB (272102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a5935bf6c4b6edd0d087c4fec6cb6c3a869baf99440ace0405cac9d1fd82ab`  
		Last Modified: Tue, 15 May 2018 13:57:57 GMT  
		Size: 6.1 MB (6059380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d197ae9941df47ae8a2f4560c008e381b72983188ec509909fa0151193746bca`  
		Last Modified: Wed, 30 May 2018 08:45:36 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab17b2bfb93ca34dc59b112f21eca213ab8b6adbce43ef263640f3d38f8a1f5`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1cca704ff8b8df05d600e62dd974e6fc4a7841a951b71e1f1a1713f59f44a`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 948.6 KB (948634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a80bd0cc2854e4f8bddadff242ea09336580dc01ceb8a47f7b772f88572e167`  
		Last Modified: Wed, 30 May 2018 08:45:30 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; 386

```console
$ docker pull jruby@sha256:8b98f6e1ff7b7afbfbd4adb91dc0d99f4ade044d8a2e0cdae6f19b6206779efb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219113889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee19372f0ec7cb86fa297d4ca85e9e2fad052d17950b334876dd17d5cabaf0e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 13:25:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 13:25:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 13:25:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 13:25:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 13:27:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 13:27:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 15:28:50 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 06 Jun 2018 15:28:50 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 06 Jun 2018 15:29:51 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 06 Jun 2018 15:29:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:29:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 06 Jun 2018 15:30:08 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 06 Jun 2018 15:30:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Jun 2018 15:30:08 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 15:30:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Jun 2018 15:30:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9368f221b5993380993dea9613572425804a20fb7a28368a6c413c683c4b78`  
		Last Modified: Wed, 06 Jun 2018 13:53:10 GMT  
		Size: 862.0 KB (861961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb0b6ad7dffce934718a1eece17485c3985405e4b761ef2e415e374233c3bfe`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b827593226eaebe84f8f5fe0bceefecc60f4fcc7ef359d5f3b243ff5dc2a7a`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa491a3dfa1d75fa06a5eda7de8d13355b6a33d6f8a1a850145b1ccefeef655`  
		Last Modified: Wed, 06 Jun 2018 13:55:28 GMT  
		Size: 122.6 MB (122579904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c43dfdde147981dba29fa7660f2f61adc4a897a5f821c3c49fedbdbebf13d`  
		Last Modified: Wed, 06 Jun 2018 13:53:09 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f570a49811f2cce78a0957ca309a492c91aba2e6f1cdb0ea6d490f7bcc83e8`  
		Last Modified: Wed, 06 Jun 2018 15:32:08 GMT  
		Size: 10.1 MB (10097850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea500ccd577ffec5ab45f1cace46323283556b8864546e9ed288226eb30d6fc`  
		Last Modified: Wed, 06 Jun 2018 15:32:14 GMT  
		Size: 23.0 MB (22968071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d98d77d914ff9c78d0f465c5c7258aa780c3a314b433ad95de156aefa897af68`  
		Last Modified: Wed, 06 Jun 2018 15:32:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0e9f2c56eb893ff898369a04e3875f1444cf934e699eafd6f5585d5b579cbe`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 948.6 KB (948629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4006e73c275498f8890ad13cd46f3a6d0ad3428cb8182021e60159863fd457`  
		Last Modified: Wed, 06 Jun 2018 15:32:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:latest` - linux; ppc64le

```console
$ docker pull jruby@sha256:b0fecd2b9f68aa7c881790d877ad50a26e29e5459aa7e3fb4a09b4d5e8db445a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206098107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672846a3c7481d737c678c732062cb5e071024d158d369f11b402aff437db34f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:47:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:47:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:47:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:47:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:47:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:47:38 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:47:39 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:50:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 19:29:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:29:32 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 27 Jun 2018 19:29:33 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 27 Jun 2018 19:29:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 27 Jun 2018 19:29:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:29:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 27 Jun 2018 19:29:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 27 Jun 2018 19:30:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Jun 2018 19:30:02 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:30:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Jun 2018 19:30:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f62b8010555335d1b8fba7dfdb25b2627bfa4227736a4911d1eb6ba315bc366`  
		Last Modified: Wed, 27 Jun 2018 14:13:08 GMT  
		Size: 848.5 KB (848481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa55f7aeb80f5f7abffa23ca6b9b1f6b383ebf20f99a9f2c6e459f8b5c2632a`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cbc3406e48a30bfa25f6cdf65e226da9eb3b717caded42a84ad5450c75246e`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a06cd08dc4b026b8612dfd34f950fec573b410553a44ccc39f7d045cba798`  
		Last Modified: Wed, 27 Jun 2018 14:14:02 GMT  
		Size: 114.5 MB (114547958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab367df4d268ef7cbd0a5e6a56dfecad8d3c8ae70334f67a68233020579a95c`  
		Last Modified: Wed, 27 Jun 2018 14:13:05 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a376e01b767de6ee77cf26942b0a0192c5d020c6bddc8d227c4373a34ea1c2`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 6.7 MB (6658813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa5f3b7a80761e3b281854bc87de3b6ffef2fd33188714e362b40d4be653bb`  
		Last Modified: Wed, 27 Jun 2018 19:33:08 GMT  
		Size: 23.0 MB (22968163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3f85a3295c91054c526129e7c67ec4a0ecc2ca7a7cf3ee2c066797dcc800c`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56aac6210484752bf2394b17461b9d61296ec742325d6adc197b2b1972c5eb5c`  
		Last Modified: Wed, 27 Jun 2018 19:33:05 GMT  
		Size: 948.7 KB (948742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b696e20a7ade6c7f28959e7728b7d640acf83d3b5ada1ef63cf5ffc73079d2`  
		Last Modified: Wed, 27 Jun 2018 19:33:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
