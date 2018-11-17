## `ruby:rc-slim-stretch`

```console
$ docker pull ruby@sha256:ea4afb306658bedfe103251f651a8ee9aad3836f3f5ddb84a7182126c6a1b3ca
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

### `ruby:rc-slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:80eba894f320235c4136c049b072854bea51b5c001e9920a8381244d6ecc95e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81195503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04c6c388c54a49dc6d5d82009b247af9612e17bb03c785c729f4ed3abece70`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 18:19:19 GMT
ENV RUBY_MAJOR=2.6-rc
# Fri, 16 Nov 2018 18:19:19 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Fri, 16 Nov 2018 18:19:20 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Fri, 16 Nov 2018 18:19:20 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 18:19:21 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 18:27:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 18:27:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 18:27:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 18:27:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 18:27:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 18:27:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f602e5ce6267bcb4dd5fcf32f38f8412c03c828707adc64cc319a75eb340543`  
		Last Modified: Fri, 16 Nov 2018 19:55:14 GMT  
		Size: 12.8 MB (12836452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e168b582ce1fc0f9824baf56f24493c51a0d4f2a5552d48013cfae630f3b6f`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7b24947770143600e11de376e7ea1898620fd7bbb7320bb570656a9e1a9539`  
		Last Modified: Fri, 16 Nov 2018 19:55:17 GMT  
		Size: 23.0 MB (23038441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73959237977cdcc9a079a4c6492a826e7592c25cdfa4efbfe5a32e7d0a49404`  
		Last Modified: Fri, 16 Nov 2018 19:55:07 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:66fa7ec0500decfff19429336f14b1d6c2f27021c0b93c7948e83902dc058b07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78028246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8423c45a7868ae977fd7ab025366bf49e2e5a9e9dc8b6e3d635e2ad0e76fb614`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:20:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:20:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:20:12 GMT
ENV RUBY_MAJOR=2.6-rc
# Fri, 16 Nov 2018 19:20:13 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Fri, 16 Nov 2018 19:20:14 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Fri, 16 Nov 2018 19:20:14 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 19:20:15 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 19:24:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 19:24:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 19:24:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 19:24:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 19:24:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 19:24:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd03257bb8e58b023a9d1f650411e60bc428b5c324da2870ce0a84c581ec141`  
		Last Modified: Fri, 16 Nov 2018 20:23:15 GMT  
		Size: 11.4 MB (11400761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528d23933ef72a1392626ea44b7ed071b4b553787d3725152929f19b47634a01`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b4eefa8089c2824144863a28abcd3a3d2729304ea28a32a3071e6299fd4c9f`  
		Last Modified: Fri, 16 Nov 2018 20:23:17 GMT  
		Size: 22.6 MB (22595762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4948c69b268a0f8616b99378635727e2a1d02e93360537bc20a28d9ce1d8b04`  
		Last Modified: Fri, 16 Nov 2018 20:23:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:743ff552a55e1be48e3d29bdc8087c78eb51248dc64d07d51d95ca16919f1ade
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75393743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d0273c16fe58755fca4c0e2419287dbf1e50a4fb6e0ef087cf0224dbfa27ed`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:44:51 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:44:52 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 19:44:53 GMT
ENV RUBY_MAJOR=2.6-rc
# Fri, 16 Nov 2018 19:44:53 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Fri, 16 Nov 2018 19:44:54 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Fri, 16 Nov 2018 19:44:55 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 19:44:55 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 19:47:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 19:48:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 19:48:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 19:48:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 19:48:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 19:48:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fac1b48e697ae54d8ed505904fa722d82221cba1946668187e920e0684ce9a6`  
		Last Modified: Fri, 16 Nov 2018 20:42:16 GMT  
		Size: 10.9 MB (10920477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85d5ad046d8893e70aa2b1411417fa8d1bb0b014c4a1c70c10c0cfbe2bd8a56`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff98d7d25cb589013f51feca26dfb3e4b270d3003a55c5257143cf579672cf29`  
		Last Modified: Fri, 16 Nov 2018 20:42:20 GMT  
		Size: 22.4 MB (22396738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3539911f26d015c63d9be6f16441e920404f11ca90507cf98575ef0346a23b1`  
		Last Modified: Fri, 16 Nov 2018 20:42:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:cb4d5cc2ed10373146bf46cfe0e7ee8958ca701849f24806721812a747c8cc27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77567808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692a0521dc6b533398ff288e50159e410e97e50ac21bd474ec3512054b45fec0`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:30:48 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:30:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 17 Nov 2018 06:30:54 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 17 Nov 2018 06:30:55 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Sat, 17 Nov 2018 06:30:58 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Sat, 17 Nov 2018 06:30:59 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 17 Nov 2018 06:31:00 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 17 Nov 2018 06:40:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 17 Nov 2018 06:40:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 17 Nov 2018 06:40:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 17 Nov 2018 06:40:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 06:40:26 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 17 Nov 2018 06:40:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161562d6b5b2a4a35852e1eb6fd002f9a3bda8d340e1e2eb18c95378f45d1137`  
		Last Modified: Sat, 17 Nov 2018 07:39:14 GMT  
		Size: 11.6 MB (11644066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3cd4fc878215bed93ad96266531109f9ed6d7a2e630119aa8eb01737909592`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a665c0063fb974306b37d68591f4415ae1e74d34b378d2b315c337f8641f2e`  
		Last Modified: Sat, 17 Nov 2018 07:39:18 GMT  
		Size: 22.8 MB (22806686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a7f6060c884f779578994728d2b70814da666b2bb59a66fac69efacb0965b6`  
		Last Modified: Sat, 17 Nov 2018 07:39:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:526b3083c2c2b438468a951628f14146d175b54edc40f69af414f445ca2b15e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84882419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89a1b1f31c3a95fa5f16d471de39300136267f2126d215e4cfd9b025c2230d3`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Wed, 17 Oct 2018 00:49:52 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:49:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 17 Oct 2018 00:49:53 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 10 Nov 2018 14:00:37 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Sat, 10 Nov 2018 14:00:37 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Sat, 10 Nov 2018 14:00:37 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 10 Nov 2018 14:00:38 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 10 Nov 2018 14:03:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 10 Nov 2018 14:03:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 10 Nov 2018 14:03:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 10 Nov 2018 14:03:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Nov 2018 14:03:40 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 10 Nov 2018 14:03:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52ee1d0a3d1c078400b20f177f92970637b68bc65d763b3b8d70ea6cc3c60d2`  
		Last Modified: Wed, 17 Oct 2018 01:32:38 GMT  
		Size: 16.3 MB (16255904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049b93cd4160b66ddaefccd54558e94099923a480ae17487d34033a95f624e6d`  
		Last Modified: Wed, 17 Oct 2018 01:32:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50e86a63ab5c9bac509a55241e7f7004f950660a4afec0f744b48362c4d3c5c`  
		Last Modified: Sat, 10 Nov 2018 14:12:27 GMT  
		Size: 22.6 MB (22586938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b970216b31f7e1ce1dbcdc90159182473a369d9d11e41345254be63d8db094d`  
		Last Modified: Sat, 10 Nov 2018 14:12:22 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:971309f058a1684f4b28c88fdffcf9e7036b69a35d0f224c73b9aea64e627b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81074832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320452f0a98b1100ffd54940f8f715b400604f68aa21fa63c5c5fd23e8982b32`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:46:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:46:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 20:46:49 GMT
ENV RUBY_MAJOR=2.6-rc
# Fri, 16 Nov 2018 20:46:49 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Fri, 16 Nov 2018 20:46:51 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Fri, 16 Nov 2018 20:46:52 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 20:46:53 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 20:51:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 20:52:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 20:52:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 20:52:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:52:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 20:52:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a550dd3ddf54c23ce85d3aff960cafd54763c80746456d51732f2bcedaee4ab`  
		Last Modified: Fri, 16 Nov 2018 21:31:11 GMT  
		Size: 12.2 MB (12232004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6da654fb3e12cc12173f0a7c449b3c5f97a266c32570d2b3ce04c7458d36d5`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a4f72dcb2cdbe9528425556449843086c5d4c890e1028d11bef5ed155fe9b0`  
		Last Modified: Fri, 16 Nov 2018 21:31:13 GMT  
		Size: 23.2 MB (23236363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271447e6ba7776989365dfa5afe4b7b9bc052de788f5e04a320561fa234f1556`  
		Last Modified: Fri, 16 Nov 2018 21:31:07 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:e390b44087e54ff2ce80b12e4de3aac08293c5c67b764e3126e797e0983bc41a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81883406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b24382445ce43c4557ed40a1492ad89294554e5d70b7e1a4d400d2dfc5214cb6`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:21:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:21:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 16 Nov 2018 21:21:25 GMT
ENV RUBY_MAJOR=2.6-rc
# Fri, 16 Nov 2018 21:21:25 GMT
ENV RUBY_VERSION=2.6.0-preview3
# Fri, 16 Nov 2018 21:21:26 GMT
ENV RUBY_DOWNLOAD_SHA256=9856d9e0e32df9e5cdf01928eec363d037f1a76dab2abbf828170647beaf64fe
# Fri, 16 Nov 2018 21:21:26 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Fri, 16 Nov 2018 21:21:26 GMT
ENV BUNDLER_VERSION=1.17.1
# Fri, 16 Nov 2018 21:25:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Fri, 16 Nov 2018 21:25:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 16 Nov 2018 21:25:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 16 Nov 2018 21:25:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:25:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Fri, 16 Nov 2018 21:25:52 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1debd64b81b84d7478634077480689cbe6e78c172d0c55c1df3e76b248c72`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 13.2 MB (13238813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58696f6bd15574758db468c2402af717801a16685d5b5e6be023c58b62ef09ba`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df938a7b1ffa1272c8d02584cc6771a709804d1b3523f25a1de5ef8221f9c89a`  
		Last Modified: Fri, 16 Nov 2018 21:50:14 GMT  
		Size: 23.4 MB (23439419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69cb2ba9aeb28a57490ffc4044f626bc6c9de1a6944b79bca2339a1f86f2384`  
		Last Modified: Fri, 16 Nov 2018 21:50:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
