## `ruby:2-slim`

```console
$ docker pull ruby@sha256:0098669eea13ecece4b1ff6104abb76ab5228912219cc95715ef6f9f838ebd94
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
$ docker pull ruby@sha256:e1c9b9f5d829c10be3cc1d2fbdba72adb2a005cdaec7740d09f12ca2ceddcfea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77865326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b814a932e6a915156629038a86b91b158221aafd3091e616dd17b9c445deab`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:35:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:35:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Mar 2018 19:35:58 GMT
ENV RUBY_MAJOR=2.5
# Thu, 29 Mar 2018 16:55:25 GMT
ENV RUBY_VERSION=2.5.1
# Thu, 29 Mar 2018 16:55:25 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Thu, 29 Mar 2018 16:55:26 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Thu, 29 Mar 2018 16:55:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Thu, 29 Mar 2018 16:57:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Thu, 29 Mar 2018 16:57:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 29 Mar 2018 16:57:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 29 Mar 2018 16:57:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 16:57:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 29 Mar 2018 16:57:50 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae2064f516668e46adaf61367e025df9d91cdf38f7de5a6716fabdb9d9b558a`  
		Last Modified: Wed, 14 Mar 2018 20:51:34 GMT  
		Size: 12.8 MB (12811933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95fc1a710b703ef4b3a2b15eec3b82415bf210df49559f5785f912ac0d44d3`  
		Last Modified: Wed, 14 Mar 2018 20:51:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662242a0171263ce37a641b12acfcc5371690fcabc8d75b1bd31d37d7a1cb675`  
		Last Modified: Thu, 29 Mar 2018 19:15:40 GMT  
		Size: 19.9 MB (19917947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9862980e38171af67a5d6f0660d03b7906b1d5380b61b8cb9a46dc1380e28fe0`  
		Last Modified: Thu, 29 Mar 2018 19:15:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v5

```console
$ docker pull ruby@sha256:d63e39ca6b0ff769c3f51224117c000ed57b6baac0840cc4b0d95d83a5cb6cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74865260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1ff020b6f322294c0598e5246eecb44048d230fb800e6395da813b517900b7`
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
# Sat, 28 Apr 2018 11:28:42 GMT
ENV RUBY_MAJOR=2.5
# Sat, 28 Apr 2018 11:28:42 GMT
ENV RUBY_VERSION=2.5.1
# Sat, 28 Apr 2018 11:28:42 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Sat, 28 Apr 2018 11:28:42 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:28:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:31:24 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:31:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:31:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:31:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:31:26 GMT
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
	-	`sha256:4d43166411de09c2a1d352e38740d0fa96f6d6dccfcb12a75e4b54bda460cc9d`  
		Last Modified: Sat, 28 Apr 2018 12:29:09 GMT  
		Size: 19.4 MB (19446585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f541452b6c6ae729525328099ca951701ef9cba025b5769684689b6349ce2`  
		Last Modified: Sat, 28 Apr 2018 12:29:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:e18d247bc643b7e44a5eba8850d7f95da64ae6a21c131c6a66de70013a53ab05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72009112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd122f04f0454181d04b328beb318a1372bbe58c6222eca2d76e7ee9801aed3c`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Thu, 29 Mar 2018 02:28:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Mar 2018 02:28:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 29 Mar 2018 02:28:12 GMT
ENV RUBY_MAJOR=2.5
# Mon, 02 Apr 2018 16:39:38 GMT
ENV RUBY_VERSION=2.5.1
# Mon, 02 Apr 2018 16:39:38 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Mon, 02 Apr 2018 16:39:39 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 16:39:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 16:42:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 16:42:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 16:42:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 16:42:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 16:42:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 16:42:10 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ab4cd3c2e91cdf5456246e416f642b102ba89dd3a8bcd105fa27dceb16c273`  
		Last Modified: Thu, 29 Mar 2018 02:52:33 GMT  
		Size: 10.9 MB (10897965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856f7558c32413645d05926936c19b6d4b0a924af4a68d959d08ccfb08ccdc22`  
		Last Modified: Thu, 29 Mar 2018 02:52:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60ca4e0db6da4b019aeaa38a79fff1462a6dcebdbb59048f02f4c0c44ff92ae`  
		Last Modified: Mon, 02 Apr 2018 17:31:16 GMT  
		Size: 19.3 MB (19253310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc892b484590c43b7e79d6d9eb771810225c539657e0de76a46edac440935132`  
		Last Modified: Mon, 02 Apr 2018 17:31:12 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:cf9575b4eecc36342808da45d9f6656b5687ba7d5487c2ccc3e7f62d97118eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74204215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949f7600435e051651f774d3ba91e7f78c8c24b749e8cd5261409557a8c78245`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:46:25 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:46:26 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 15 Mar 2018 01:46:27 GMT
ENV RUBY_MAJOR=2.5
# Mon, 02 Apr 2018 17:28:59 GMT
ENV RUBY_VERSION=2.5.1
# Mon, 02 Apr 2018 17:29:00 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Mon, 02 Apr 2018 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:29:03 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:36:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:36:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:37:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:37:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:37:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:37:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88415cebbee5b9f473eccb6f89c082fe36573424f76e3afbe12e3de368ebb613`  
		Last Modified: Thu, 15 Mar 2018 03:07:46 GMT  
		Size: 11.6 MB (11622486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ef7b7f97ee9b7cfc08e7dcce407b68ecd188be8b0fa730c745122152b18d17`  
		Last Modified: Thu, 15 Mar 2018 03:07:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1887148fbddcaed244cfbe05546125223b6cc4e074d85d2782bf2262f37ff379`  
		Last Modified: Mon, 02 Apr 2018 19:36:41 GMT  
		Size: 19.7 MB (19673534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ba6c9f9372ebd09c7877715cbbf4560ad16f800fd360c669323f331a7b03ec`  
		Last Modified: Mon, 02 Apr 2018 19:36:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; 386

```console
$ docker pull ruby@sha256:cb945b3b7edf0b5c8425ad569796b6f1d58d973329dac9903e160e6981251747
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81594411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e08e703ab1e79c723d7f955527a7351935761b7fcd1af0d33a95f7e49bad70`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 01:39:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 01:39:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 14 Apr 2018 01:47:55 GMT
ENV RUBY_MAJOR=2.5
# Sat, 14 Apr 2018 01:47:55 GMT
ENV RUBY_VERSION=2.5.1
# Sat, 14 Apr 2018 01:47:55 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Sat, 14 Apr 2018 01:47:55 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 14 Apr 2018 01:47:55 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 14 Apr 2018 01:50:30 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 14 Apr 2018 01:50:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 01:50:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 01:50:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 01:50:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 01:50:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81db3b6c8e196df1c8435daca022c51cdf7f0e3fe23e8e9f920aac00445955d8`  
		Last Modified: Sat, 14 Apr 2018 02:37:31 GMT  
		Size: 16.3 MB (16252171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9838eda6315b336b7fcc5d9c7b44d833294716d94ac77c6f7439a40ec76430a8`  
		Last Modified: Sat, 14 Apr 2018 02:37:25 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93631772a79d0be0bf419545b1b75cd92fe99d4f67526799537bcc9b77a339d`  
		Last Modified: Sat, 14 Apr 2018 02:38:57 GMT  
		Size: 19.5 MB (19498449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b7db099688daf007b2b12c16390d1bc17311d4e889bb8eff1f7c5ddd0578e`  
		Last Modified: Sat, 14 Apr 2018 02:38:51 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:5d965fc356efe7d7a32ff32d08abdaaf2aeb01fdd902b97780aada3fbbf7a33c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5cc73dd496631c854e46bccc106bafccfd6c2a04dee0c5ad9a74e5ed7485c6`
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
# Sat, 28 Apr 2018 11:01:35 GMT
ENV RUBY_MAJOR=2.5
# Sat, 28 Apr 2018 11:01:36 GMT
ENV RUBY_VERSION=2.5.1
# Sat, 28 Apr 2018 11:01:37 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Sat, 28 Apr 2018 11:01:38 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Sat, 28 Apr 2018 11:01:40 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 28 Apr 2018 11:05:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 28 Apr 2018 11:05:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 28 Apr 2018 11:05:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 28 Apr 2018 11:05:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:05:27 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 28 Apr 2018 11:05:28 GMT
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
	-	`sha256:de5c540ec268b73dfe46141320090c2999a78261de805778d1646e4f075da5a2`  
		Last Modified: Sat, 28 Apr 2018 12:12:24 GMT  
		Size: 20.1 MB (20147502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac00cb70f266932bbe82ba6b17d5ef51c39614efb67daa18d8b7026c0f62901f`  
		Last Modified: Sat, 28 Apr 2018 12:12:20 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim` - linux; s390x

```console
$ docker pull ruby@sha256:fa49b7750a546e13c14d387ce9d00b51f6db8e2c933759b36376550042978241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78503554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5786f662afeccd49404ca625adc86fc20c419a8d3f2607b350cd5fd2b836f250`
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
# Mon, 02 Apr 2018 17:10:56 GMT
ENV RUBY_VERSION=2.5.1
# Mon, 02 Apr 2018 17:10:56 GMT
ENV RUBY_DOWNLOAD_SHA256=886ac5eed41e3b5fc699be837b0087a6a5a3d10f464087560d2d21b3e71b754d
# Mon, 02 Apr 2018 17:10:57 GMT
ENV RUBYGEMS_VERSION=2.7.6
# Mon, 02 Apr 2018 17:10:57 GMT
ENV BUNDLER_VERSION=1.16.1
# Mon, 02 Apr 2018 17:13:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Mon, 02 Apr 2018 17:13:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 02 Apr 2018 17:13:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 02 Apr 2018 17:13:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Apr 2018 17:13:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 02 Apr 2018 17:13:15 GMT
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
	-	`sha256:937142ecf2a620144b61ac6b6157b508dd3a725a04fe693c59be72689d410c77`  
		Last Modified: Mon, 02 Apr 2018 17:58:23 GMT  
		Size: 20.3 MB (20311778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6a36921f4e946804b5a8e3b406078d36c0cdf1b1f1c1b90c94393914095f3f`  
		Last Modified: Mon, 02 Apr 2018 17:58:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
