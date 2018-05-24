## `ruby:rc-slim`

```console
$ docker pull ruby@sha256:6b7c66806dbc4b7a7c3c44a095125237f9e6bc75b90db9271e1e083db021e0fd
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

### `ruby:rc-slim` - linux; amd64

```console
$ docker pull ruby@sha256:d0857aa78ec978a38f7bdca9e256b5681c4e636fe43c1f9ccf4c07a817cab27c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80477273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f106448e882942ca5beb1029db68af29175f8eed4e5fbae1324473b6576d96e`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 16:09:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 16:09:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sun, 29 Apr 2018 16:09:25 GMT
ENV RUBY_MAJOR=2.6-rc
# Sun, 29 Apr 2018 16:09:25 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sun, 29 Apr 2018 16:09:25 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Thu, 24 May 2018 01:03:11 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Thu, 24 May 2018 01:03:11 GMT
ENV BUNDLER_VERSION=1.16.2
# Thu, 24 May 2018 01:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 24 May 2018 01:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 24 May 2018 01:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 24 May 2018 01:05:48 GMT
ENV PATH=/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 May 2018 01:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 24 May 2018 01:05:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db120293917cb2bf25a43f68381447d44ae48b5accd70026c3851352e76c999`  
		Last Modified: Sun, 29 Apr 2018 18:46:39 GMT  
		Size: 12.8 MB (12813587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f383f987d63ed40e20405a789cfcd2d24019f89235420496094a9e4d698fda9`  
		Last Modified: Sun, 29 Apr 2018 18:46:35 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6595c1554e6f3528f744e6e924dbbd55aa178a2d55a45daaedb38c6cd6069e`  
		Last Modified: Thu, 24 May 2018 01:55:21 GMT  
		Size: 22.3 MB (22345156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db8860ea51d6344bc4cdc316243882771f7e06f14079eb7cd3e26780f0b16df`  
		Last Modified: Thu, 24 May 2018 01:55:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:b6fb25814eb9daf92795cdf5851d5f95301d64aeb7bece2dfd73285cbd7d1500
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75152062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6defa9ec9e473bebc6cfdfbd3501beaade2292a7ee61c0f045efc9d2b722b3f7`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:03 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 11:23:03 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 28 Apr 2018 11:23:04 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sat, 28 Apr 2018 11:23:04 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Sat, 28 Apr 2018 11:23:04 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:23:04 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:25:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:25:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:25:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:25:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:25:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:25:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ab62c64189ec0a3c27604835c3818ada849d43e538a4fc5c9dc67b6e903183`  
		Last Modified: Sat, 28 Apr 2018 12:27:27 GMT  
		Size: 11.4 MB (11379692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f1d8f5faa2148355d039e4fdca49c139cbaf88c42276cc0aa0935101021365`  
		Last Modified: Sat, 28 Apr 2018 12:27:22 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073878cd432fb22985e63d331d7a4fbe038f3aa1646e60125a14867bfd197bf`  
		Last Modified: Sat, 28 Apr 2018 12:27:26 GMT  
		Size: 19.7 MB (19733388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c70a7ad95853e1e0d74c056395ed158a807302f7b2713ed7da196f50d1fd5f`  
		Last Modified: Sat, 28 Apr 2018 12:27:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:f3a535cb090cba2897dcff1b989782e605affd62952bd87c5af9c8aaf5bc4a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72500196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acab5b3b942bea5f5f2c11ee7dab07dab6d765bbf235f5b8dbbb6feb62e23f4`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:14:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:14:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:14:16 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 28 Apr 2018 15:14:16 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sat, 28 Apr 2018 15:14:16 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Sat, 28 Apr 2018 15:14:17 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:14:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:16:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:16:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:16:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:16:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:16:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:16:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f2875f3dc5d4a327877b16be993eeea9df2fa5d067d6af9ac0f5bccd184c8`  
		Last Modified: Sat, 28 Apr 2018 16:16:19 GMT  
		Size: 10.9 MB (10900224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0b72000d2b7251a8595382042c03c250e1b0e7a0b34f6616fde5fef123c0c3`  
		Last Modified: Sat, 28 Apr 2018 16:16:12 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaead52d22b75348b2b4986e76684f46f6af4c01901d6a3e5364bf861155e82`  
		Last Modified: Sat, 28 Apr 2018 16:16:15 GMT  
		Size: 19.5 MB (19535834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16076b0471be9ea690521152c9a0831f69defa80aa39cb0d6ff22d56fad8cb7`  
		Last Modified: Sat, 28 Apr 2018 16:16:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:c07ee4d78b7323746a2645c8627fb069966c25450c1c5ddf087e814dc5bf1437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74669100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e7326e96eb2eac6ed2ab054e01cf16547704471a50bda2059b2cdc1b9b7a7a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 07:49:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 07:49:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 May 2018 07:49:50 GMT
ENV RUBY_MAJOR=2.6-rc
# Tue, 01 May 2018 07:49:52 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Tue, 01 May 2018 07:49:53 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Tue, 01 May 2018 07:49:55 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Tue, 01 May 2018 07:49:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 01 May 2018 08:00:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 01 May 2018 08:00:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 May 2018 08:00:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 May 2018 08:00:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 08:00:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 May 2018 08:00:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30f05e7bc2d64167ca86b4b1198813ea85d21a09d56c5570979492ea4aaae8d`  
		Last Modified: Tue, 01 May 2018 09:50:23 GMT  
		Size: 11.6 MB (11624963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb4177077ad69c47ea0b2db6b37e9ba70a27f2bed673ea8257b0a00284c55ba`  
		Last Modified: Tue, 01 May 2018 09:50:10 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f334bc40fba7ccf0a270e52eeac4b69191c0c6b5432c61d15944f128e4db9d07`  
		Last Modified: Tue, 01 May 2018 09:50:19 GMT  
		Size: 19.9 MB (19934418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480ae4723251890917c5cf351b149b5f7f58f15e7cd23bc74fd775059aba370`  
		Last Modified: Tue, 01 May 2018 09:50:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; 386

```console
$ docker pull ruby@sha256:ceccf7f084b4eed0bafa470d26ba4b53a84613b0d4fc09e19c9a44e929f92e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82046884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689b69ee45bc4b67322457838ebb4e69d83782b0042e7b5d73ca5ffa6d130401`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:30:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:30:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 17:30:40 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 28 Apr 2018 17:30:40 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sat, 28 Apr 2018 17:30:40 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Sat, 28 Apr 2018 17:30:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 17:30:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 17:33:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 17:33:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 17:33:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 17:33:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:33:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 17:33:19 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c0af365b44e13e5181dba9f024c0244a599465387aeffb042377080c31408`  
		Last Modified: Sat, 28 Apr 2018 18:17:13 GMT  
		Size: 16.3 MB (16253676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3984d17bb758f9fe8f88368c0f09d252ac100d0e0c1b69380d6a0331d0a51746`  
		Last Modified: Sat, 28 Apr 2018 18:17:07 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894c367047a9c8b02b87686b3bd87aa31e9ff9ce994ad2fa7d6f1e63ed8fbb5c`  
		Last Modified: Sat, 28 Apr 2018 18:17:14 GMT  
		Size: 19.7 MB (19747953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fbcf72f4ed0072255e2b222da726ad5c52591f55df505820f9a6081260e5d`  
		Last Modified: Sat, 28 Apr 2018 18:17:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:b5f424ce6a85b8dc43f714e94c5ce7d213194919ff133471ac86d616beae2c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78211733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062d70a9b2612022ce5897ce986b1db96c2893c277f78d32d7447e62a950d41c`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:53:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:53:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 10:53:48 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 28 Apr 2018 10:53:51 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sat, 28 Apr 2018 10:53:52 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Sat, 28 Apr 2018 10:53:52 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 10:53:53 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 10:57:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 10:57:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 10:57:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 10:57:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 10:58:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 10:58:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6f3f0d6cbb3707e7e007e11e1955070497ee604e0f7fc3f9c349ae56e944a`  
		Last Modified: Sat, 28 Apr 2018 12:10:26 GMT  
		Size: 12.2 MB (12208969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b9e1e94bf82d0dfefa70fe5700c2023673265beb3ee39d37601775ae63e2`  
		Last Modified: Sat, 28 Apr 2018 12:10:22 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975c559daa77e3d3eaaa4e73db03490cb41ec3e4e3790e82a57f203bdba50b80`  
		Last Modified: Sat, 28 Apr 2018 12:10:27 GMT  
		Size: 20.4 MB (20411518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669c164a51c9a2b7e37a5c51b00d61e57a6f2573fd1837fc14df12b44a66da9c`  
		Last Modified: Sat, 28 Apr 2018 12:10:22 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim` - linux; s390x

```console
$ docker pull ruby@sha256:94cdd6132b5ebd25147cdedd50c15b5fcaf000917b4d979254f5bc950bed9f23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (78963549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fde1c4f36f2534e0bfad939fc0298c7d110d8e7cb955b87104ab4baed330a07`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:17:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:17:45 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 28 Apr 2018 15:17:45 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 28 Apr 2018 15:17:45 GMT
ENV RUBY_VERSION=2.6.0-preview1
# Sat, 28 Apr 2018 15:17:45 GMT
ENV RUBY_DOWNLOAD_SHA256=1d99139116e4e245ce543edb137b2a8873c26e9f0bde88d8cee6789617cc8d0e
# Sat, 28 Apr 2018 15:17:45 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 15:17:45 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 15:19:43 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 15:19:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 15:19:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 15:19:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:19:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 15:19:47 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f43813a92e65f5fce916aa403bad5db2c1c3b378df70a185c39cd3c8556080`  
		Last Modified: Sat, 28 Apr 2018 15:57:17 GMT  
		Size: 13.2 MB (13217226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5c4e9108fee4c2b81cc60762bc2b8334b4f1fdb4362dcd4d12d10461bbda2`  
		Last Modified: Sat, 28 Apr 2018 15:57:14 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fde4e47f7176aba4159fb56b4cf97e51fd86a47bc43ba04a680efc6f0b39c9`  
		Last Modified: Sat, 28 Apr 2018 15:57:17 GMT  
		Size: 20.6 MB (20560689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308d477d513c0e4021627a050ed811a3c75679fcc728d614ca812e185c385a3d`  
		Last Modified: Sat, 28 Apr 2018 15:57:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
