<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:3.7`](#rabbitmq37)
-	[`rabbitmq:3.7.11`](#rabbitmq3711)
-	[`rabbitmq:3.7.11-alpine`](#rabbitmq3711-alpine)
-	[`rabbitmq:3.7.11-management`](#rabbitmq3711-management)
-	[`rabbitmq:3.7.11-management-alpine`](#rabbitmq3711-management-alpine)
-	[`rabbitmq:3.7-alpine`](#rabbitmq37-alpine)
-	[`rabbitmq:3.7-management`](#rabbitmq37-management)
-	[`rabbitmq:3.7-management-alpine`](#rabbitmq37-management-alpine)
-	[`rabbitmq:3.8.0-beta.2`](#rabbitmq380-beta2)
-	[`rabbitmq:3.8.0-beta.2-alpine`](#rabbitmq380-beta2-alpine)
-	[`rabbitmq:3.8.0-beta.2-management`](#rabbitmq380-beta2-management)
-	[`rabbitmq:3.8.0-beta.2-management-alpine`](#rabbitmq380-beta2-management-alpine)
-	[`rabbitmq:3.8-rc`](#rabbitmq38-rc)
-	[`rabbitmq:3.8-rc-alpine`](#rabbitmq38-rc-alpine)
-	[`rabbitmq:3.8-rc-management`](#rabbitmq38-rc-management)
-	[`rabbitmq:3.8-rc-management-alpine`](#rabbitmq38-rc-management-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:19c9d67d560804f0866888e63bf0677046923ad082dd447e0ecbadd6f10b63dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:57b028a4bb9592ece3915e3e9cdbbaecb3eb82b753aaaf5250f8d25d81d318e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f44206f871db802561bed3058b7da05c72f52626da72e337c78251913879e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:7de93c5572315cdee89fd02ebf41d91858a012c15b0f18a6c8b3fda58bd130c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80132445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7674e07ba4df615a0f22011cdf72b4b2a443ae59dab5aa5fd6e9f524ac1349c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:19c9d67d560804f0866888e63bf0677046923ad082dd447e0ecbadd6f10b63dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:57b028a4bb9592ece3915e3e9cdbbaecb3eb82b753aaaf5250f8d25d81d318e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f44206f871db802561bed3058b7da05c72f52626da72e337c78251913879e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; 386

```console
$ docker pull rabbitmq@sha256:7de93c5572315cdee89fd02ebf41d91858a012c15b0f18a6c8b3fda58bd130c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80132445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7674e07ba4df615a0f22011cdf72b4b2a443ae59dab5aa5fd6e9f524ac1349c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.11`

```console
$ docker pull rabbitmq@sha256:19c9d67d560804f0866888e63bf0677046923ad082dd447e0ecbadd6f10b63dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.7.11` - linux; amd64

```console
$ docker pull rabbitmq@sha256:57b028a4bb9592ece3915e3e9cdbbaecb3eb82b753aaaf5250f8d25d81d318e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f44206f871db802561bed3058b7da05c72f52626da72e337c78251913879e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11` - linux; 386

```console
$ docker pull rabbitmq@sha256:7de93c5572315cdee89fd02ebf41d91858a012c15b0f18a6c8b3fda58bd130c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80132445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7674e07ba4df615a0f22011cdf72b4b2a443ae59dab5aa5fd6e9f524ac1349c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.11-alpine`

```console
$ docker pull rabbitmq@sha256:5e5f4dc17f4f7d11f4692eb16841b3d361c85097393c32a050811bf885b0bd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7.11-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:258bd0685eb8661b79cb4b1ca88748db1708d8972b5986f1db158a354ea98d6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48970777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c96acfabbcc90ad6d415e0ecd8b2dd2df4776746b4e3adc699bcf141e50422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33275e12411b26440c8cacf8a37d24a96a804c64cf93ed30cee723f07a91dbbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da73d8ae3d7a35b03031ca8de80f678d7c824b2ac5d0b305967cd739af03fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:6feefd14e47ba49a4ff88d539c172e11afc26717db0c65d1086b4d5b9a468ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49072500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f795af1d1789312207ff08f0037c2fbcbd50f537a6c8351c95bc62ea3738d8e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e4332583582ded7e615461126b2180913c6653ae3bdb687efa68a173cbbc63b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45244648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842d757b0120573054d57ccbe6fa8394047a770194e8fc07e6becdabaf08c7e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.11-management`

```console
$ docker pull rabbitmq@sha256:ba0986fc85d485f566e712cf21394d4b0299ee5392cfbfb30c2227e2af6bb1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.7.11-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4eb4e3b089f803d50dcf581e91f9bfd46f3a35195a28e3504c37fdd22eb7d491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89927358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdea7ebcb381e4568a50d4e3e67573b7ede9c1fae968a64d3c296140b83c396e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:51 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a266bca58a652b44c5d47672da7c50b908aa6b5e8aa9173d48c7915213706e5`  
		Last Modified: Thu, 07 Feb 2019 01:51:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15be07fe323727fc41a2c02cd8a5799f5f0796084ae0f01a835bb17c67378159`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 9.9 MB (9933982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:7ae83f179ee56cde34b7eb77c3fd8c71efd17135a7e9eec2555435b457bb7bb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90157975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41500f66beb2e3995a0475f691491cd5fc0a47d201fdac07bd76a4b84489c4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:24 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b302bfe1df890be39900322316d317cf87ba6e49adeeeba3f259437c51278a`  
		Last Modified: Thu, 07 Feb 2019 11:51:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f58b4c8eecfc07219eef63cab4a5cbc26ed84851c42a77e592f654e4cbe4`  
		Last Modified: Thu, 07 Feb 2019 11:51:48 GMT  
		Size: 10.0 MB (10025341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.11-management-alpine`

```console
$ docker pull rabbitmq@sha256:736195a1d8cde9a2cf05dc95a25e22872c20dced26d5b042e41dd053976fa01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7.11-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5470e845422d13513abb620c0abb30312d61ef63ff38282123ccc8f8e549d339
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59980050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c65fa4e8c833f910330e15760a2ad4649f5072bbf14def0dd127e033dd549b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:50:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:50:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:50:17 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6943eab04ff8e8a05e5fce11489aec65eb23e45c21d3c24f7ded98e0ea1ed6`  
		Last Modified: Thu, 07 Feb 2019 01:51:30 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19106d4356933209fbce0af81bc476bf135cc95fde25e9b86ea1485697523c50`  
		Last Modified: Thu, 07 Feb 2019 01:51:32 GMT  
		Size: 11.0 MB (11009082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:02676be21e43cdbb1de2c83c6802ea525028140ff76cc2039ca2617b1a0c9ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55808369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63be7c095a40927bbfa31fc64a0b1578fd901cb423cc6721794297ed0322e2f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 12:31:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 12:31:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 12:31:53 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20e989a1af4bfc7a3ae167f71ef54be548effc5f015d8fbadd9c32eaf64e92a`  
		Last Modified: Thu, 07 Feb 2019 12:33:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3815109e62e40b2683ca9bdf38ced2843f7e6e6cbe5e7ae2d9b7d778cd7e30e7`  
		Last Modified: Thu, 07 Feb 2019 12:33:09 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:17a02e249ea491e00c7fa144050a95058a2a23f10566aedd0cc1236e5eb5f0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60198998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61649a73c0bcd81de44569289be3a110e71470536636bb721a4b3b95dbc0664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:47 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:52 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6266374ed7141ae29052787bd2550b21263ceba2fbc4bef3a088683529a9d4`  
		Last Modified: Thu, 07 Feb 2019 11:51:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6aa431f8d2a815040b459e47aa55874e11c833a99f87b71e7fe6f2efd2c9e1`  
		Last Modified: Thu, 07 Feb 2019 11:52:01 GMT  
		Size: 11.1 MB (11126307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.11-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d4ec7cf546aa2f656db17841cd6202ee1c376dd471fc6f617cd0330f7fc44967
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7071f71ede326792f308993364dbb0c5008823c22a6908400f78f3e69c805600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:49:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:49:19 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242167fff1a2f900e8b16125a409142cbaf30bdbd9eaf7d7437795fef1681cb7`  
		Last Modified: Thu, 07 Feb 2019 07:50:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1050df4c56b7c2894225502b231549636c10953a69a1ab5fe37268621b956f`  
		Last Modified: Thu, 07 Feb 2019 07:50:26 GMT  
		Size: 11.0 MB (11013397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:5e5f4dc17f4f7d11f4692eb16841b3d361c85097393c32a050811bf885b0bd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:258bd0685eb8661b79cb4b1ca88748db1708d8972b5986f1db158a354ea98d6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48970777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c96acfabbcc90ad6d415e0ecd8b2dd2df4776746b4e3adc699bcf141e50422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33275e12411b26440c8cacf8a37d24a96a804c64cf93ed30cee723f07a91dbbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da73d8ae3d7a35b03031ca8de80f678d7c824b2ac5d0b305967cd739af03fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:6feefd14e47ba49a4ff88d539c172e11afc26717db0c65d1086b4d5b9a468ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49072500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f795af1d1789312207ff08f0037c2fbcbd50f537a6c8351c95bc62ea3738d8e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e4332583582ded7e615461126b2180913c6653ae3bdb687efa68a173cbbc63b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45244648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842d757b0120573054d57ccbe6fa8394047a770194e8fc07e6becdabaf08c7e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:ba0986fc85d485f566e712cf21394d4b0299ee5392cfbfb30c2227e2af6bb1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4eb4e3b089f803d50dcf581e91f9bfd46f3a35195a28e3504c37fdd22eb7d491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89927358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdea7ebcb381e4568a50d4e3e67573b7ede9c1fae968a64d3c296140b83c396e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:51 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a266bca58a652b44c5d47672da7c50b908aa6b5e8aa9173d48c7915213706e5`  
		Last Modified: Thu, 07 Feb 2019 01:51:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15be07fe323727fc41a2c02cd8a5799f5f0796084ae0f01a835bb17c67378159`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 9.9 MB (9933982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:7ae83f179ee56cde34b7eb77c3fd8c71efd17135a7e9eec2555435b457bb7bb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90157975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41500f66beb2e3995a0475f691491cd5fc0a47d201fdac07bd76a4b84489c4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:24 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b302bfe1df890be39900322316d317cf87ba6e49adeeeba3f259437c51278a`  
		Last Modified: Thu, 07 Feb 2019 11:51:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f58b4c8eecfc07219eef63cab4a5cbc26ed84851c42a77e592f654e4cbe4`  
		Last Modified: Thu, 07 Feb 2019 11:51:48 GMT  
		Size: 10.0 MB (10025341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:736195a1d8cde9a2cf05dc95a25e22872c20dced26d5b042e41dd053976fa01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5470e845422d13513abb620c0abb30312d61ef63ff38282123ccc8f8e549d339
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59980050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c65fa4e8c833f910330e15760a2ad4649f5072bbf14def0dd127e033dd549b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:50:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:50:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:50:17 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6943eab04ff8e8a05e5fce11489aec65eb23e45c21d3c24f7ded98e0ea1ed6`  
		Last Modified: Thu, 07 Feb 2019 01:51:30 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19106d4356933209fbce0af81bc476bf135cc95fde25e9b86ea1485697523c50`  
		Last Modified: Thu, 07 Feb 2019 01:51:32 GMT  
		Size: 11.0 MB (11009082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:02676be21e43cdbb1de2c83c6802ea525028140ff76cc2039ca2617b1a0c9ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55808369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63be7c095a40927bbfa31fc64a0b1578fd901cb423cc6721794297ed0322e2f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 12:31:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 12:31:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 12:31:53 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20e989a1af4bfc7a3ae167f71ef54be548effc5f015d8fbadd9c32eaf64e92a`  
		Last Modified: Thu, 07 Feb 2019 12:33:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3815109e62e40b2683ca9bdf38ced2843f7e6e6cbe5e7ae2d9b7d778cd7e30e7`  
		Last Modified: Thu, 07 Feb 2019 12:33:09 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:17a02e249ea491e00c7fa144050a95058a2a23f10566aedd0cc1236e5eb5f0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60198998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61649a73c0bcd81de44569289be3a110e71470536636bb721a4b3b95dbc0664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:47 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:52 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6266374ed7141ae29052787bd2550b21263ceba2fbc4bef3a088683529a9d4`  
		Last Modified: Thu, 07 Feb 2019 11:51:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6aa431f8d2a815040b459e47aa55874e11c833a99f87b71e7fe6f2efd2c9e1`  
		Last Modified: Thu, 07 Feb 2019 11:52:01 GMT  
		Size: 11.1 MB (11126307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d4ec7cf546aa2f656db17841cd6202ee1c376dd471fc6f617cd0330f7fc44967
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7071f71ede326792f308993364dbb0c5008823c22a6908400f78f3e69c805600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:49:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:49:19 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242167fff1a2f900e8b16125a409142cbaf30bdbd9eaf7d7437795fef1681cb7`  
		Last Modified: Thu, 07 Feb 2019 07:50:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1050df4c56b7c2894225502b231549636c10953a69a1ab5fe37268621b956f`  
		Last Modified: Thu, 07 Feb 2019 07:50:26 GMT  
		Size: 11.0 MB (11013397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8.0-beta.2`

```console
$ docker pull rabbitmq@sha256:009b4e119e90e0dc6145f0a7f74a45e74a45c2f68881f1e75b59730174beb309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.8.0-beta.2` - linux; amd64

```console
$ docker pull rabbitmq@sha256:fbc3f8047e364297f860016f907b52b8a254565be4cdb835bd17a8a9a7d5ed6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80516700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0230f2b6b531ee1a58a30cb134088f31c73c749dd1e35216da3a4ef5ced5e54b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:37:37 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:37:37 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:37:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:37:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:37:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:37:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:37:58 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:37:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:38:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bda922c7cfac5fdafa916bdd76acf844c9115967d60b2844d557aaca07708d`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 10.7 MB (10690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d53f6f6af9fe1378dd39201e6fec74d7711873cb419d3e05e06ccb0a46ace8`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8eae4eda6f0cbb8cfa10216f2acdce75b1b0526c40d61e8b04e65043df9661`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2` - linux; 386

```console
$ docker pull rabbitmq@sha256:95a2520fe5e185b697c1b478027d3f4fc3bb815a046cc31abd8a2aeea7f100f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80656012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb4ca31d2f784dfc9d47d3bbffb098d8b346c06efd5dfd27e0a437b516847fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:38:40 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:38:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:38:58 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:38:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:38:59 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:38:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:39:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b841c624dd9cba390019f83d39bc4e7d36cb7f2bf193a4f9647864688f068`  
		Last Modified: Thu, 07 Feb 2019 11:51:10 GMT  
		Size: 10.7 MB (10689633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6d31c0b11e308ede9c94f3decf0afdd533816493a99e640a9fc90207de279d`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d669d4605b0b68370f38e4f6478a2da1ec72ae8ce7d492fef6bd7f0704421`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8.0-beta.2-alpine`

```console
$ docker pull rabbitmq@sha256:ff340d0f6399c1a67ccc667f32232cd9d976479cc5662f6e4af5461036218fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.8.0-beta.2-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:fe25209001a416106d83935726fcfa4187194104d5f7a095ab944bbaded71184
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49493779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1491c8ba3b1638006aaf6bf53cc6619afcb7808159d3c7985db0d9d31b498b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:48:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:48:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:48:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:48:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:48:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:48:57 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:48:57 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e404440f419d7da5d262e99ef4373d66ff4d395649e3df9b0038589736fdbb8`  
		Last Modified: Thu, 07 Feb 2019 01:50:54 GMT  
		Size: 10.4 MB (10391230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5b4cb7ff9523eebcb62a9245aaaebc4234fb9a6bb4f9e44566c8a380316a`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a608015eded559734bff2ef8d9a981f84e816b5f1ad08447394950b63885fc`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:01abc2bf9bc2ce9302438a2c11828b1df5d11fed7b5a8c470d825632957da338
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45494121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f98d7c6f5cd98d6d1dac7df4390f40f7be09529725b984b9a133fbae638aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:02 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:50:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:05 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:05 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:22 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:23 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:25 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:26 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00b7df6b62f7540c23f71b015e4c850bfe7920353b6b2437715a8bc141a1a9d`  
		Last Modified: Thu, 07 Feb 2019 12:32:18 GMT  
		Size: 10.4 MB (10389567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc3ceedd1795f2b69f12e6df509e26d02cd34b58d9b28e5a94f4ab791a72af6`  
		Last Modified: Thu, 07 Feb 2019 12:32:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9600166229e8b4a0ca8eb8a005dd204eff8de9ce11db631b728b85071ba34e7`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:24d05684eb03538e1b32bd56d1f260b5fc3be5bfca90542fa07a06e22ea97f46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49595001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05acea5b2ace3a00490933a66731b395e1c101e61e390f4703998e8f738f78d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:20 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:20 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:49:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:49:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:49:31 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:49:31 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:49:32 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:49:32 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:49:32 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893586fe45fa95ab5434780ad3b8acba97ba5bf9bfda7acb559a1b151c972b5b`  
		Last Modified: Thu, 07 Feb 2019 11:51:23 GMT  
		Size: 10.4 MB (10389738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea9f380c0f0def7c2856959bc9f2e0828ad458a0c59f39a3c337e2318f8019`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3bba850041b0bf23d1c161afa3101a5887c80c22329c1230b9fb945a2ec8d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:111bd40e564643ad0ae86fe2524343357f89aec63a7d5bb7688268f897454edc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45767693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc699c22e0c88200f83744809e59eaaa57506833bdfaf2b3df5bc9e4dd788b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:46:04 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 07:46:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:46:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:46:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:46:25 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:46:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:46:33 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:36 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:46:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:46:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:46:45 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:46:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a81c2475bec861934a39beb05461042c925c149509a370057515cf446303b`  
		Last Modified: Thu, 07 Feb 2019 07:49:37 GMT  
		Size: 10.4 MB (10390935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e64e182baefd0f1dcef8076ceb08836cda1fcc8f4f1c040e6e1f531b93a00b4`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513b92a67e4e359315390fc0378e52f9080d8cdc8e16034f96aeee979ac8188`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8.0-beta.2-management`

```console
$ docker pull rabbitmq@sha256:a86b34b53290446a76b1a5b28e9cf89e97937f8b18b2d916fa0e400fa9f38521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.8.0-beta.2-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c7da453b72356792d0c74db07382c6f035cc7d0dbebbbce61ebd89636c7bca9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90450513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5234dd0df9bed27a45c0bc6b525695136b818fa4c9bd1204877e010c9dd2190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:37:37 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:37:37 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:37:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:37:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:37:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:37:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:37:58 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:37:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:38:00 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:38:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:38:22 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:38:22 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bda922c7cfac5fdafa916bdd76acf844c9115967d60b2844d557aaca07708d`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 10.7 MB (10690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d53f6f6af9fe1378dd39201e6fec74d7711873cb419d3e05e06ccb0a46ace8`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8eae4eda6f0cbb8cfa10216f2acdce75b1b0526c40d61e8b04e65043df9661`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7afcb8e505bf5dc2afd1849ed2cf05980752c743c59ae8c142cd3e2ea73f313`  
		Last Modified: Thu, 07 Feb 2019 01:50:42 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb346574aae2660fb80927a2f8a4bcd1e6f1351c92ef7b79bcc933b85611eba`  
		Last Modified: Thu, 07 Feb 2019 01:50:46 GMT  
		Size: 9.9 MB (9933624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5543ccbf2a5d2b55ee76a58353bc04dfcaad4cd4f0d973ac62603dacfe939937
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90681401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a475ead11fae14cc4ac45ca177eb5a07bbda7a7b5fada26ddfa0574c698546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:38:40 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:38:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:38:58 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:38:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:38:59 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:38:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:39:00 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:39:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:39:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:39:30 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b841c624dd9cba390019f83d39bc4e7d36cb7f2bf193a4f9647864688f068`  
		Last Modified: Thu, 07 Feb 2019 11:51:10 GMT  
		Size: 10.7 MB (10689633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6d31c0b11e308ede9c94f3decf0afdd533816493a99e640a9fc90207de279d`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d669d4605b0b68370f38e4f6478a2da1ec72ae8ce7d492fef6bd7f0704421`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64111bf726fad421690a8e0a6d91fa1fd183afe7d5fced6a4da4310412228d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:15 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b26615521ea228be28ac45b3b1aaba336ec40dfd2914c2b094c5b48fa9e1abc`  
		Last Modified: Thu, 07 Feb 2019 11:51:18 GMT  
		Size: 10.0 MB (10025199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8.0-beta.2-management-alpine`

```console
$ docker pull rabbitmq@sha256:efca68a75e02a126d1ddf2c59f5aaad8458fa921aefb86e7906678378b183cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.8.0-beta.2-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c43dcad953ecef1a378f4d50383ff11482713123522261cdc72c2b9568046be6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60503077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb25c5d7c92e15217eb1b53ff15376fd1262491e477dcdf6f34b754fa13541f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:48:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:48:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:48:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:48:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:48:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:48:57 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:48:57 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:04 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:08 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:08 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e404440f419d7da5d262e99ef4373d66ff4d395649e3df9b0038589736fdbb8`  
		Last Modified: Thu, 07 Feb 2019 01:50:54 GMT  
		Size: 10.4 MB (10391230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5b4cb7ff9523eebcb62a9245aaaebc4234fb9a6bb4f9e44566c8a380316a`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a608015eded559734bff2ef8d9a981f84e816b5f1ad08447394950b63885fc`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c111339cf60fb7f19e2f4cc5424673660c0dfee8cc07169860b5008746397c`  
		Last Modified: Thu, 07 Feb 2019 01:51:03 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c41c741d06fe0f7a0624aff6517fdb44ff7213844ed090c2d9ae348bf6047`  
		Last Modified: Thu, 07 Feb 2019 01:51:05 GMT  
		Size: 11.0 MB (11009106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c0db4c3545c34ce8c5927c17d500143049a0a96abf103cb274a69d8fd7ec8a08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56330845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b420bd2416f5a1025971eec50f75f562eb6481655e2e3bb4ccd63554bf1174`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:02 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:50:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:05 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:05 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:22 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:23 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:25 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:26 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:27 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:46 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00b7df6b62f7540c23f71b015e4c850bfe7920353b6b2437715a8bc141a1a9d`  
		Last Modified: Thu, 07 Feb 2019 12:32:18 GMT  
		Size: 10.4 MB (10389567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc3ceedd1795f2b69f12e6df509e26d02cd34b58d9b28e5a94f4ab791a72af6`  
		Last Modified: Thu, 07 Feb 2019 12:32:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9600166229e8b4a0ca8eb8a005dd204eff8de9ce11db631b728b85071ba34e7`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f148c1397b3b08f087d4a980e4cfb271fcb14b7dd0f7b6dc40c89586ffffbd`  
		Last Modified: Thu, 07 Feb 2019 12:32:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0d8ee5a0c22b10e129ecabbec3048e34e91437018a3bf8722c21ac77aa8915`  
		Last Modified: Thu, 07 Feb 2019 12:32:41 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:474dd8938d9f1be198d3d5c4c09056056dc4ab72e0615475bd488a766f254353
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60721495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71191fc7f6ea8838d18ed83501cc459e78184e85dcd2e6a1e91f2cd4ae8c1c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:20 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:20 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:49:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:49:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:49:31 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:49:31 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:49:32 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:49:32 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:49:32 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:49:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:49:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:49:45 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893586fe45fa95ab5434780ad3b8acba97ba5bf9bfda7acb559a1b151c972b5b`  
		Last Modified: Thu, 07 Feb 2019 11:51:23 GMT  
		Size: 10.4 MB (10389738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea9f380c0f0def7c2856959bc9f2e0828ad458a0c59f39a3c337e2318f8019`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3bba850041b0bf23d1c161afa3101a5887c80c22329c1230b9fb945a2ec8d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581992c8a4f7e77e08906bfdaab559644da2022b9c3465190dbad8dd44b9749d`  
		Last Modified: Thu, 07 Feb 2019 11:51:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70705e3c8c234f0824513bb532a28f904c58015d413767cb91a830df657cdb4e`  
		Last Modified: Thu, 07 Feb 2019 11:51:36 GMT  
		Size: 11.1 MB (11126302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8.0-beta.2-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:1266091936d53277c32874527945ade2e121bd53ae5115d4c0be9bbe3df8697c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56781319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c7bb0dcc989c125b26f110c6fb0e44f7a5a6d6e2bb19c8073068c441dce783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:46:04 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 07:46:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:46:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:46:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:46:25 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:46:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:46:33 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:36 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:46:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:46:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:46:45 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:46:48 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:46:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:47:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:47:10 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a81c2475bec861934a39beb05461042c925c149509a370057515cf446303b`  
		Last Modified: Thu, 07 Feb 2019 07:49:37 GMT  
		Size: 10.4 MB (10390935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e64e182baefd0f1dcef8076ceb08836cda1fcc8f4f1c040e6e1f531b93a00b4`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513b92a67e4e359315390fc0378e52f9080d8cdc8e16034f96aeee979ac8188`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d61a98b9a1d375507fc03109ef1b84d24c8c3d87bfe77fbd34ad1e8acc07c5c`  
		Last Modified: Thu, 07 Feb 2019 07:49:52 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95af85d65720f6fca00dd7f6b3c616a0acc2f62b110df0431902988eba9a454e`  
		Last Modified: Thu, 07 Feb 2019 07:49:55 GMT  
		Size: 11.0 MB (11013434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8-rc`

```console
$ docker pull rabbitmq@sha256:009b4e119e90e0dc6145f0a7f74a45e74a45c2f68881f1e75b59730174beb309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.8-rc` - linux; amd64

```console
$ docker pull rabbitmq@sha256:fbc3f8047e364297f860016f907b52b8a254565be4cdb835bd17a8a9a7d5ed6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80516700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0230f2b6b531ee1a58a30cb134088f31c73c749dd1e35216da3a4ef5ced5e54b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:37:37 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:37:37 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:37:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:37:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:37:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:37:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:37:58 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:37:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:38:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bda922c7cfac5fdafa916bdd76acf844c9115967d60b2844d557aaca07708d`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 10.7 MB (10690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d53f6f6af9fe1378dd39201e6fec74d7711873cb419d3e05e06ccb0a46ace8`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8eae4eda6f0cbb8cfa10216f2acdce75b1b0526c40d61e8b04e65043df9661`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc` - linux; 386

```console
$ docker pull rabbitmq@sha256:95a2520fe5e185b697c1b478027d3f4fc3bb815a046cc31abd8a2aeea7f100f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80656012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb4ca31d2f784dfc9d47d3bbffb098d8b346c06efd5dfd27e0a437b516847fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:38:40 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:38:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:38:58 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:38:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:38:59 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:38:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:39:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b841c624dd9cba390019f83d39bc4e7d36cb7f2bf193a4f9647864688f068`  
		Last Modified: Thu, 07 Feb 2019 11:51:10 GMT  
		Size: 10.7 MB (10689633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6d31c0b11e308ede9c94f3decf0afdd533816493a99e640a9fc90207de279d`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d669d4605b0b68370f38e4f6478a2da1ec72ae8ce7d492fef6bd7f0704421`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8-rc-alpine`

```console
$ docker pull rabbitmq@sha256:ff340d0f6399c1a67ccc667f32232cd9d976479cc5662f6e4af5461036218fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.8-rc-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:fe25209001a416106d83935726fcfa4187194104d5f7a095ab944bbaded71184
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49493779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1491c8ba3b1638006aaf6bf53cc6619afcb7808159d3c7985db0d9d31b498b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:48:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:48:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:48:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:48:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:48:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:48:57 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:48:57 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e404440f419d7da5d262e99ef4373d66ff4d395649e3df9b0038589736fdbb8`  
		Last Modified: Thu, 07 Feb 2019 01:50:54 GMT  
		Size: 10.4 MB (10391230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5b4cb7ff9523eebcb62a9245aaaebc4234fb9a6bb4f9e44566c8a380316a`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a608015eded559734bff2ef8d9a981f84e816b5f1ad08447394950b63885fc`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:01abc2bf9bc2ce9302438a2c11828b1df5d11fed7b5a8c470d825632957da338
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45494121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f98d7c6f5cd98d6d1dac7df4390f40f7be09529725b984b9a133fbae638aeb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:02 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:50:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:05 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:05 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:22 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:23 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:25 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:26 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00b7df6b62f7540c23f71b015e4c850bfe7920353b6b2437715a8bc141a1a9d`  
		Last Modified: Thu, 07 Feb 2019 12:32:18 GMT  
		Size: 10.4 MB (10389567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc3ceedd1795f2b69f12e6df509e26d02cd34b58d9b28e5a94f4ab791a72af6`  
		Last Modified: Thu, 07 Feb 2019 12:32:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9600166229e8b4a0ca8eb8a005dd204eff8de9ce11db631b728b85071ba34e7`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:24d05684eb03538e1b32bd56d1f260b5fc3be5bfca90542fa07a06e22ea97f46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49595001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05acea5b2ace3a00490933a66731b395e1c101e61e390f4703998e8f738f78d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:20 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:20 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:49:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:49:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:49:31 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:49:31 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:49:32 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:49:32 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:49:32 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893586fe45fa95ab5434780ad3b8acba97ba5bf9bfda7acb559a1b151c972b5b`  
		Last Modified: Thu, 07 Feb 2019 11:51:23 GMT  
		Size: 10.4 MB (10389738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea9f380c0f0def7c2856959bc9f2e0828ad458a0c59f39a3c337e2318f8019`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3bba850041b0bf23d1c161afa3101a5887c80c22329c1230b9fb945a2ec8d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:111bd40e564643ad0ae86fe2524343357f89aec63a7d5bb7688268f897454edc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45767693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc699c22e0c88200f83744809e59eaaa57506833bdfaf2b3df5bc9e4dd788b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:46:04 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 07:46:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:46:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:46:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:46:25 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:46:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:46:33 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:36 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:46:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:46:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:46:45 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:46:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a81c2475bec861934a39beb05461042c925c149509a370057515cf446303b`  
		Last Modified: Thu, 07 Feb 2019 07:49:37 GMT  
		Size: 10.4 MB (10390935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e64e182baefd0f1dcef8076ceb08836cda1fcc8f4f1c040e6e1f531b93a00b4`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513b92a67e4e359315390fc0378e52f9080d8cdc8e16034f96aeee979ac8188`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8-rc-management`

```console
$ docker pull rabbitmq@sha256:a86b34b53290446a76b1a5b28e9cf89e97937f8b18b2d916fa0e400fa9f38521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3.8-rc-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c7da453b72356792d0c74db07382c6f035cc7d0dbebbbce61ebd89636c7bca9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90450513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5234dd0df9bed27a45c0bc6b525695136b818fa4c9bd1204877e010c9dd2190`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:37:36 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:37:37 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:37:37 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:37:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:37:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:37:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:37:58 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:37:58 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:37:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:37:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:38:00 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:38:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:38:22 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:38:22 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bda922c7cfac5fdafa916bdd76acf844c9115967d60b2844d557aaca07708d`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 10.7 MB (10690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d53f6f6af9fe1378dd39201e6fec74d7711873cb419d3e05e06ccb0a46ace8`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8eae4eda6f0cbb8cfa10216f2acdce75b1b0526c40d61e8b04e65043df9661`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7afcb8e505bf5dc2afd1849ed2cf05980752c743c59ae8c142cd3e2ea73f313`  
		Last Modified: Thu, 07 Feb 2019 01:50:42 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb346574aae2660fb80927a2f8a4bcd1e6f1351c92ef7b79bcc933b85611eba`  
		Last Modified: Thu, 07 Feb 2019 01:50:46 GMT  
		Size: 9.9 MB (9933624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5543ccbf2a5d2b55ee76a58353bc04dfcaad4cd4f0d973ac62603dacfe939937
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90681401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a475ead11fae14cc4ac45ca177eb5a07bbda7a7b5fada26ddfa0574c698546`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:38:40 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:38:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:38:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:38:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:38:58 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:59 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:38:59 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:38:59 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:38:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:38:59 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:39:00 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:39:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:39:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:39:30 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79b841c624dd9cba390019f83d39bc4e7d36cb7f2bf193a4f9647864688f068`  
		Last Modified: Thu, 07 Feb 2019 11:51:10 GMT  
		Size: 10.7 MB (10689633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6d31c0b11e308ede9c94f3decf0afdd533816493a99e640a9fc90207de279d`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d669d4605b0b68370f38e4f6478a2da1ec72ae8ce7d492fef6bd7f0704421`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64111bf726fad421690a8e0a6d91fa1fd183afe7d5fced6a4da4310412228d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:15 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b26615521ea228be28ac45b3b1aaba336ec40dfd2914c2b094c5b48fa9e1abc`  
		Last Modified: Thu, 07 Feb 2019 11:51:18 GMT  
		Size: 10.0 MB (10025199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.8-rc-management-alpine`

```console
$ docker pull rabbitmq@sha256:efca68a75e02a126d1ddf2c59f5aaad8458fa921aefb86e7906678378b183cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.8-rc-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c43dcad953ecef1a378f4d50383ff11482713123522261cdc72c2b9568046be6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60503077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb25c5d7c92e15217eb1b53ff15376fd1262491e477dcdf6f34b754fa13541f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:48:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:48:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:48:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:48:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:48:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:48:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:48:57 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:48:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:48:57 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:04 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:08 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:08 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e404440f419d7da5d262e99ef4373d66ff4d395649e3df9b0038589736fdbb8`  
		Last Modified: Thu, 07 Feb 2019 01:50:54 GMT  
		Size: 10.4 MB (10391230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76d5b4cb7ff9523eebcb62a9245aaaebc4234fb9a6bb4f9e44566c8a380316a`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a608015eded559734bff2ef8d9a981f84e816b5f1ad08447394950b63885fc`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c111339cf60fb7f19e2f4cc5424673660c0dfee8cc07169860b5008746397c`  
		Last Modified: Thu, 07 Feb 2019 01:51:03 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331c41c741d06fe0f7a0624aff6517fdb44ff7213844ed090c2d9ae348bf6047`  
		Last Modified: Thu, 07 Feb 2019 01:51:05 GMT  
		Size: 11.0 MB (11009106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c0db4c3545c34ce8c5927c17d500143049a0a96abf103cb274a69d8fd7ec8a08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56330845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b420bd2416f5a1025971eec50f75f562eb6481655e2e3bb4ccd63554bf1174`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:02 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:50:03 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:05 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:05 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:22 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:23 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:24 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:25 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:26 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:27 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:46 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00b7df6b62f7540c23f71b015e4c850bfe7920353b6b2437715a8bc141a1a9d`  
		Last Modified: Thu, 07 Feb 2019 12:32:18 GMT  
		Size: 10.4 MB (10389567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc3ceedd1795f2b69f12e6df509e26d02cd34b58d9b28e5a94f4ab791a72af6`  
		Last Modified: Thu, 07 Feb 2019 12:32:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9600166229e8b4a0ca8eb8a005dd204eff8de9ce11db631b728b85071ba34e7`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f148c1397b3b08f087d4a980e4cfb271fcb14b7dd0f7b6dc40c89586ffffbd`  
		Last Modified: Thu, 07 Feb 2019 12:32:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0d8ee5a0c22b10e129ecabbec3048e34e91437018a3bf8722c21ac77aa8915`  
		Last Modified: Thu, 07 Feb 2019 12:32:41 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:474dd8938d9f1be198d3d5c4c09056056dc4ab72e0615475bd488a766f254353
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60721495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71191fc7f6ea8838d18ed83501cc459e78184e85dcd2e6a1e91f2cd4ae8c1c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 11:49:19 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:20 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:20 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:49:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:49:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:49:31 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:49:31 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:49:32 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:49:32 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:49:32 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:49:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:49:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:49:45 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893586fe45fa95ab5434780ad3b8acba97ba5bf9bfda7acb559a1b151c972b5b`  
		Last Modified: Thu, 07 Feb 2019 11:51:23 GMT  
		Size: 10.4 MB (10389738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea9f380c0f0def7c2856959bc9f2e0828ad458a0c59f39a3c337e2318f8019`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3bba850041b0bf23d1c161afa3101a5887c80c22329c1230b9fb945a2ec8d2`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581992c8a4f7e77e08906bfdaab559644da2022b9c3465190dbad8dd44b9749d`  
		Last Modified: Thu, 07 Feb 2019 11:51:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70705e3c8c234f0824513bb532a28f904c58015d413767cb91a830df657cdb4e`  
		Last Modified: Thu, 07 Feb 2019 11:51:36 GMT  
		Size: 11.1 MB (11126302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.8-rc-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:1266091936d53277c32874527945ade2e121bd53ae5115d4c0be9bbe3df8697c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56781319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c7bb0dcc989c125b26f110c6fb0e44f7a5a6d6e2bb19c8073068c441dce783`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:46:04 GMT
ENV RABBITMQ_VERSION=3.8.0-beta.2
# Thu, 07 Feb 2019 07:46:06 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:46:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:46:10 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:46:25 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:46:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:46:33 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:36 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:46:39 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:46:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:46:45 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:46:48 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:46:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:47:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:47:10 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66a81c2475bec861934a39beb05461042c925c149509a370057515cf446303b`  
		Last Modified: Thu, 07 Feb 2019 07:49:37 GMT  
		Size: 10.4 MB (10390935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e64e182baefd0f1dcef8076ceb08836cda1fcc8f4f1c040e6e1f531b93a00b4`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513b92a67e4e359315390fc0378e52f9080d8cdc8e16034f96aeee979ac8188`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d61a98b9a1d375507fc03109ef1b84d24c8c3d87bfe77fbd34ad1e8acc07c5c`  
		Last Modified: Thu, 07 Feb 2019 07:49:52 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95af85d65720f6fca00dd7f6b3c616a0acc2f62b110df0431902988eba9a454e`  
		Last Modified: Thu, 07 Feb 2019 07:49:55 GMT  
		Size: 11.0 MB (11013434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:5e5f4dc17f4f7d11f4692eb16841b3d361c85097393c32a050811bf885b0bd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:258bd0685eb8661b79cb4b1ca88748db1708d8972b5986f1db158a354ea98d6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48970777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c96acfabbcc90ad6d415e0ecd8b2dd2df4776746b4e3adc699bcf141e50422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33275e12411b26440c8cacf8a37d24a96a804c64cf93ed30cee723f07a91dbbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da73d8ae3d7a35b03031ca8de80f678d7c824b2ac5d0b305967cd739af03fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:6feefd14e47ba49a4ff88d539c172e11afc26717db0c65d1086b4d5b9a468ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49072500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f795af1d1789312207ff08f0037c2fbcbd50f537a6c8351c95bc62ea3738d8e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e4332583582ded7e615461126b2180913c6653ae3bdb687efa68a173cbbc63b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45244648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842d757b0120573054d57ccbe6fa8394047a770194e8fc07e6becdabaf08c7e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:ba0986fc85d485f566e712cf21394d4b0299ee5392cfbfb30c2227e2af6bb1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4eb4e3b089f803d50dcf581e91f9bfd46f3a35195a28e3504c37fdd22eb7d491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89927358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdea7ebcb381e4568a50d4e3e67573b7ede9c1fae968a64d3c296140b83c396e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:51 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a266bca58a652b44c5d47672da7c50b908aa6b5e8aa9173d48c7915213706e5`  
		Last Modified: Thu, 07 Feb 2019 01:51:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15be07fe323727fc41a2c02cd8a5799f5f0796084ae0f01a835bb17c67378159`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 9.9 MB (9933982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:7ae83f179ee56cde34b7eb77c3fd8c71efd17135a7e9eec2555435b457bb7bb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90157975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41500f66beb2e3995a0475f691491cd5fc0a47d201fdac07bd76a4b84489c4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:24 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b302bfe1df890be39900322316d317cf87ba6e49adeeeba3f259437c51278a`  
		Last Modified: Thu, 07 Feb 2019 11:51:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f58b4c8eecfc07219eef63cab4a5cbc26ed84851c42a77e592f654e4cbe4`  
		Last Modified: Thu, 07 Feb 2019 11:51:48 GMT  
		Size: 10.0 MB (10025341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:736195a1d8cde9a2cf05dc95a25e22872c20dced26d5b042e41dd053976fa01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5470e845422d13513abb620c0abb30312d61ef63ff38282123ccc8f8e549d339
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59980050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c65fa4e8c833f910330e15760a2ad4649f5072bbf14def0dd127e033dd549b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:50:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:50:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:50:17 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6943eab04ff8e8a05e5fce11489aec65eb23e45c21d3c24f7ded98e0ea1ed6`  
		Last Modified: Thu, 07 Feb 2019 01:51:30 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19106d4356933209fbce0af81bc476bf135cc95fde25e9b86ea1485697523c50`  
		Last Modified: Thu, 07 Feb 2019 01:51:32 GMT  
		Size: 11.0 MB (11009082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:02676be21e43cdbb1de2c83c6802ea525028140ff76cc2039ca2617b1a0c9ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55808369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63be7c095a40927bbfa31fc64a0b1578fd901cb423cc6721794297ed0322e2f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 12:31:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 12:31:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 12:31:53 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20e989a1af4bfc7a3ae167f71ef54be548effc5f015d8fbadd9c32eaf64e92a`  
		Last Modified: Thu, 07 Feb 2019 12:33:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3815109e62e40b2683ca9bdf38ced2843f7e6e6cbe5e7ae2d9b7d778cd7e30e7`  
		Last Modified: Thu, 07 Feb 2019 12:33:09 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:17a02e249ea491e00c7fa144050a95058a2a23f10566aedd0cc1236e5eb5f0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60198998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61649a73c0bcd81de44569289be3a110e71470536636bb721a4b3b95dbc0664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:47 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:52 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6266374ed7141ae29052787bd2550b21263ceba2fbc4bef3a088683529a9d4`  
		Last Modified: Thu, 07 Feb 2019 11:51:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6aa431f8d2a815040b459e47aa55874e11c833a99f87b71e7fe6f2efd2c9e1`  
		Last Modified: Thu, 07 Feb 2019 11:52:01 GMT  
		Size: 11.1 MB (11126307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d4ec7cf546aa2f656db17841cd6202ee1c376dd471fc6f617cd0330f7fc44967
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7071f71ede326792f308993364dbb0c5008823c22a6908400f78f3e69c805600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:49:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:49:19 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242167fff1a2f900e8b16125a409142cbaf30bdbd9eaf7d7437795fef1681cb7`  
		Last Modified: Thu, 07 Feb 2019 07:50:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1050df4c56b7c2894225502b231549636c10953a69a1ab5fe37268621b956f`  
		Last Modified: Thu, 07 Feb 2019 07:50:26 GMT  
		Size: 11.0 MB (11013397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:5e5f4dc17f4f7d11f4692eb16841b3d361c85097393c32a050811bf885b0bd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:258bd0685eb8661b79cb4b1ca88748db1708d8972b5986f1db158a354ea98d6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48970777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6c96acfabbcc90ad6d415e0ecd8b2dd2df4776746b4e3adc699bcf141e50422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33275e12411b26440c8cacf8a37d24a96a804c64cf93ed30cee723f07a91dbbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56da73d8ae3d7a35b03031ca8de80f678d7c824b2ac5d0b305967cd739af03fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:6feefd14e47ba49a4ff88d539c172e11afc26717db0c65d1086b4d5b9a468ea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49072500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f795af1d1789312207ff08f0037c2fbcbd50f537a6c8351c95bc62ea3738d8e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e4332583582ded7e615461126b2180913c6653ae3bdb687efa68a173cbbc63b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45244648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842d757b0120573054d57ccbe6fa8394047a770194e8fc07e6becdabaf08c7e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:f3d2fde766a39145d8c682edf684a13a06c6ccb770345f9e3387bcbc0453e426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:57b028a4bb9592ece3915e3e9cdbbaecb3eb82b753aaaf5250f8d25d81d318e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79993188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f44206f871db802561bed3058b7da05c72f52626da72e337c78251913879e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:ba0986fc85d485f566e712cf21394d4b0299ee5392cfbfb30c2227e2af6bb1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4eb4e3b089f803d50dcf581e91f9bfd46f3a35195a28e3504c37fdd22eb7d491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89927358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdea7ebcb381e4568a50d4e3e67573b7ede9c1fae968a64d3c296140b83c396e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 01:26:51 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:26:51 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:26:52 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:37:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:37:34 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:37:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:12 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:49:33 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:49:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:49:34 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:49:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:49:35 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:49:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:35 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:49:36 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:49:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:49:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:49:51 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d00e550f2423b66dcfef7f3cb6ae8778a75da90c6c03d79e5e3a78c97e3db`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 779.0 KB (778958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749bbd967505478ca579fde20154e3091e429a3fe66567e11de350b2a6a3759`  
		Last Modified: Thu, 07 Feb 2019 01:50:37 GMT  
		Size: 36.7 MB (36664893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f006243e32393a2d75bcb516688f2b040f39d5fc0271d50cd4510700d964a9c`  
		Last Modified: Thu, 07 Feb 2019 01:50:32 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4a5757b8054f8e3ae64216842b534e35b3a26d6799e8e45f5e61e1cf659fb6`  
		Last Modified: Thu, 07 Feb 2019 01:51:10 GMT  
		Size: 10.2 MB (10166902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adf4b4c1c874bce97f2cc313bee2c1690fff353d4b41b81a13c8e440c877e29`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c206fdb271dd806adeab443dc1343f3bfde107f1ed70f82ef48f5094d51dbff`  
		Last Modified: Thu, 07 Feb 2019 01:51:09 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a266bca58a652b44c5d47672da7c50b908aa6b5e8aa9173d48c7915213706e5`  
		Last Modified: Thu, 07 Feb 2019 01:51:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15be07fe323727fc41a2c02cd8a5799f5f0796084ae0f01a835bb17c67378159`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 9.9 MB (9933982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:7ae83f179ee56cde34b7eb77c3fd8c71efd17135a7e9eec2555435b457bb7bb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90157975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41500f66beb2e3995a0475f691491cd5fc0a47d201fdac07bd76a4b84489c4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:11 GMT
ADD file:11177e5477a962c1361a8cd37f7ee3bb4b91f2b011db289f1243278d4bd97e3f in / 
# Thu, 07 Feb 2019 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:13 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 11:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 		procps 	; 	rm -rf /var/lib/apt/lists/*; 	gosu nobody true
# Thu, 07 Feb 2019 11:29:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:29:20 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:29:21 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:38:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		autoconf 		ca-certificates 		dpkg-dev 		gcc 		gnupg 		libncurses5-dev 		m4 		make 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum --check --strict -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	echo '/usr/local/lib' > /etc/ld.so.conf.d/000-openssl-libc.conf; 	ldconfig; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum --check --strict -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:38:39 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:38:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	groupadd --gid 999 --system rabbitmq; 	useradd --uid 999 --system --home-dir "$RABBITMQ_DATA_DIR" --gid rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:49:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:49:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:06 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install --yes --no-install-recommends 		ca-certificates 		gnupg 		wget 		xz-utils 	; 	rm -rf /var/lib/apt/lists/*; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	gosu rabbitmq rabbitmqctl help; 	gosu rabbitmq rabbitmqctl list_ciphers; 	gosu rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:07 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:07 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:07 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:07 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:07 GMT
COPY file:88e747e80e68f90e3a2b561b676531c06ceb367761be4af4240a85f91159bc7f in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:08 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:08 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; apt-get install -y --no-install-recommends python; rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:24 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e812f908ae23106b5846d2b2e69c36a8ef65704915e9080ef341c8aa3693f5b3`  
		Last Modified: Thu, 07 Feb 2019 00:50:04 GMT  
		Size: 32.6 MB (32608845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e004e152f1c9a05dc7044d0ba1b833f09e3496719ed8416d935d0a036269a32e`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc3dda45e8e3a88ee7f6643e533ce23b80b097cb16f75c6a809ae95bc468021`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc9c0030009fbda6614c1dce2810c6600051833c09eb0ef6b0f52aaeab57973`  
		Last Modified: Thu, 07 Feb 2019 00:49:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6342de5da76649525095f5b33bc15df312a1ba5925fa5738e1c64dc8bc6223c8`  
		Last Modified: Thu, 07 Feb 2019 11:51:06 GMT  
		Size: 688.7 KB (688748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b74f91512b2c7048c1058679c43791c2b3bbb7c2e8f2dccef7d5d99d97c72d`  
		Last Modified: Thu, 07 Feb 2019 11:51:12 GMT  
		Size: 36.7 MB (36660700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d599f62496675a66f0549b22e0a56fc22df2ab72e5fba0b581fb44c66163ea6`  
		Last Modified: Thu, 07 Feb 2019 11:51:05 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03137f565f654f265d2c3beafef6274d7227a25c2d99d01498590a56ee4c7a0c`  
		Last Modified: Thu, 07 Feb 2019 11:51:41 GMT  
		Size: 10.2 MB (10166068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c94ecd92e72370c0e7a0aaf03a388e98ad1cf0b97282110aefdb9c98d82442c`  
		Last Modified: Thu, 07 Feb 2019 11:51:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a83a73766431bb619d9953ddb532b132b238b1837d137911c203ad202bf06a7`  
		Last Modified: Thu, 07 Feb 2019 11:51:39 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b302bfe1df890be39900322316d317cf87ba6e49adeeeba3f259437c51278a`  
		Last Modified: Thu, 07 Feb 2019 11:51:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60f58b4c8eecfc07219eef63cab4a5cbc26ed84851c42a77e592f654e4cbe4`  
		Last Modified: Thu, 07 Feb 2019 11:51:48 GMT  
		Size: 10.0 MB (10025341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:736195a1d8cde9a2cf05dc95a25e22872c20dced26d5b042e41dd053976fa01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5470e845422d13513abb620c0abb30312d61ef63ff38282123ccc8f8e549d339
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (59980050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c65fa4e8c833f910330e15760a2ad4649f5072bbf14def0dd127e033dd549b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:24:38 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 31 Jan 2019 02:24:38 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 31 Jan 2019 02:24:38 GMT
ENV OPENSSL_VERSION=1.1.1a
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Thu, 31 Jan 2019 02:24:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 01:38:28 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 01:48:43 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 01:48:43 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:48:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 01:49:55 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 01:49:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 01:49:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 01:50:05 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 01:50:05 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 01:50:06 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 01:50:06 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:50:06 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 01:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:50:06 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 01:50:07 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 01:50:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 01:50:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 01:50:17 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89671dc2aa8a17881192ed4a558cbe26c0b09dd4c57dac3e430b77920778e67e`  
		Last Modified: Thu, 31 Jan 2019 02:37:21 GMT  
		Size: 1.2 MB (1174841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ff8fcb3555c252432849e5cd19ed1f529c16f2afc2a4e186743b64b9a85de3`  
		Last Modified: Thu, 07 Feb 2019 01:50:59 GMT  
		Size: 35.7 MB (35714736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f87b617e01e78424b8938b44e42fa8b9f05c2a15954efcae5d23ae2e0d61`  
		Last Modified: Thu, 07 Feb 2019 01:50:53 GMT  
		Size: 1.4 KB (1406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865883ca2475d0424c7c012b2d5735d52dc88d640a0fafa5b26c245b868f6e55`  
		Last Modified: Thu, 07 Feb 2019 01:51:24 GMT  
		Size: 9.9 MB (9868233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0093c9efb122f06b724c91c488ad80d91a041a9748aa8f5d60d309caf28b7af`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d22ab5a41bf43594abb5bac046bf67bc41da203facee714662c17463219262c`  
		Last Modified: Thu, 07 Feb 2019 01:51:23 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6943eab04ff8e8a05e5fce11489aec65eb23e45c21d3c24f7ded98e0ea1ed6`  
		Last Modified: Thu, 07 Feb 2019 01:51:30 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19106d4356933209fbce0af81bc476bf135cc95fde25e9b86ea1485697523c50`  
		Last Modified: Thu, 07 Feb 2019 01:51:32 GMT  
		Size: 11.0 MB (11009082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:02676be21e43cdbb1de2c83c6802ea525028140ff76cc2039ca2617b1a0c9ea2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55808369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63be7c095a40927bbfa31fc64a0b1578fd901cb423cc6721794297ed0322e2f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 10:13:52 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 10:13:52 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 10:13:53 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 10:13:54 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 10:13:55 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:40:59 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:59 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:02 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 12:30:23 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 12:30:25 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 12:30:28 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 12:30:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 12:30:51 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 12:30:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 12:31:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 12:31:02 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 12:31:04 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 12:31:05 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 12:31:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 12:31:09 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 12:31:13 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 12:31:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 12:31:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 12:31:53 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d96f2458d4188ea8817b824e398295329244bf535776a1c0d5fb1ab088639f`  
		Last Modified: Wed, 30 Jan 2019 10:33:31 GMT  
		Size: 1.1 MB (1115241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d72affac6f54ee13636f3416346a426d19b5444113835d913b82b7c895b39b9`  
		Last Modified: Thu, 07 Feb 2019 12:32:26 GMT  
		Size: 31.9 MB (31883357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb6b45022daf555cecd3dbe52d8b15aaef61f0ca43e02004b6d07818b01efb`  
		Last Modified: Thu, 07 Feb 2019 12:32:17 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2afdf41d9888622fc842e03000d2b9ef173856f530008221ca100de35773df`  
		Last Modified: Thu, 07 Feb 2019 12:32:52 GMT  
		Size: 9.9 MB (9867090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5879c7a732a6665bb70d40d3beaa6f077f6bb7b1c5da6a2af8867453c5a1e07`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6c80315b238e18dd9a4062d2feb8d808a309534ab6fbd501a4dc34289cda86`  
		Last Modified: Thu, 07 Feb 2019 12:32:50 GMT  
		Size: 4.4 KB (4422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20e989a1af4bfc7a3ae167f71ef54be548effc5f015d8fbadd9c32eaf64e92a`  
		Last Modified: Thu, 07 Feb 2019 12:33:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3815109e62e40b2683ca9bdf38ced2843f7e6e6cbe5e7ae2d9b7d778cd7e30e7`  
		Last Modified: Thu, 07 Feb 2019 12:33:09 GMT  
		Size: 10.8 MB (10836533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:17a02e249ea491e00c7fa144050a95058a2a23f10566aedd0cc1236e5eb5f0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60198998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61649a73c0bcd81de44569289be3a110e71470536636bb721a4b3b95dbc0664`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 12:06:10 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 12:06:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 12:06:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 11:39:34 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 11:49:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 11:49:18 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:49:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 11:50:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 11:50:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 11:50:39 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 11:50:40 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 11:50:40 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 11:50:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 11:50:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 11:50:40 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 11:50:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:50:41 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 11:50:41 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 11:50:47 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 11:50:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 11:50:52 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd698313c543e621b140f252329be872701d67993344c03eddd1fa7d336b48a4`  
		Last Modified: Wed, 30 Jan 2019 12:21:37 GMT  
		Size: 1.2 MB (1220235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3de46489d18a18fa1a8be3ece4a21a946e1ebd279354c605938e0f914b7356c`  
		Last Modified: Thu, 07 Feb 2019 11:51:29 GMT  
		Size: 35.7 MB (35707353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ed83454306285b3cd82281b2a222c9f290b8f11788034b146b79bd5e6fe949`  
		Last Modified: Thu, 07 Feb 2019 11:51:22 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7788f934077f9e212116b101bf266b75d4b69e22415afe5376e1818670f869`  
		Last Modified: Thu, 07 Feb 2019 11:51:54 GMT  
		Size: 9.9 MB (9867235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2478a69b36e284c27fadbe46ee3a29c59711e8aa88d002e51620160de53bccff`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333dbda922ed7c3b23a157d85d261945e802ff29288c2dd835b7be635354a0f2`  
		Last Modified: Thu, 07 Feb 2019 11:51:53 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6266374ed7141ae29052787bd2550b21263ceba2fbc4bef3a088683529a9d4`  
		Last Modified: Thu, 07 Feb 2019 11:51:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6aa431f8d2a815040b459e47aa55874e11c833a99f87b71e7fe6f2efd2c9e1`  
		Last Modified: Thu, 07 Feb 2019 11:52:01 GMT  
		Size: 11.1 MB (11126307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d4ec7cf546aa2f656db17841cd6202ee1c376dd471fc6f617cd0330f7fc44967
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56258241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7071f71ede326792f308993364dbb0c5008823c22a6908400f78f3e69c805600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 09:22:15 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 30 Jan 2019 09:22:20 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Wed, 30 Jan 2019 09:22:22 GMT
ENV OPENSSL_VERSION=1.1.1a
# Wed, 30 Jan 2019 09:22:25 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Wed, 30 Jan 2019 09:22:27 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 07 Feb 2019 07:40:37 GMT
ENV OTP_VERSION=21.2.5
# Thu, 07 Feb 2019 07:40:40 GMT
ENV OTP_SOURCE_SHA256=3ff578ab020a714be25d6787b81938df016db375692d4126a28f1303e6e9c165
# Thu, 07 Feb 2019 07:45:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 07 Feb 2019 07:45:58 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:46:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 07 Feb 2019 07:48:11 GMT
ENV RABBITMQ_VERSION=3.7.11
# Thu, 07 Feb 2019 07:48:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 07 Feb 2019 07:48:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 07 Feb 2019 07:48:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 07 Feb 2019 07:48:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 07 Feb 2019 07:48:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 07 Feb 2019 07:48:36 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 07 Feb 2019 07:48:38 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 07 Feb 2019 07:48:40 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 07:48:41 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 07 Feb 2019 07:48:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 07:48:49 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 07 Feb 2019 07:48:51 GMT
CMD ["rabbitmq-server"]
# Thu, 07 Feb 2019 07:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 07 Feb 2019 07:49:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 07 Feb 2019 07:49:19 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91ac50dd7629515e6b99eb8ba8e095c85def1978df4ff9c8f3a773e6b2062d`  
		Last Modified: Wed, 30 Jan 2019 09:31:32 GMT  
		Size: 1.2 MB (1191772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a0feea3175637513884d51fc107370e422f1fa9a83b6c6c65141f3598da26b`  
		Last Modified: Thu, 07 Feb 2019 07:49:42 GMT  
		Size: 32.0 MB (31984032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb2fed6a1d8cb72de3b75e324169d5da4b4a42105ceafe79ff694d03dc8080c`  
		Last Modified: Thu, 07 Feb 2019 07:49:36 GMT  
		Size: 1.5 KB (1479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f60f3bb4b69e6e41bc67bc3aaa8d7de1242c7776b93c25bac8a099e7e0ac052`  
		Last Modified: Thu, 07 Feb 2019 07:50:08 GMT  
		Size: 9.9 MB (9867892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652bf9fedd40b44ed91827ff16b453bf78006fd8ddaa97dfb8d67d3570ca3302`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c78eacf38b220508147e2780057da0cc4658a0b4ff5ae46fe4bf59bd4dee10e`  
		Last Modified: Thu, 07 Feb 2019 07:50:06 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242167fff1a2f900e8b16125a409142cbaf30bdbd9eaf7d7437795fef1681cb7`  
		Last Modified: Thu, 07 Feb 2019 07:50:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1050df4c56b7c2894225502b231549636c10953a69a1ab5fe37268621b956f`  
		Last Modified: Thu, 07 Feb 2019 07:50:26 GMT  
		Size: 11.0 MB (11013397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
