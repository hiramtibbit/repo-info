## `ruby:slim`

```console
$ docker pull ruby@sha256:0068dba6ee9b1e9e34f85823bae2b0099c69934f847e2a2cf3f4f8f151acb571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `ruby:slim` - linux; amd64

```console
$ docker pull ruby@sha256:4839dc5ef4c9858e4be919a9271e3b6c79b541ef9e2c3345b6a608bcae9eacda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53151601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11121c395ab26941b0cd3f8b28739a0c946da40efd5d0d48bb198da095e8a2de`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:32:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:32:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 23 Jan 2019 04:32:25 GMT
ENV RUBY_MAJOR=2.6
# Sat, 02 Feb 2019 00:22:34 GMT
ENV RUBY_VERSION=2.6.1
# Sat, 02 Feb 2019 00:22:35 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Feb 2019 00:25:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Feb 2019 00:25:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Feb 2019 00:25:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Feb 2019 00:25:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Feb 2019 00:25:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Feb 2019 00:25:39 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c252f3cf658db53e036a0c569e860b9646610f5ee62ff4f033f1fe2a78d49428`  
		Last Modified: Wed, 23 Jan 2019 05:25:12 GMT  
		Size: 10.5 MB (10470671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc35df3181778f4be6a378ec95593a2edb9e90c045d5e9707aa972e81fb005d`  
		Last Modified: Wed, 23 Jan 2019 05:25:09 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736488aef0cf9d7ec6d86fa99a7ad490c783e6a803c406b584e795dc1e4fc6e6`  
		Last Modified: Sat, 02 Feb 2019 00:52:39 GMT  
		Size: 20.2 MB (20179869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881a96785490fe32f5e668394240021a421fe841ccd2e3d93f8ca896cec34190`  
		Last Modified: Sat, 02 Feb 2019 00:52:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:203f26a8b0b013ad86413b00e7bd86f48ff6597cd3d637ff9c0c29d7cf62c224
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49928438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897f72e07902ce3cded5cc236a15460701ac6129b8e6237b421d6ef9198ad250`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:16:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:16:59 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 23 Jan 2019 13:17:00 GMT
ENV RUBY_MAJOR=2.6
# Sat, 02 Feb 2019 09:51:15 GMT
ENV RUBY_VERSION=2.6.1
# Sat, 02 Feb 2019 09:51:15 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Feb 2019 09:54:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Feb 2019 09:54:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Feb 2019 09:54:26 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Feb 2019 09:54:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Feb 2019 09:54:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Feb 2019 09:54:27 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5c9951c40cc93f31396d00f15b22f1ac7ce3d5a292365b2036bd1537654b92`  
		Last Modified: Wed, 23 Jan 2019 14:19:41 GMT  
		Size: 9.0 MB (9032959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515877308e5185d4c16f4e9e3b6705e523feda6a5797a3951e217069ecc393ae`  
		Last Modified: Wed, 23 Jan 2019 14:19:38 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e360423c1f4bc4d6240aa10df432514cf9c27102574ea750cf63c0f50dac20`  
		Last Modified: Sat, 02 Feb 2019 09:56:07 GMT  
		Size: 19.7 MB (19713264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58dc2e1b8e5873b377516e53c45df2350edb6c7b95d3ef13bb72a396a6d30b0`  
		Last Modified: Sat, 02 Feb 2019 09:56:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:7fec9063e89e7dfe85a3e19cfb5e1093eb2917cb398c3dce1948319a6f65142c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53000828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658eb6ba198c45206ed73478e0f2b7fdbdcbd759dd2e7b2fc924cee16546f3a1`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:36:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:36:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 23 Jan 2019 14:36:36 GMT
ENV RUBY_MAJOR=2.6
# Sat, 02 Feb 2019 09:28:47 GMT
ENV RUBY_VERSION=2.6.1
# Sat, 02 Feb 2019 09:28:55 GMT
ENV RUBY_DOWNLOAD_SHA256=47b629808e9fd44ce1f760cdf3ed14875fc9b19d4f334e82e2cf25cb2898f2f2
# Sat, 02 Feb 2019 09:34:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Sat, 02 Feb 2019 09:34:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 02 Feb 2019 09:34:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 02 Feb 2019 09:34:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Feb 2019 09:34:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 02 Feb 2019 09:35:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1773ddf18e3e1f03b8805f552138379ce90b25b1bcc4025b86697da56c8c31b3`  
		Last Modified: Wed, 23 Jan 2019 15:09:46 GMT  
		Size: 9.9 MB (9864723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac9524d8e40db03bd887ab1215b4017fbf5e1b277b02f43dc1f16891d9b88e4`  
		Last Modified: Wed, 23 Jan 2019 15:09:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc926d8a62e26531a9c7f32849be9ad162e9ba9fd80f6fa118947f6c21c47c`  
		Last Modified: Sat, 02 Feb 2019 10:06:37 GMT  
		Size: 20.4 MB (20380384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1bf505940ce6bedc03507ddc63dde45d5f3d2ff9c741b6a3b8a571b45e8dbb`  
		Last Modified: Sat, 02 Feb 2019 10:06:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
