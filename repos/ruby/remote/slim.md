## `ruby:slim`

```console
$ docker pull ruby@sha256:3fbef3ed783dbaa5951c8886fd2c0b71536c847d64416a02d5f95f0b9e56db6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:slim` - linux; amd64

```console
$ docker pull ruby@sha256:f562b408a34122cc2a5c551072d3d819d2e0734fe037c2019b62b57e663fc22c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79965246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f743b2457023b6cfaee2bbfd0c20dbce5d748e14b42d9353723bd48b871f8e9`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_MAJOR=2.5
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_VERSION=2.5.0
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 00:05:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 00:05:20 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 00:09:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 00:09:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 00:09:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 00:09:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 00:09:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 00:09:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe166ce1da0112f9600613768fc616d8e46cabdc75ed1ec67dfe06f3b28880c`  
		Last Modified: Tue, 12 Dec 2017 07:40:51 GMT  
		Size: 12.8 MB (12788598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972333458c2f75b1dafb3b7837ffcb7f84d7abe4cda9a260fa88556ce60ee4f2`  
		Last Modified: Tue, 12 Dec 2017 07:40:47 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2460390c73815c4855946ced4de77edbd62d7ea12b64c046e2f7234218932987`  
		Last Modified: Wed, 07 Feb 2018 02:07:02 GMT  
		Size: 22.1 MB (22054648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75cf7da0083255b99fe99217002eb4caceaa117f4e649af1aa41aefcbbb6b093`  
		Last Modified: Wed, 07 Feb 2018 02:06:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:0b42e7c242a1cecdbca90d71e990367e4c11051faea41b0e353ce945dd1ddcc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76755236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb47b6f57c826029ab95b463b4badae1cd3e0e664f234894f828465ca554502`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:10:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:10:23 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Dec 2017 02:24:22 GMT
ENV RUBY_MAJOR=2.5
# Wed, 27 Dec 2017 02:24:22 GMT
ENV RUBY_VERSION=2.5.0
# Wed, 27 Dec 2017 02:24:22 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 02:24:20 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:24:20 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:27:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:27:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:27:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:27:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:27:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d404bdda635423a7f00773d69ac2748ce89cd066d8fd1923ccc8b5dfe7ee1ce6`  
		Last Modified: Tue, 12 Dec 2017 22:38:22 GMT  
		Size: 11.4 MB (11353215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dec236494365784038f028c0fe247be34a339b30785502432885282d7515a5`  
		Last Modified: Tue, 12 Dec 2017 22:38:15 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff90cfcf9afafef442cea13b26671a1a9dedbc6acff6e82c32d85ce246a600`  
		Last Modified: Wed, 07 Feb 2018 03:20:12 GMT  
		Size: 21.6 MB (21592436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b5076fbfe17c5ec8d4798ee7afc11fa5441233f4590207207a0461d3bae34`  
		Last Modified: Wed, 07 Feb 2018 03:20:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:adf237cfc5bd579781ff6eea682ed69f789e2df3a54cc3f62c0866a4b2ebefc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74125522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c1572fe7ca9adf861ce0ddf889779242715def3cac4cee3c2009726540aa17`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:45:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:45:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Dec 2017 02:13:52 GMT
ENV RUBY_MAJOR=2.5
# Wed, 27 Dec 2017 02:13:52 GMT
ENV RUBY_VERSION=2.5.0
# Wed, 27 Dec 2017 02:13:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 02:14:46 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 02:14:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 02:17:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 02:17:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 02:17:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 02:17:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 02:17:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 02:17:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99c062ceb25ee22344111d3a77452c1395136ec4366ff86e9251ebf0e0353b7`  
		Last Modified: Tue, 12 Dec 2017 17:41:17 GMT  
		Size: 10.9 MB (10873655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9845730570789a9e72605d8da4c3cb0b244aea16df73db3b9922e82ac61a6b58`  
		Last Modified: Tue, 12 Dec 2017 17:41:14 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a61911c793a9a34805ed45c7bf947a9897cdb5f63968fcb3c8bf5040ce8201`  
		Last Modified: Wed, 07 Feb 2018 03:05:34 GMT  
		Size: 21.4 MB (21401770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afc670b493163d59b8c1e7fbb1c8a0d2c243675e26fd80640ea4fcaab45e4a7`  
		Last Modified: Wed, 07 Feb 2018 03:05:29 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:7a0d6eedff144598392247faea4833fd8ae140db27a4bc0fb92534acf7749f00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76327436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a04c20bf768707ddd352d7038ce3efd6519c006ca26a50e1d50794f64ca0acd3`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 26 Dec 2017 21:43:37 GMT
ENV RUBY_MAJOR=2.5
# Tue, 26 Dec 2017 21:43:38 GMT
ENV RUBY_VERSION=2.5.0
# Tue, 26 Dec 2017 21:43:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 21:44:08 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 21:44:09 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 21:50:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 21:50:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 21:50:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 21:50:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 21:50:39 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 21:50:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e27b7c7d6383b720949ebf5773fbccd00e0ea666a83146945454bf4bb3b66`  
		Last Modified: Tue, 12 Dec 2017 22:26:29 GMT  
		Size: 11.6 MB (11597434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77945bc951fa4a3970e0bce5b5c9c8a2d2b2bc6fd446e4848a70e965d0c2a0e7`  
		Last Modified: Tue, 12 Dec 2017 22:26:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de7389480ad2118871284067a98d17f628cfa30fba1f1053c4958aa9e9dfa9f`  
		Last Modified: Wed, 07 Feb 2018 23:35:04 GMT  
		Size: 21.8 MB (21816820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d497f8add8aa2be59c6dfd61b978a72ae112dbb0ec0d32ec5d662f190097513`  
		Last Modified: Wed, 07 Feb 2018 23:34:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; 386

```console
$ docker pull ruby@sha256:442821bfe2b9003a0752d0e021c270321a45388ed92b663f31d51ec7ab6e925d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83687122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200bf2fde513d279b097bb35fd5cef38eb66a1e8092b1fae98fc5ae78a1aeb92`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 16:06:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 16:06:42 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Dec 2017 03:50:59 GMT
ENV RUBY_MAJOR=2.5
# Wed, 27 Dec 2017 03:50:59 GMT
ENV RUBY_VERSION=2.5.0
# Wed, 27 Dec 2017 03:50:59 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 04:03:14 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 04:03:14 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 04:06:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 04:06:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 04:06:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 04:06:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 04:06:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 04:06:16 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1b9b3b04a206365249cd5b26eba853bf32dbf41e342bf37edddf5e5bce1c88`  
		Last Modified: Wed, 13 Dec 2017 16:37:33 GMT  
		Size: 16.2 MB (16229075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc41e401583c7c0bd7b66a0154a4564878900a458ef905971b8d86669dbce8c`  
		Last Modified: Wed, 13 Dec 2017 16:37:26 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2786b2e711e5cad030a18ec006950268f4c68f3b0b6326771fc11a5bb68547`  
		Last Modified: Wed, 07 Feb 2018 08:00:49 GMT  
		Size: 21.6 MB (21630611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7641c72e61a6cb5b110e333281cb4976d4dff58d2e2968ebf4185535e39a7153`  
		Last Modified: Wed, 07 Feb 2018 08:00:37 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:d3b22228ca4dc79d39c01b400b10d78a4c1bc3789b9b158884f4bb72638eea5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79857355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f214cf0ace4df7882c0abe11cfaefa925cfaab9e2a300ff4f51892fd41fb67a`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:46:09 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 05:46:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 05:46:15 GMT
ENV RUBY_MAJOR=2.5
# Thu, 15 Feb 2018 05:46:16 GMT
ENV RUBY_VERSION=2.5.0
# Thu, 15 Feb 2018 05:46:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Thu, 15 Feb 2018 05:46:21 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Thu, 15 Feb 2018 05:46:22 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 15 Feb 2018 05:56:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 15 Feb 2018 05:56:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 15 Feb 2018 05:56:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 15 Feb 2018 05:56:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 05:56:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 15 Feb 2018 05:56:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31f831d08de2ae119cb7fa06c10ece9b0ff2defcc5474920447460e20394f3a`  
		Last Modified: Thu, 15 Feb 2018 06:46:26 GMT  
		Size: 12.2 MB (12183921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143b2ae52f6fdd793348235db7a1550cf13857e9d49882a0e6e075791b7870c1`  
		Last Modified: Thu, 15 Feb 2018 06:46:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78657f22fcd48322a858f08d446ff9925f43faaecb7cb4ccee42ace0faa8a451`  
		Last Modified: Thu, 15 Feb 2018 06:46:28 GMT  
		Size: 22.3 MB (22285203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f6f4a73df4aefc67da6d916607f838016c1f1db9864a16f9909a590719610d`  
		Last Modified: Thu, 15 Feb 2018 06:46:23 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; s390x

```console
$ docker pull ruby@sha256:1fb3bfad443670a3e57629cce84c46938c0767ab68c683bf38fdeb6bd67f4838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80602689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d72ded76f6e35f753904d4a721f9c0921c9beeb86edbf80c111978b14398481`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:45:44 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:45:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 07 Jan 2018 06:39:18 GMT
ENV RUBY_MAJOR=2.5
# Sun, 07 Jan 2018 06:39:18 GMT
ENV RUBY_VERSION=2.5.0
# Sun, 07 Jan 2018 06:39:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 07 Feb 2018 09:32:05 GMT
ENV RUBYGEMS_VERSION=2.7.5
# Wed, 07 Feb 2018 09:32:05 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 07 Feb 2018 09:34:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 07 Feb 2018 09:34:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 07 Feb 2018 09:34:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 07 Feb 2018 09:34:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Feb 2018 09:34:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 07 Feb 2018 09:34:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3181adba26844647b903a6016999df3fcc437da39fec72996522cbed85915a0`  
		Last Modified: Tue, 12 Dec 2017 09:15:25 GMT  
		Size: 13.2 MB (13190804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8c8aa605062080060337b2a363eb11474cb5f9bec614223384aa136e8771ba`  
		Last Modified: Tue, 12 Dec 2017 09:15:21 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f66ea47fe7a3b4ecba5753cd6f93dec4345f7238e36849078ee8f85db8fab4`  
		Last Modified: Wed, 07 Feb 2018 10:14:05 GMT  
		Size: 22.4 MB (22444442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d2761e665f4a0bb51d3184d9528e1d18b90846f1facb43a861a5ffc9ce5e53`  
		Last Modified: Wed, 07 Feb 2018 10:14:03 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
