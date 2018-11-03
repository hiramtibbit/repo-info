## `ruby:rc-alpine3.7`

```console
$ docker pull ruby@sha256:04a113b7a34059ebcbc9d13129b38fb5e9cb3f720eb628b33f7a8447db18537d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:rc-alpine3.7` - linux; amd64

```console
$ docker pull ruby@sha256:4e164608b35bc0cf664724b30e97d2c9722065bdf2a1ad63f5b1d5184f0b813c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23943480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272848e91b63118add5b6dbf7887908149f396ccf37fbcec31d020366bfc02a4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:57:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 12 Sep 2018 02:57:44 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 12 Sep 2018 02:57:45 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 12 Sep 2018 02:57:45 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Sat, 03 Nov 2018 00:50:48 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 00:50:48 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 00:53:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 00:53:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 00:53:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 00:53:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 00:53:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 00:54:04 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce14b0d72478858268a21e99c3584829129e0d217ed07ab5bf9419c03db7254`  
		Last Modified: Wed, 12 Sep 2018 03:20:58 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1aa2a61888fc94a5fdc41b22a5385d08f19e6685a4e1b30739addd50088c969`  
		Last Modified: Sat, 03 Nov 2018 01:57:20 GMT  
		Size: 21.8 MB (21835966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb6f3d7e64fbb642a3a85055a95b618e0da8906b86890fc76272a06083aa825`  
		Last Modified: Sat, 03 Nov 2018 01:57:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.7` - linux; arm variant v6

```console
$ docker pull ruby@sha256:d1cec2a0c7999718b0ea160e8d595e8e940aef8b4e2d18802a73e0f561743b51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23280541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ddfa250b409f6d2ecffcb359908b4b8bf73a17141db02570f1254b0e047261`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:16:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 12 Sep 2018 08:16:09 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 12 Sep 2018 08:16:09 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 12 Sep 2018 08:16:09 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Sat, 03 Nov 2018 07:57:55 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 07:57:55 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 08:00:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 08:00:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 08:00:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 08:00:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 08:00:41 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 08:00:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0442967b477b2b97b4f1f0879e1aa8d69a803dd1a052d0e29250fc13aef7e53`  
		Last Modified: Sat, 15 Sep 2018 09:42:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383643a15f0a90ade21dac3a4c49aff440a83bb26c6ad21b994f8eb8266b6077`  
		Last Modified: Sat, 03 Nov 2018 08:26:23 GMT  
		Size: 21.2 MB (21228869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71538b753cb5cd11cadf2e512c0167a476af29cc58c3bb2cd737d2da74123fca`  
		Last Modified: Sat, 03 Nov 2018 08:26:17 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.7` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:f43251a41e41518d31a6a15fc90a93730c56d0294969113d3e10b7c66e92b6b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23594638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d15cefeb690daaddafa181189d0f42bb1640ea829563b072ec3fa63ece2602`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 13:35:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 15 Sep 2018 13:35:34 GMT
ENV RUBY_MAJOR=2.6-rc
# Sat, 15 Sep 2018 13:35:35 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Sat, 15 Sep 2018 13:35:37 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Sat, 03 Nov 2018 10:18:36 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 10:18:37 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 10:22:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 10:22:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 10:22:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 10:22:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 10:22:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 10:22:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672d6aa98cd289609bf22a30f86fd0aed98dc2feda01abaa1a25a889575bee8f`  
		Last Modified: Sat, 15 Sep 2018 14:26:11 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55ad1dc3ff7639814c24f17e8f24bd3022ac063d0345c89ac39578901023e09`  
		Last Modified: Sat, 03 Nov 2018 11:46:58 GMT  
		Size: 21.6 MB (21594951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51bec66993c570ac7088557f9351acb3b631f1b1d6a1415eb82a7f19f9aecd8`  
		Last Modified: Sat, 03 Nov 2018 11:46:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.7` - linux; 386

```console
$ docker pull ruby@sha256:721e259248cb6de4d98e5f46dc06f3f22d8a798fb1b15a990e854a6441979252
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23489906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4536a9fad3456b28472a7655d8b450767581b9a408c4540964bdbba8c0017f`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:59:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 12 Sep 2018 16:59:24 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 12 Sep 2018 16:59:24 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 12 Sep 2018 16:59:24 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 12 Sep 2018 16:59:24 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 30 Oct 2018 11:35:09 GMT
ENV BUNDLER_VERSION=1.17.1
# Tue, 30 Oct 2018 11:37:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 30 Oct 2018 11:37:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Oct 2018 11:37:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Oct 2018 11:37:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 11:37:58 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 30 Oct 2018 11:37:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1913c41df58ede6866557355a9a035c706b009ac420f4e8f138b1dc1f9109c9a`  
		Last Modified: Wed, 12 Sep 2018 17:17:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d19a9e26eb30a97123e39bf2e9a04d4039d2a0c9dc32a02bb753f621923c5d1`  
		Last Modified: Tue, 30 Oct 2018 12:41:51 GMT  
		Size: 21.3 MB (21320373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78b2780191991c8ceaa26e5905b8e3e155a1b37251941c21c22f393b4fe2dc6`  
		Last Modified: Tue, 30 Oct 2018 12:41:47 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.7` - linux; ppc64le

```console
$ docker pull ruby@sha256:4ff323e1fd02b27f5f80333e3582a6356f368b6e55c9f49350389877daa327a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24159166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497fc51af6426e3c73dee32f0412ca109ae71fedfd949ec401685360c54d8f03`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:56:37 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 12 Sep 2018 08:56:38 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 12 Sep 2018 08:56:39 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 12 Sep 2018 08:56:42 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Sat, 03 Nov 2018 09:14:50 GMT
ENV RUBYGEMS_VERSION=2.7.8
# Sat, 03 Nov 2018 09:14:51 GMT
ENV BUNDLER_VERSION=1.17.1
# Sat, 03 Nov 2018 09:17:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Sat, 03 Nov 2018 09:17:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Nov 2018 09:17:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Nov 2018 09:17:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 09:17:54 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Sat, 03 Nov 2018 09:17:55 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cee28505d9d13df362b528f3fa3b2fa19c0f9a9154f56ddd9d834b26529c1b`  
		Last Modified: Wed, 12 Sep 2018 09:33:28 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012c8259dcc982001e8a87cdab1bf43d19dd6661e7151637669cbe4644e37064`  
		Last Modified: Sat, 03 Nov 2018 10:18:13 GMT  
		Size: 22.1 MB (22058793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73f78945220679a8a131b290c5ad84e8e998712ccf765580430a131e8f94428`  
		Last Modified: Sat, 03 Nov 2018 10:18:06 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.7` - linux; s390x

```console
$ docker pull ruby@sha256:c73efc85a43dec20d5cb5bc6eb9d1208b33831bdcaf14777e248d77b58dd25ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24370101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225151c6a42fdbe6b283c3dddd49f2d03db5723a1bb73e27cdf504fc79a86914`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:49:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 12 Sep 2018 13:49:21 GMT
ENV RUBY_MAJOR=2.6-rc
# Wed, 12 Sep 2018 13:49:21 GMT
ENV RUBY_VERSION=2.6.0-preview2
# Wed, 12 Sep 2018 13:49:21 GMT
ENV RUBY_DOWNLOAD_SHA256=00ddfb5e33dee24469dd0b203597f7ecee66522ebb496f620f5815372ea2d3ec
# Wed, 12 Sep 2018 13:49:21 GMT
ENV RUBYGEMS_VERSION=2.7.7
# Tue, 30 Oct 2018 12:28:41 GMT
ENV BUNDLER_VERSION=1.17.1
# Tue, 30 Oct 2018 12:31:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& wget -O 'thread-stack-fix.patch' 'https://bugs.ruby-lang.org/attachments/download/7081/0001-thread_pthread.c-make-get_main_stack-portable-on-lin.patch' 	&& echo '3ab628a51d92fdf0d2b5835e93564857aea73e0c1de00313864a94a6255cb645 *thread-stack-fix.patch' | sha256sum -c - 	&& patch -p1 -i thread-stack-fix.patch 	&& rm thread-stack-fix.patch 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-network --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del --no-network .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Tue, 30 Oct 2018 12:31:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 30 Oct 2018 12:31:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 30 Oct 2018 12:31:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 12:31:49 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Tue, 30 Oct 2018 12:31:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0071e8c7beb770c0b32a43fc41cd37c86cf9feeeae47dabe0c17087544562ac4`  
		Last Modified: Wed, 12 Sep 2018 14:03:16 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6959091a20e8db778107c36932b8827aabdd8635132fdf930a7bf1488b846a5c`  
		Last Modified: Tue, 30 Oct 2018 13:10:14 GMT  
		Size: 22.2 MB (22168403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bf608accd409a541463c141bf6bab978f715e611dee21160cad1f7c2ec80da`  
		Last Modified: Tue, 30 Oct 2018 13:10:11 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
