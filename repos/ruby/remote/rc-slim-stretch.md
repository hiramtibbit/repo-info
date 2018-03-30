## `ruby:rc-slim-stretch`

```console
$ docker pull ruby@sha256:e0132b3f06f88bae0396b62bfbacd0762c063e2f6171c956cd6eda74d5ec212b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ruby:rc-slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:1b531a83e7826664a7b6a571f1c7a6754717d99ba480e55e2d8f1d15cc37f6bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81522299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc377b6c2f03f998584c25c1dbf3e0b5249adad2b53b8700e6a95a1989ea25a`
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
# Tue, 12 Dec 2017 07:22:18 GMT
ENV RUBY_MAJOR=2.5-rc
# Fri, 15 Dec 2017 20:46:06 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Fri, 15 Dec 2017 20:46:07 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Fri, 15 Dec 2017 20:46:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 15:46:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 15:49:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 15:56:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 15:56:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 15:56:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 15:56:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 15:56:07 GMT
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
	-	`sha256:d6f2595a86656529113fe7f6eedd52514911533a99362a998f8abc6ebb5ed788`  
		Last Modified: Sat, 23 Dec 2017 17:00:02 GMT  
		Size: 23.6 MB (23611701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08db13bae1da891e2b8a7ce1b6b91349ea8b03249bd18b33bf19ccb14e122d24`  
		Last Modified: Sat, 23 Dec 2017 16:59:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:60879a6044aeeec8e06106bdb0dadb391ef987bf4f85c7f2f47105e54298c870
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78295659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96443ce053e4e7876cae875920fa4bcb9e350f7349fd5b138490d5306e8497d3`
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
# Tue, 12 Dec 2017 22:10:23 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 16 Dec 2017 02:24:03 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Sat, 16 Dec 2017 02:24:04 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Sat, 16 Dec 2017 02:24:04 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:24:09 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:27:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:27:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:27:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:27:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:27:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:27:18 GMT
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
	-	`sha256:06178c78dec3294ab8f70b0b43c1ab6dde9faa74de38071c0644c55c921e71ce`  
		Last Modified: Sun, 24 Dec 2017 03:10:55 GMT  
		Size: 23.1 MB (23132859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2f3ebc37a651688940b0b2b54388c3ce943a1d102154d70dce9a5c96f2563`  
		Last Modified: Sun, 24 Dec 2017 03:10:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:05ece1e161410ec3b389f7b357391d98c5467ec235b78a17d3b0a70f01635c25
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75664593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628ef98fc80c436570196ffd9726df37ca38913ab8092dbeb4ae134fb891693d`
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
# Tue, 12 Dec 2017 16:45:47 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 16 Dec 2017 02:14:09 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Sat, 16 Dec 2017 02:14:09 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Sat, 16 Dec 2017 02:14:09 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:14:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:16:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:16:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:16:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:16:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:16:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:16:50 GMT
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
	-	`sha256:be7312880b83bf315a0065d40ef9f514981d167fcd9013331172c4369f23320a`  
		Last Modified: Sun, 24 Dec 2017 02:57:04 GMT  
		Size: 22.9 MB (22940840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c014809a2b57d2a091c2f42a4804bf68ba2fe50b8b935fa07137ef8ebd8ef66a`  
		Last Modified: Sun, 24 Dec 2017 02:56:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:2f38555eb67e4121b5ac05fc9882a1011f0476e0198508cf89454d4350c9f1ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77882606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4263b3d3303bdc06c1b65b5faa7a3175c00636c4d5c0dcdd1bd4851ca084fa2f`
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
# Tue, 12 Dec 2017 21:40:47 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 16 Dec 2017 06:49:05 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Sat, 16 Dec 2017 06:49:06 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Sat, 16 Dec 2017 06:49:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 21:43:34 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 21:49:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 21:49:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 21:49:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 21:49:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 21:49:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 21:49:37 GMT
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
	-	`sha256:d906714fced7739c1815ea4e11788f58da0bef2bdfea7e302bf889041e1d7db3`  
		Last Modified: Sat, 23 Dec 2017 23:14:41 GMT  
		Size: 23.4 MB (23371991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4ffc12cb88443d5ec8ef86600c20ce9491b3a5bed8333c16dd159b23c0dff`  
		Last Modified: Sat, 23 Dec 2017 23:14:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:0976f88d924400db3dcc06d4d974882989368a7c3e47b37b882de7faa4d46c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85236254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb4fc933c256927c88281ed9411be534c6999e60b1f53560fd9477539c33a64`
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
# Wed, 13 Dec 2017 16:06:42 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 16 Dec 2017 03:48:58 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Sat, 16 Dec 2017 03:48:58 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Sat, 16 Dec 2017 03:48:58 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 03:47:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 03:50:03 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 03:50:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 03:50:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 03:50:04 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 03:50:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 03:50:05 GMT
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
	-	`sha256:60c4b2e70f3161d450d76b1d12f95bedd5d7deed56b764c382bda2e9cdb6d160`  
		Last Modified: Sun, 24 Dec 2017 06:18:04 GMT  
		Size: 23.2 MB (23179744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04797e4f953faeded39389f3e653f823994c4b87a5dc3cd0ae32eeecea35578`  
		Last Modified: Sun, 24 Dec 2017 06:17:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:26038e512319de7ccfb20db87b57ef45085cff61c7f2bd97902bacdd7399d9b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81403273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c2316717bdcdd8fe39c07687c4b99c5e41f7a835a24145a2c7af3ea95abf4f`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:21 GMT
ADD file:10937e86e38fefbf07c9463d2a6837b8404e73135bac36166b7b585c2f8e6359 in / 
# Tue, 12 Dec 2017 01:35:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:57:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:57:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 06:57:38 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 16 Dec 2017 01:20:36 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Sat, 16 Dec 2017 01:20:37 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Sat, 16 Dec 2017 01:20:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 01:20:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 01:29:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 01:29:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 01:29:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 01:29:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 01:29:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 01:29:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5427ba9c78c891da38836ae1e71d1f22cd1a75cae9cd5a7e1fc55e9b577e3517`  
		Last Modified: Tue, 12 Dec 2017 01:42:09 GMT  
		Size: 45.4 MB (45382357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1c01ec2d30f72e4bebcf0e2e0ec30d379491c5917de2e7cb3a0d2ce63b3332`  
		Last Modified: Tue, 12 Dec 2017 08:23:20 GMT  
		Size: 12.2 MB (12182356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41294f8f92f7fa0f02ec2fcfbcaa4beffeb9722ef018a6e1f19206e4f3018071`  
		Last Modified: Tue, 12 Dec 2017 08:23:14 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a80eb41e0b764f0c6d7bc46353252464deacde7c4b7efcecb55a034474eea7c`  
		Last Modified: Sun, 24 Dec 2017 02:36:26 GMT  
		Size: 23.8 MB (23838158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0ed125922883737623bfad465624d13e201acf36142a39da83b9828a609646`  
		Last Modified: Sun, 24 Dec 2017 02:36:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
