## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:575884ee678d7fd80286e654eeb9215834fb48e30f9c224bec0d07754950919e
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
$ docker pull jruby@sha256:497e13dfad09a21c8fa2c9d6ecd1dd4cdace501d9e1300e200a22e7c75888488
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323173101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49685e8f5d8895bd528b323bc536d6a3e5862de10f1b90b639b7664f2f577d60`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:14:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:14:25 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:14:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:15:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 19:33:23 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 19:33:23 GMT
ENV JRUBY_VERSION=9.1.15.0
# Tue, 12 Dec 2017 19:33:23 GMT
ENV JRUBY_SHA256=4a0d9305867ed327a8cf4f7ff8a65c7ff62094a495ec85463d0792656762469e
# Tue, 12 Dec 2017 19:33:28 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 12 Dec 2017 19:33:29 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 19:33:30 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 12 Dec 2017 19:33:44 GMT
RUN gem install bundler
# Tue, 12 Dec 2017 19:33:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 19:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 19:33:49 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 19:33:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 19:33:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 19:34:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 12 Dec 2017 19:34:00 GMT
WORKDIR /usr/src/app
# Tue, 12 Dec 2017 19:34:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 12 Dec 2017 19:34:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 12 Dec 2017 19:34:00 GMT
ONBUILD RUN bundle install --system
# Tue, 12 Dec 2017 19:34:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a12c29ea469f2521637d790e447a11583651eaa1809da1b15cbbdcdccc0ed`  
		Last Modified: Tue, 12 Dec 2017 16:17:47 GMT  
		Size: 892.0 KB (892049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036204524472a3bf48d87444c797e8d0ea5e2b7b7490702a059314d797aa697`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f95baa024b8c0a05ab25a2180f5a37d9cae8284ff70709ca0fcb36d97d9e6`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2018472a1fdc5a8ef25fbbf2cde838d8c9aa99ca9e799c0f38d82552368d8c`  
		Last Modified: Tue, 12 Dec 2017 16:18:35 GMT  
		Size: 182.9 MB (182901918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25f8a69c882f7cd39cfd819ae28c9d228bfc4255fe39a18a5d6bd41fd60b061`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d42b011c522581fa7021978280b1415ea5d50c42af8683baf59d0932b1f47e4`  
		Last Modified: Tue, 12 Dec 2017 19:35:50 GMT  
		Size: 6.7 MB (6701260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a669a5c0c2aecb8e94dec7252000358f2d3e7b662f20c643c38594d60062293f`  
		Last Modified: Tue, 12 Dec 2017 19:35:51 GMT  
		Size: 21.1 MB (21115134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f34ca92e2132a9a7897639c5f5a6f1515ff5c5870534996f51d4ee9d0028a3d`  
		Last Modified: Tue, 12 Dec 2017 19:35:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a5b750ee20afe818c49b3cbb497e1a7c4c2b7881c73618e79a0c6655b93348`  
		Last Modified: Tue, 12 Dec 2017 19:35:49 GMT  
		Size: 702.5 KB (702457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1609b9b009eac04cd661277bdc124cd581edc137a54468ab6a33511134490ec6`  
		Last Modified: Tue, 12 Dec 2017 19:35:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce2a4fda2cb5f9dd0bed91096e6c3d44e2ba2f2ad1e59c2fbabf49c3afbae10`  
		Last Modified: Tue, 12 Dec 2017 19:36:38 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:e4402d20707c3c9c0621a9263620af15e747d5d1c3952987d7bad10fb666c730
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (286999343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d3dd48722e8661b61206ef58de949e30ab10a85ea00d8617d96becab1a4c96`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:59:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:59:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:33:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:33:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:33:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:33:47 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 23:33:47 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 23:33:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 23:35:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 23:35:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 03:00:44 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 03:00:44 GMT
ENV JRUBY_VERSION=9.1.15.0
# Wed, 13 Dec 2017 03:00:45 GMT
ENV JRUBY_SHA256=4a0d9305867ed327a8cf4f7ff8a65c7ff62094a495ec85463d0792656762469e
# Wed, 13 Dec 2017 03:00:48 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Dec 2017 03:00:48 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 03:00:49 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Dec 2017 03:02:36 GMT
RUN gem install bundler
# Wed, 13 Dec 2017 03:02:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Dec 2017 03:02:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Dec 2017 03:02:37 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 03:02:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Dec 2017 03:02:38 GMT
CMD ["irb"]
# Wed, 13 Dec 2017 03:02:59 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Dec 2017 03:03:00 GMT
WORKDIR /usr/src/app
# Wed, 13 Dec 2017 03:03:00 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Dec 2017 03:03:00 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Dec 2017 03:03:00 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Dec 2017 03:03:01 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74be0ad93d15611aa7313f4b3b2f81efdd2d1cebe0f55d451508e2c2e4f7d55e`  
		Last Modified: Tue, 12 Dec 2017 23:10:09 GMT  
		Size: 10.2 MB (10205777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f61dac7c9bed094566a8a214c493eee51438fae13aa7858d076f887bd66e84`  
		Last Modified: Tue, 12 Dec 2017 23:10:07 GMT  
		Size: 4.2 MB (4153069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93919f9ce5190358c03ece52e0513bd8701cc4a4fbcad0d82423ec0aa138b5b4`  
		Last Modified: Tue, 12 Dec 2017 23:10:51 GMT  
		Size: 48.2 MB (48233484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8c9a049c82617b81d6d9361cf95eb72345acd7918235b1c32b311f492992de`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 884.3 KB (884327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3540906b8a270a3b13ec7a1b90c859ffa7c9f318854bbb9f2f999497b49989a`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11b120eb9c6662c012168f522fa4435d5d99136390c4fa0b7d8c4c7916d7f47`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca70f608d0a11f5f4ffc3f8a611465d1dc47bf3098bb8ad6149ec2d779a56f92`  
		Last Modified: Tue, 12 Dec 2017 23:53:44 GMT  
		Size: 151.8 MB (151839899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f236380075e6783ec2d25ebc5b44971b8626309fdc0bf78faa50913771b98e`  
		Last Modified: Tue, 12 Dec 2017 23:53:06 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f54a2f7acdd63e24cc9e5b26c344eca37221da8dfd6ee87264a334b1da29f1`  
		Last Modified: Wed, 13 Dec 2017 03:05:37 GMT  
		Size: 5.8 MB (5782623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024eb1d7132d5bd1edaffac8f5ff0f3edadf4af9fe8123ab1545b84e7463e160`  
		Last Modified: Wed, 13 Dec 2017 03:05:44 GMT  
		Size: 21.1 MB (21115085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122c12620c7722e9eba68238a013fb7d5bd0b8d658a76bb7e72207eef6b717a`  
		Last Modified: Wed, 13 Dec 2017 03:05:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf8bf4e51f910c1a1fe20d0d80d193bd14a08bea8612f18cadeb60bba8152e9`  
		Last Modified: Wed, 13 Dec 2017 03:05:26 GMT  
		Size: 702.7 KB (702721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cec3099ff925daf68264b7cba3b4d6c614efdb4fab968fd7918e8862b8db42d`  
		Last Modified: Wed, 13 Dec 2017 03:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95697e9ed73476ff7865af224d23fd16ddbe1e22d4ac139b864fe11f53189e7b`  
		Last Modified: Wed, 13 Dec 2017 03:06:28 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:4e3595c06ecef6cdbcc857897b9c3c00b8f2509cc3eb408e4747ecee756f2a59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.1 MB (302138657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c883fdec1b5db2cfcb14229429159d8c93a8c078919dcbb50e6f79edaa5b7e`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 16:15:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:53:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:53:36 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 20:53:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Dec 2017 20:53:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Dec 2017 20:53:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 15 Dec 2017 20:53:42 GMT
ENV JAVA_VERSION=8u151
# Fri, 15 Dec 2017 20:53:43 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 15 Dec 2017 20:53:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 15 Dec 2017 20:57:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Dec 2017 20:57:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 16 Dec 2017 08:44:25 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 08:44:25 GMT
ENV JRUBY_VERSION=9.1.15.0
# Sat, 16 Dec 2017 08:44:26 GMT
ENV JRUBY_SHA256=4a0d9305867ed327a8cf4f7ff8a65c7ff62094a495ec85463d0792656762469e
# Sat, 16 Dec 2017 08:44:33 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 16 Dec 2017 08:44:34 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:44:36 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 16 Dec 2017 08:44:58 GMT
RUN gem install bundler
# Sat, 16 Dec 2017 08:44:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 16 Dec 2017 08:45:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 16 Dec 2017 08:45:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 08:45:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 16 Dec 2017 08:45:02 GMT
CMD ["irb"]
# Sat, 16 Dec 2017 08:46:02 GMT
RUN mkdir -p /usr/src/app
# Sat, 16 Dec 2017 08:46:02 GMT
WORKDIR /usr/src/app
# Sat, 16 Dec 2017 08:46:03 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 16 Dec 2017 08:46:04 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 16 Dec 2017 08:46:04 GMT
ONBUILD RUN bundle install --system
# Sat, 16 Dec 2017 08:46:05 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab5498df96eae5ccabdf778692dc41eeee09793f3792efadf0079545233069c`  
		Last Modified: Fri, 15 Dec 2017 17:19:55 GMT  
		Size: 48.0 MB (47983199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1c76e3223fc4909a1a398abbe59db5c4b65930bc2b75d21872790c5b075632`  
		Last Modified: Fri, 15 Dec 2017 21:21:25 GMT  
		Size: 877.2 KB (877202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d722b1595acde54914951f48a8150c89482e3b06441f5cd9ec6849b9ba17d456`  
		Last Modified: Fri, 15 Dec 2017 21:21:23 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744cdcc10f12f7eafd5dab397bfb05f614bd36ecab3e0f848f35db09b9e9f273`  
		Last Modified: Fri, 15 Dec 2017 21:21:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750218e5c22d645286d4841d8104a903bca220262ff85b60a60137bc0e166a84`  
		Last Modified: Fri, 15 Dec 2017 21:22:12 GMT  
		Size: 168.0 MB (168042914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff709e529c363d650449fada8dc9cbe905a4ec86ad995a02b1e7d42c736db17`  
		Last Modified: Fri, 15 Dec 2017 21:21:24 GMT  
		Size: 272.1 KB (272104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b090c551853d3531b9b13f40fd5bdd03630671b42f7344865bdc8175fd31e67`  
		Last Modified: Sat, 16 Dec 2017 08:47:11 GMT  
		Size: 6.1 MB (6077784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20313082bee38531752a2beefcc04b84dd4667d91255ddfcafa3382daa6ccca`  
		Last Modified: Sat, 16 Dec 2017 08:47:13 GMT  
		Size: 21.1 MB (21115225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ce08a2b1d0c1ff0fa65934ad1c5f693e6cdedf806013b61f97f501ceafcce`  
		Last Modified: Sat, 16 Dec 2017 08:47:08 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147bc202ed7ff95aba794e9638e75251fee7988249ad957d1d33e72423207a6a`  
		Last Modified: Sat, 16 Dec 2017 08:47:08 GMT  
		Size: 702.5 KB (702470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c721388d8ee00af979a68e30df7f30ac202fa1d29174e1bdaec0934a1763fb0`  
		Last Modified: Sat, 16 Dec 2017 08:47:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9d9982e5cd4a32b5c8a0fa8ac3c9e545b26835cfc7641a6b297858893239b5`  
		Last Modified: Sat, 16 Dec 2017 08:47:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:03e32da0fa5adcfc891771e7bba2bc9d78af887c8f8ed215d4e6a46bc14fb602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.6 MB (331643835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0699fdb456a565318f570865bb15d352cbc9b813d9425e4de22a402448c1c3f7`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 14:47:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:10:58 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:10:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:11:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:11:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Dec 2017 15:11:01 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:11:02 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:11:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:13:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:16:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 21:54:03 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 21:54:09 GMT
ENV JRUBY_VERSION=9.1.15.0
# Wed, 13 Dec 2017 21:54:09 GMT
ENV JRUBY_SHA256=4a0d9305867ed327a8cf4f7ff8a65c7ff62094a495ec85463d0792656762469e
# Wed, 13 Dec 2017 21:54:20 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 13 Dec 2017 21:54:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 21:54:25 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 13 Dec 2017 21:54:45 GMT
RUN gem install bundler
# Wed, 13 Dec 2017 21:55:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 13 Dec 2017 21:55:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 13 Dec 2017 21:55:46 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 21:55:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 13 Dec 2017 21:55:47 GMT
CMD ["irb"]
# Wed, 13 Dec 2017 21:56:13 GMT
RUN mkdir -p /usr/src/app
# Wed, 13 Dec 2017 21:56:13 GMT
WORKDIR /usr/src/app
# Wed, 13 Dec 2017 21:56:13 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 13 Dec 2017 21:56:13 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 13 Dec 2017 21:56:22 GMT
ONBUILD RUN bundle install --system
# Wed, 13 Dec 2017 21:56:22 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff393180296f30b7b1cf94c5f67f82d434feb08eaff795346b0f5d3fe18c5ab6`  
		Last Modified: Wed, 13 Dec 2017 15:00:30 GMT  
		Size: 51.6 MB (51553695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497a46c049ca70f02a10ecd1fd969ea9b3043e1e0b7f9c362c82850f52d58338`  
		Last Modified: Wed, 13 Dec 2017 15:30:32 GMT  
		Size: 899.7 KB (899724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefbdd21084e042a6748462c442cbfae4eb96db133cddbb5423434d26d5d62a5`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f1a07b450ded93e6945e245928313f08fff47ce46f42fc5b1b1500bbe01169`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef81539ebeeb166737f8c0d53f4356fa26f33fa3cd08729a84aa3a650da4927c`  
		Last Modified: Wed, 13 Dec 2017 15:31:25 GMT  
		Size: 185.5 MB (185450981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faa2ff9a7b4abb76885e3506ca6345eb33fca169f3eee25f0ee410a113ed376`  
		Last Modified: Wed, 13 Dec 2017 15:30:31 GMT  
		Size: 272.1 KB (272148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59764f719ef6216bdaa56bc0a6f85036720cda918bd0b8a22cbc42ccfba2d041`  
		Last Modified: Wed, 13 Dec 2017 22:00:59 GMT  
		Size: 10.1 MB (10116727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e75693575f656c18c0dd2ad1450fae0ac94bc9013b8f9e5224441fd3157dc9`  
		Last Modified: Wed, 13 Dec 2017 22:00:59 GMT  
		Size: 21.1 MB (21115153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1d651bdfac40764053070a9f06b7cedbcad03d867d23ce5f99cd52cdbeee7e`  
		Last Modified: Wed, 13 Dec 2017 22:00:54 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e877ae5c52e89bfbafe2fb3ad2b30dc4077db404107226b6579a3fdbf29d870a`  
		Last Modified: Wed, 13 Dec 2017 22:00:55 GMT  
		Size: 702.4 KB (702437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677b01e938d7109723fb5cd552243f0c551c2260d054768e13cdb471029e6adb`  
		Last Modified: Wed, 13 Dec 2017 22:00:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6351a33646f5926e8aa04baa6cbda09d4c9d7b38bf9ed3b1d40122ee44ec4bda`  
		Last Modified: Wed, 13 Dec 2017 22:02:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:4e9887f7f47d5301a04d6906503c4e2d7a47d9cb7647e485953b81595cc75e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311405258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cfdd6f06ce445c5461ce9259b4021b8c1d48c99bb1b2a906f009cc43c588a1`
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
# Thu, 15 Feb 2018 17:50:59 GMT
ENV JRUBY_VERSION=9.1.15.0
# Thu, 15 Feb 2018 17:51:02 GMT
ENV JRUBY_SHA256=4a0d9305867ed327a8cf4f7ff8a65c7ff62094a495ec85463d0792656762469e
# Thu, 15 Feb 2018 17:51:17 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 15 Feb 2018 17:51:21 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:51:33 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 15 Feb 2018 17:51:52 GMT
RUN gem install bundler
# Thu, 15 Feb 2018 17:51:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 17:52:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 17:52:05 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:52:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 17:52:19 GMT
CMD ["irb"]
# Thu, 15 Feb 2018 17:53:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 15 Feb 2018 17:53:44 GMT
WORKDIR /usr/src/app
# Thu, 15 Feb 2018 17:53:46 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 15 Feb 2018 17:53:49 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 15 Feb 2018 17:53:51 GMT
ONBUILD RUN bundle install --system
# Thu, 15 Feb 2018 17:53:52 GMT
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
	-	`sha256:38266b1033f94e5eb50ad8022304726ad66344929a523134efc33fcfe14d2b4d`  
		Last Modified: Thu, 15 Feb 2018 17:55:34 GMT  
		Size: 21.1 MB (21115358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf002e8482ca0af6d702fe6bc246a98ab07b0e7f3b766adf331d366b7991a3bd`  
		Last Modified: Thu, 15 Feb 2018 17:55:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5add261d17465aaca3c74c1f9810132e91349ac7f3cea5fd8722335a79d9df68`  
		Last Modified: Thu, 15 Feb 2018 17:55:31 GMT  
		Size: 701.7 KB (701727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e86e0a68074158ab47d0b6064a9024575821a443348e5d7e562aa1b4b9de7`  
		Last Modified: Thu, 15 Feb 2018 17:55:31 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48c94e9ee9f0221c8497de86c521fafd9c2598d5003828b7dc372c7cf8798b2`  
		Last Modified: Thu, 15 Feb 2018 17:56:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
