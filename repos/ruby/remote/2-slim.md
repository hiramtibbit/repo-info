## `ruby:2-slim`

```console
$ docker pull ruby@sha256:7fd99a939804d6c9a4f7a31dc1d2eff1e9fbbdbebbf4b58f44b6644a5c441e83
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

### `ruby:2-slim` - linux; amd64

```console
$ docker pull ruby@sha256:e2e26e81da86aae9fa2625ad30cdeb26b87d32a735c9cb5929549c23094f0b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79980581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613abad7e904d8730250045f7709e2d22b013c14a0b22c40829a1d4859506fb4`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:04:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:04:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 08:04:34 GMT
ENV RUBY_MAJOR=2.5
# Thu, 15 Feb 2018 08:04:34 GMT
ENV RUBY_VERSION=2.5.0
# Thu, 15 Feb 2018 08:04:35 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Sat, 17 Feb 2018 22:11:07 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 22:11:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 22:13:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 22:27:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 22:27:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 22:27:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 22:27:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 22:27:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee39bf9b2401c007563d08aeca55cc6a2bd907ab6013dc9ff22923a496a3bb8`  
		Last Modified: Thu, 15 Feb 2018 09:14:19 GMT  
		Size: 12.8 MB (12788846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d133eed6449b471344c76eca7db1b77ced5f4d551a687174896481dcc9bcd`  
		Last Modified: Thu, 15 Feb 2018 09:14:20 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfb9abc677b0584c4e0dc7e06e3778e86408779663540c728410e84e00be132`  
		Last Modified: Sun, 18 Feb 2018 00:45:13 GMT  
		Size: 22.1 MB (22058740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8948108f2c1b1cca2373f361b84da1e6422d3ccfaea4cdd6c7d8a92eb3832b06`  
		Last Modified: Sun, 18 Feb 2018 00:45:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:e01e2f68bcd8e3b6fe53d80a8fa94124cf3944459e6be09f6b0b798fcaf35781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76766027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d55e001f4f43a4b89b28b4227b9890d028817d6979b82d329ed358a536b318`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:04:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:04:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 22:04:25 GMT
ENV RUBY_MAJOR=2.5
# Thu, 15 Feb 2018 22:04:25 GMT
ENV RUBY_VERSION=2.5.0
# Thu, 15 Feb 2018 22:04:26 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Sun, 18 Feb 2018 02:24:30 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:24:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:27:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:27:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:27:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:27:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:27:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:27:18 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9229e355384cc7959570a4a6e710b466dc98e6d99890599b11fe767c8ae5315`  
		Last Modified: Thu, 15 Feb 2018 23:03:38 GMT  
		Size: 11.4 MB (11354375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510ae9450c7f2dac4cd42ed95a76323a94fd580fe7a6d666f3711bffbfd57812`  
		Last Modified: Thu, 15 Feb 2018 23:03:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35d635ccd38c7b304b526fd1545e3d3587be1518f7affb2f97f08de170e9ed`  
		Last Modified: Sun, 18 Feb 2018 03:21:13 GMT  
		Size: 21.6 MB (21596926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4b2eb28ad58e7c47ab56aec68642527700a92a533f810875cb29ff01b64712`  
		Last Modified: Sun, 18 Feb 2018 03:21:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:9da61bcced6ef5bbd5af33ba72a1929bb609fc8f30a07f6cf0603534d65d8d83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74139781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38f606a7c67ab58a8f28c17ddb060e0758fc81d3498e240f15f055105103c40`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:22:39 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:22:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Feb 2018 16:22:41 GMT
ENV RUBY_MAJOR=2.5
# Thu, 15 Feb 2018 16:22:41 GMT
ENV RUBY_VERSION=2.5.0
# Thu, 15 Feb 2018 16:22:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Sun, 18 Feb 2018 02:14:23 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 02:14:23 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 02:16:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 02:16:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 02:16:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 02:16:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 02:16:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 02:16:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13133370e39329d6b2c9cbf98451e162faf0293f97b029a98f8ede9c4ec5ff4`  
		Last Modified: Thu, 15 Feb 2018 17:19:14 GMT  
		Size: 10.9 MB (10874692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ef086ba2841d3bff15ef4c11ff9688411e92a8fffb10c6eba69b97beadb70a`  
		Last Modified: Thu, 15 Feb 2018 17:19:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f471154c844f6ae3023c59ddf3af710469446cd925d17439da19f7aa82e41581`  
		Last Modified: Sun, 18 Feb 2018 03:07:14 GMT  
		Size: 21.4 MB (21405020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b692df06ce484b4357198dd75d12b794f93f793b8643585ab1df0a97b7c5bec`  
		Last Modified: Sun, 18 Feb 2018 03:07:07 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:3f3e92df42e2174ec17eec49a283b779e2d318248d71bea36f838d75ed0d8f01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76342205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d18ace1d9592c6b8e32dadf838ed3a5fc7e273edd63cd8316b1957016fbf9e4`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:26:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:26:36 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Feb 2018 03:26:37 GMT
ENV RUBY_MAJOR=2.5
# Fri, 16 Feb 2018 03:26:48 GMT
ENV RUBY_VERSION=2.5.0
# Fri, 16 Feb 2018 03:26:49 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Sat, 17 Feb 2018 21:44:40 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 17 Feb 2018 21:44:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 17 Feb 2018 21:50:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Feb 2018 21:50:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Feb 2018 21:50:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Feb 2018 21:50:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 21:50:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 17 Feb 2018 21:50:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5324fb78fdbba7d44b3a095127700833fc50efdb58842512bb66fda0c121eea8`  
		Last Modified: Fri, 16 Feb 2018 05:17:16 GMT  
		Size: 11.6 MB (11599349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4ee96d2705a0ed6cf7b5855c39408ac9fef7905755807ebc0f77bed24b2312`  
		Last Modified: Fri, 16 Feb 2018 05:17:11 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ffe8d1796561c54d6b0e8699a16ac32b5ddd0f0ecbf9e18a20f95e5d2ff93`  
		Last Modified: Sat, 17 Feb 2018 23:49:13 GMT  
		Size: 21.8 MB (21820575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b91a227515fdf39620d2f959c20ff8d763edd21e76e84618426e86b0bf07f8`  
		Last Modified: Sat, 17 Feb 2018 23:49:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; 386

```console
$ docker pull ruby@sha256:0e74a9cf3925e9bb24f5a171ec6f37f5a7584e10a822dc2c4904a6b8fdc35ab4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83703799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e75da5bc37ceef228eee60a9ee71c434fe99f76de2f012b526b325b588e5b4`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 00:19:22 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:30:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Feb 2018 00:30:52 GMT
ENV RUBY_MAJOR=2.5
# Sat, 17 Feb 2018 00:30:52 GMT
ENV RUBY_VERSION=2.5.0
# Sat, 17 Feb 2018 00:30:52 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Sun, 18 Feb 2018 18:42:41 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 18:42:41 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 18:45:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 18:55:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 18:55:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 18:55:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 18:55:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 18:58:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db81026edacd66203e955fb58209e7d129e926fa0457e962be128ddf3a5d0c14`  
		Last Modified: Sat, 17 Feb 2018 06:01:29 GMT  
		Size: 16.2 MB (16231194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4651693188745b6f0c8a3aeffa6ae3d98ff4ecabc01c60202a5576f40811904c`  
		Last Modified: Sat, 17 Feb 2018 06:01:20 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4595402838f706e515ad36dadda8b7f6991348eb91d31a2ffe71eb04e7e5ca`  
		Last Modified: Sun, 18 Feb 2018 23:50:33 GMT  
		Size: 21.6 MB (21634511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6564813709c28302e60880ebcce48ce1f99e02bb788496dec5e039f09a64ad`  
		Last Modified: Sun, 18 Feb 2018 23:50:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:6c3ee242eef7b886242fd36da9f500fd26939871dff6f41c3b069db52a53cbae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79860217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8189af1ca69bc3399e7a38c1979fb54409ad0974819ff568792df30672050af2`
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
# Sun, 18 Feb 2018 01:20:05 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sun, 18 Feb 2018 01:20:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 18 Feb 2018 01:26:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sun, 18 Feb 2018 01:26:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 18 Feb 2018 01:26:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 18 Feb 2018 01:26:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 18 Feb 2018 01:26:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 18 Feb 2018 01:26:59 GMT
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
	-	`sha256:028c04eba508407b188b090ca49c62be85550aa92dc657d7a42fa36c0da539a6`  
		Last Modified: Sun, 18 Feb 2018 03:18:11 GMT  
		Size: 22.3 MB (22288065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df28c2a77272ff689c933cb594dde6b9f02823d34b2d302d294c9c9eb031c4d`  
		Last Modified: Sun, 18 Feb 2018 03:18:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; s390x

```console
$ docker pull ruby@sha256:e9ef5896dd38d17641abda386d97097e34396ba2db887990ece71142ef18614b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80641595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a012bc9846353b3db37a624f89144ebb8b90f94efa4724d1ac15080823ba2d`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:40:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:40:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 07:40:43 GMT
ENV RUBY_MAJOR=2.5
# Wed, 14 Mar 2018 07:40:43 GMT
ENV RUBY_VERSION=2.5.0
# Wed, 14 Mar 2018 07:40:43 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Wed, 14 Mar 2018 07:40:44 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Wed, 14 Mar 2018 07:40:44 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 14 Mar 2018 07:43:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 14 Mar 2018 07:43:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Mar 2018 07:43:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Mar 2018 07:43:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:43:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Mar 2018 07:43:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608f1ad4a10a31ee4d0b55b3a8a7a3ae88cd8d4fcee3a750c8a80c76a8615f72`  
		Last Modified: Wed, 14 Mar 2018 08:16:16 GMT  
		Size: 13.2 MB (13214258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df37eb51932f998667b3c36ce433566862b954e8a7d93dc833429f4c98ec2454`  
		Last Modified: Wed, 14 Mar 2018 08:16:13 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c982b8de13543884aca30d92e8117907e50ebf5f2776dd27fa62cadc1134ebf6`  
		Last Modified: Wed, 14 Mar 2018 08:16:16 GMT  
		Size: 22.4 MB (22449819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350b7a5e9882747491089dddfbd7468325165fb8385a16227ce9cba214c0ff12`  
		Last Modified: Wed, 14 Mar 2018 08:16:13 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
