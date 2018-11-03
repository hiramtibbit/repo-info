## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:cef7b5cbd6221700ff963483ad4258073d894992b344e4c56e4a1156e1944801
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

### `ruby:slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:854720e2d43979615a8b54a18588f25316bf762436802bdb8e1a2a3e14a6aa0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80248520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8d0786af5e1fa61279ae272583b9cbfa757fb579a7fd7f225ec40116c5a7ff`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:54:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 Oct 2018 23:54:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 15 Oct 2018 23:58:29 GMT
ENV RUBY_MAJOR=2.5
# Thu, 18 Oct 2018 23:34:00 GMT
ENV RUBY_VERSION=2.5.3
# Thu, 18 Oct 2018 23:34:01 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 00:58:19 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 00:58:19 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 01:01:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 01:01:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 01:01:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 01:01:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 01:01:31 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 01:01:42 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8076d35d79a550249d7c21230509ad5d57553a5aa294159c7e1b45dccbed0116`  
		Last Modified: Tue, 16 Oct 2018 00:23:29 GMT  
		Size: 12.8 MB (12811976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734a3d784cb1370d3213af8d166d0d42581468a7d23ca9a8705a878b9fa03be`  
		Last Modified: Tue, 16 Oct 2018 00:23:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66215ed14c4bee6949674d32b5587d4a221a6904f7a92e09ac10393faf23de7a`  
		Last Modified: Sat, 03 Nov 2018 01:59:37 GMT  
		Size: 22.1 MB (22126255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08e1dd244c1167b2864dd508bda11b72f73711819913912197b41331b11dbf8`  
		Last Modified: Sat, 03 Nov 2018 01:59:35 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:f156757f1b5a822fbf2611ec0eb7d57e24eac7fea52a6eab40a706e5201a1506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77080057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd020e3126bdeaca92821377ea3275cd476f963544ee00ba57013b654f3126cd`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 12:07:38 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 09:20:22 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 09:20:22 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 09:08:14 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 09:08:14 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 09:11:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 09:11:17 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 09:11:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 09:11:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 09:11:26 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 09:11:26 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd956c3d59d9c149b09ee0d97a8e7b865de6f7a097088208284aa8744d2765a`  
		Last Modified: Tue, 16 Oct 2018 12:35:04 GMT  
		Size: 11.4 MB (11376546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41750db3498e0c5c42960a9a7b557f725903b2fc9bc90d11bcb52322ad7f0b`  
		Last Modified: Tue, 16 Oct 2018 12:35:00 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fb848340e205c765acab447ed4a8b968a1ced824859fdebeb59822022ceb0b`  
		Last Modified: Sat, 03 Nov 2018 10:00:39 GMT  
		Size: 21.7 MB (21670056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b4fdb5e86d486a3f9cf851395fe3481956a88c20aeb3cf19771591bf509f6`  
		Last Modified: Sat, 03 Nov 2018 10:00:33 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:d4476f448b3a36f8b665208b0560e85eccde0d4e6ee2eaf5488e8ac5454b987d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74436034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8fc2212428cb29bfad2fb5cd919028f2a6757592a5be45d03cdd7d4eb6afe8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:37:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:37:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 13:43:32 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 12:27:50 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 12:27:50 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 12:18:22 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 12:18:23 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 12:21:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 12:21:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 12:21:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 12:21:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 12:21:39 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 12:21:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7f2f49a858f9911a8f5ce08344d570b05ef2e0da45af19eb828e10f8a6c8e3`  
		Last Modified: Tue, 16 Oct 2018 14:10:05 GMT  
		Size: 10.9 MB (10897122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921bb25ec33100efed2b0223c431392bbc50d201951e2e85c25b62d55e65e92d`  
		Last Modified: Tue, 16 Oct 2018 14:10:01 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c9c22dba9332e859fe98c75e0ab461f5e978815156a3578ee8e231f2c8667`  
		Last Modified: Sat, 03 Nov 2018 13:06:32 GMT  
		Size: 21.5 MB (21475488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a16643252e7cab055b2059d635b54397a5e32bcd13dc5a396945ad4dd9d64e`  
		Last Modified: Sat, 03 Nov 2018 13:06:27 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:0e5eb7bc46d9961636f983a33cf596512b281a9ef844a50a7d400357dd55d54f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76642062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e6442c2c5c90cf957782a9d8c54fe63531b774ef581950e5a7e24e0cefccd50`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 20:03:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 20:03:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 20:15:04 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 11:25:41 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 11:25:41 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 10:29:04 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 10:29:05 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 10:35:17 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 10:35:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 10:35:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 10:35:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 10:35:21 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 10:35:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a09b97f46d02c4bcd42ca4df89ced3449218f7a9725a18c05fa54a80eb18635`  
		Last Modified: Tue, 16 Oct 2018 21:00:33 GMT  
		Size: 11.6 MB (11622057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39294da9e60f33895e6650bff8a8fec3703b67804f469022b77d23ec489489bd`  
		Last Modified: Tue, 16 Oct 2018 21:00:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0957a2d7058865d1cd8dc48664e918a2e7132a16eb364cbe487ea1a90077ba9`  
		Last Modified: Sat, 03 Nov 2018 11:49:50 GMT  
		Size: 21.9 MB (21896054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1819d9a34dec79e9529a87bf468bece4cc0370e814f6e930e70c16031aee6998`  
		Last Modified: Sat, 03 Nov 2018 11:49:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:0402c71684c263305e09d1f1222ea08d89bbd2ed0ee4b92900a3c4e7874637fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84006428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e856a261609b1b78b59a92ee78ec597a499840c26a020a36fb2848b1bc8a5eb`
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
# Wed, 17 Oct 2018 00:56:01 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 11:38:03 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 11:38:03 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 12:16:59 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 12:16:59 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 12:19:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 12:19:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 12:19:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 12:19:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 12:19:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 12:19:54 GMT
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
	-	`sha256:ce0508c879b3ef0da294a1e72f7bd216172aa33c4652602ebb47d03b1cce48d7`  
		Last Modified: Sat, 03 Nov 2018 13:19:31 GMT  
		Size: 21.7 MB (21710947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a0a0d7a93586a89c9c4f77c33bed6381a8e6895dd7d746c2bfdfb1714a55d7`  
		Last Modified: Sat, 03 Nov 2018 13:19:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:d47e4ec7074e5b2e782b0c315f25a22da192a2f67fe2374aea69b79ffaddb483
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80172958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682026b00ba1249b2f9cb07dbacfc73d91dc9cd8297cbd3cbd8733275a2ac4e5`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:52:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:52:51 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:02:26 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 09:16:49 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 09:16:51 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 09:22:19 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 09:22:20 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 09:28:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 09:28:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 09:28:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 09:28:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 09:28:20 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 09:28:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd23d59872bf0d17bfb79e6fb27e088088d601dce8b9b7851b29d9121c6089`  
		Last Modified: Tue, 16 Oct 2018 14:33:05 GMT  
		Size: 12.2 MB (12208452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1e404b80d55a426a17d9bcd046d368d0ffa535d13493744d1f4382a3ca8297`  
		Last Modified: Tue, 16 Oct 2018 14:32:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88728bba2f3fd966411ffe00d96a6daf9d234ceedfa08fc63457a0c11f47c859`  
		Last Modified: Sat, 03 Nov 2018 10:20:36 GMT  
		Size: 22.4 MB (22368607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79805bda0f2a8ec24e5dc1ea4b139546d6788472927611a8c77db80a2b19ec94`  
		Last Modified: Sat, 03 Nov 2018 10:20:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:9fdd7194f52cefeb7ae5e27eb353043245d8aab35909ab82e420f4ac2a6e8a04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80933626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8b9c2a6cf8c0820df20c6d4eb2d039a68f35b0e789395a1ec11c97ea473da`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:56:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:57:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 16 Oct 2018 14:02:54 GMT
ENV RUBY_MAJOR=2.5
# Fri, 19 Oct 2018 12:27:45 GMT
ENV RUBY_VERSION=2.5.3
# Fri, 19 Oct 2018 12:27:45 GMT
ENV RUBY_DOWNLOAD_SHA256=1cc9d0359a8ea35fc6111ec830d12e60168f3b9b305a3c2578357d360fcf306f
# Sat, 03 Nov 2018 12:30:23 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 12:30:23 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 12:32:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 12:32:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 12:32:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 12:32:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 12:32:37 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 12:32:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89879bc0b9e4c063d3bda68e95bfe1164fc6615687e2070e1e5cf96c2f73eba`  
		Last Modified: Tue, 16 Oct 2018 14:24:42 GMT  
		Size: 13.2 MB (13214294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c1e854764936ac4e189744be1e758211d8eafd3160c5d022e4c72934011a0a`  
		Last Modified: Tue, 16 Oct 2018 14:24:38 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2747b8dd499575d1a5ba71ee8583a5c00bbf4ba3662d59993ac6b36ff41d462`  
		Last Modified: Sat, 03 Nov 2018 13:01:36 GMT  
		Size: 22.5 MB (22519131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e3f3bf96139a2ca2f906e7673c68e712f524989df48b5f8cb5c0f0e2233c48`  
		Last Modified: Sat, 03 Nov 2018 13:01:33 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
