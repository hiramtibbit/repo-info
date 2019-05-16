## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:9d10763ec9e3a077b7a8b636f0da0d79fa684a484ad8d21d6732f6aa6787fb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f77563ea6284198e2e23e1f280ff458da6763917e9a20b924181fc61656acbfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60369325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb91fc4abe55ce674116b242610aa7ac1aa23cb3aa06b85b546c43c3cdfde629`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:39:33 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Thu, 07 Mar 2019 22:39:33 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 07 Mar 2019 22:39:33 GMT
ENV OPENSSL_VERSION=1.1.1b
# Thu, 07 Mar 2019 22:39:33 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Thu, 07 Mar 2019 22:39:34 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 01:33:44 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 01:33:44 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 01:44:03 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 01:44:03 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 01:44:04 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 01:46:44 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 01:46:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 01:46:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 01:46:45 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 01:46:53 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 01:46:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 01:46:54 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 01:46:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 01:46:55 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 01:46:55 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 01:46:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:46:56 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 01:46:56 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 01:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 01:47:05 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 01:47:05 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c271555184039b395c5e5607d9ad1a39acc03841f412569693f1388dbf23b4b`  
		Last Modified: Thu, 07 Mar 2019 22:53:12 GMT  
		Size: 1.4 MB (1402783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1ddd0a60f0e41b1f22a3a5e805c915bb5973050c2485dfac2e433e49b981b0`  
		Last Modified: Thu, 16 May 2019 01:47:57 GMT  
		Size: 35.8 MB (35808457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6475d3d55be5bc3faedc8d16413d98583bcb46d68681e590c7e146db3bd0c1dd`  
		Last Modified: Thu, 16 May 2019 01:47:49 GMT  
		Size: 1.4 KB (1415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfa18afac2f6fe45177da1438304b13d030c2e3cd70656aa3f4f00bcbe5387e`  
		Last Modified: Thu, 16 May 2019 01:49:00 GMT  
		Size: 9.9 MB (9935536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb65335cc9481ef132b299928f54f339651d22c446b9aa5eb0d38e2a0e8ed9c`  
		Last Modified: Thu, 16 May 2019 01:48:59 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c563cdfe5d74d8351caf75477fbb5dce4350958af346e2f896ef6653ace255e0`  
		Last Modified: Thu, 16 May 2019 01:48:59 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d56a58653307a2296cb823c2222d016db0d5995d154c6236ec04b2c97743a76`  
		Last Modified: Thu, 16 May 2019 01:49:06 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6baf61aaefaf4c7349526b1abf9d47634cfb4dd2b70986f39eba11db10a42418`  
		Last Modified: Thu, 16 May 2019 01:49:10 GMT  
		Size: 11.0 MB (11009243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:4ca4072148ca54fb13f3e13ed7e250aea2ba1e81a52da324fa10737cfbc7b0b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56539979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0678e5773030786cef9a341d386d4ec7b1fb2783fcc1e93b829e80b996bb1564`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:18:42 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Fri, 08 Mar 2019 05:18:42 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Fri, 08 Mar 2019 05:18:43 GMT
ENV OPENSSL_VERSION=1.1.1b
# Fri, 08 Mar 2019 05:18:43 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Fri, 08 Mar 2019 05:18:43 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 00:49:31 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 00:49:31 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 01:29:25 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 01:29:26 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 01:29:29 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 01:31:52 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 01:31:52 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 01:31:52 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 01:31:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 01:32:16 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 01:32:18 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 01:32:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 01:32:20 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 01:32:20 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 01:32:22 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 01:32:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:32:23 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 01:32:23 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 01:32:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 01:32:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 01:32:52 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4f05ba3b8400db054412dddbf2912cf4e2b6e5a7e3631a0282fae9c5c9110`  
		Last Modified: Wed, 03 Apr 2019 08:35:52 GMT  
		Size: 1.4 MB (1351593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8d8d961700eb315f1e63f548d3b1e638b604b4ca460db000d5cd2d90a29393`  
		Last Modified: Thu, 16 May 2019 01:33:17 GMT  
		Size: 32.2 MB (32229737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46281c6ac28ab328d5ec47eb448bb50c8800a644629194af169f39d1304aa6aa`  
		Last Modified: Thu, 16 May 2019 01:33:09 GMT  
		Size: 1.5 KB (1484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c75f351a10e8706d11a02bb3c8ba91c2f10637f9e99cfd6ba974d05244541ee`  
		Last Modified: Thu, 16 May 2019 01:33:57 GMT  
		Size: 9.9 MB (9935025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b98b97ff30be6ddb89ca316ab47a31ea74b88037d79fcc7b9974526443302a`  
		Last Modified: Thu, 16 May 2019 01:33:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:519774b0624df33bd1d3dc619b92a2dde2360c9903e5d0e87e3ec275ea4f804d`  
		Last Modified: Thu, 16 May 2019 01:33:55 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54525bb14a5c62eaccad4698afa05a347b19706c5b59eeaa655a7766d17d8a28`  
		Last Modified: Thu, 16 May 2019 01:34:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23d9c478bd4eeaa975c61c618eb2f6bff74d14dab3498b294dad6114186c0d0`  
		Last Modified: Thu, 16 May 2019 01:34:10 GMT  
		Size: 10.9 MB (10871297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e2213b493d96339269abdd3bdc07fa69f4675f9f7636069f7db80e1d57fb7a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56185912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4003bda532fedc05b5a6933417d3dcb7a7ca46ed70a62630482c12489cb26f8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 01:29:22 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Thu, 16 May 2019 01:29:22 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Thu, 16 May 2019 01:29:23 GMT
ENV OPENSSL_VERSION=1.1.1b
# Thu, 16 May 2019 01:29:23 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Thu, 16 May 2019 01:29:24 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 01:29:24 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 01:29:25 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 01:33:45 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 01:33:46 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 01:33:49 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 02:07:43 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 02:07:44 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 02:07:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 02:07:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 02:07:58 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 02:08:00 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 02:08:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 02:08:01 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 02:08:02 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 02:08:02 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 02:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:08:03 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 02:08:04 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 02:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 02:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 02:08:18 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adef785698d0dc2988050c3272e121120c34db8d8639169bbd664fdd05d4f2b5`  
		Last Modified: Thu, 16 May 2019 02:08:36 GMT  
		Size: 1.3 MB (1343436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeca0fe11cc18e1faf9f0c66c7d060e5acd8d4942672d163a061e09acf18290`  
		Last Modified: Thu, 16 May 2019 02:08:41 GMT  
		Size: 32.0 MB (31961301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb8e5418d1620eadf0b0bf9d43966b15277fdbe0b0c561e298f6b6683761a9d`  
		Last Modified: Thu, 16 May 2019 02:08:34 GMT  
		Size: 1.5 KB (1484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a10376c0081fe0958d8df564ebc3f979367eb66059ab230d9a5effa3aeb3a0`  
		Last Modified: Thu, 16 May 2019 02:09:20 GMT  
		Size: 9.9 MB (9934879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63f968fa4e03dfda1e148ea2ae17bde3db343b73a8bbcd82f522d5199d483de`  
		Last Modified: Thu, 16 May 2019 02:09:19 GMT  
		Size: 104.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d176bddf11667c6052da390a5df43d76e235beff8b9c9fbd2d7312e68a0d8a`  
		Last Modified: Thu, 16 May 2019 02:09:19 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a60928187e965f57949731c0e897efa15959dbfb74d335f116e25edb28fc8a`  
		Last Modified: Thu, 16 May 2019 02:09:28 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13dcc191a5ce2a82eb1ee97837055fa541c06f463abc73c0f296e65833ad9b4f`  
		Last Modified: Thu, 16 May 2019 02:09:35 GMT  
		Size: 10.8 MB (10840131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:d70287d34efa14984e51b02714bf482a20e760da4db5ef0376589dd39f07c162
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60589222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b21f6789889c65f852a529765040022ae90f6646cfdabac605ad40fe2cc7624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:17:42 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Fri, 08 Mar 2019 10:17:42 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Fri, 08 Mar 2019 10:17:43 GMT
ENV OPENSSL_VERSION=1.1.1b
# Fri, 08 Mar 2019 10:17:43 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Fri, 08 Mar 2019 10:17:43 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 01:54:55 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 01:54:56 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 02:04:44 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 02:04:45 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 02:04:45 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 02:07:13 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 02:07:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 02:07:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 02:07:14 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 02:07:24 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 02:07:24 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 02:07:24 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 02:07:25 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 02:07:25 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 02:07:25 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 02:07:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:07:25 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 02:07:26 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 02:07:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 02:07:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 02:07:37 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfa7cef956ff2096303453d9e42648e2318df739a4416c95f7105ee03f1dbe`  
		Last Modified: Fri, 08 Mar 2019 10:29:28 GMT  
		Size: 1.4 MB (1446842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b4115360d5ac44da9a23636e66f68cef79747504e2e8974be0e925b4fd341`  
		Last Modified: Thu, 16 May 2019 02:08:14 GMT  
		Size: 35.8 MB (35801093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f115401a9d3089d33e5ff45a0c29cc944e7953cac067b256bd5f9ca6b653fe`  
		Last Modified: Thu, 16 May 2019 02:08:08 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff18474cbb9205a804f4829ac03b48498da62045cc79a44cce05863d986cf64`  
		Last Modified: Thu, 16 May 2019 02:09:05 GMT  
		Size: 9.9 MB (9934930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce5b534fbdd72781a01890236e1117cddf8bdc708e01d0a00be46b529af7efc`  
		Last Modified: Thu, 16 May 2019 02:09:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a599a05c9616d1fb7afb29f39a26f9721a432d755265d282db14cd4c873b8119`  
		Last Modified: Thu, 16 May 2019 02:09:04 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59982eb352ddd950213d7429e7b00fe5c830d4f5896ad7c7ba2ae76a371e494d`  
		Last Modified: Thu, 16 May 2019 02:09:10 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1ce0ed2d6abc261899a3a1b1f63f234f8b8a90dafebf9143b33c540c20945`  
		Last Modified: Thu, 16 May 2019 02:09:13 GMT  
		Size: 11.1 MB (11128201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:3bab83442ac4ae6dfdcc3f7935dfe5c5963c5642667cf0838086f1318f8a42ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56661281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3568341eb9491b44d90f4db0dfa68bceefe09e3aae383736f948c7a8f54c893d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:20:02 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Fri, 08 Mar 2019 07:20:05 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Fri, 08 Mar 2019 07:20:06 GMT
ENV OPENSSL_VERSION=1.1.1b
# Fri, 08 Mar 2019 07:20:08 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Fri, 08 Mar 2019 07:20:10 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 02:30:24 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 02:30:26 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 02:36:26 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 02:36:31 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 02:36:38 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 02:42:11 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 02:42:13 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 02:42:14 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 02:42:16 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 02:42:32 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 02:42:36 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 02:42:37 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 02:42:40 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 02:42:42 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 02:42:44 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 02:42:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 02:42:48 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 02:42:52 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 02:43:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 02:43:22 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 02:43:26 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ea431b81bf7e7926d631eb513ccf94a1700071217d591ff8218179a1e0dc50`  
		Last Modified: Fri, 08 Mar 2019 07:33:15 GMT  
		Size: 1.4 MB (1433716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35b250e89eac033b6a068786eaab4f0fae7cd0295f64cdbcf1fc11312da48a4`  
		Last Modified: Thu, 16 May 2019 02:44:00 GMT  
		Size: 32.1 MB (32076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad35bea012706ef0791b556a2c518cfa08560d0ebb25e93a02fea8d19c4b786`  
		Last Modified: Thu, 16 May 2019 02:43:52 GMT  
		Size: 1.5 KB (1488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89b32f236270660358906de9a7503fff97130a70edf2ec54974e36c10f0bc0c`  
		Last Modified: Thu, 16 May 2019 02:44:58 GMT  
		Size: 9.9 MB (9935165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86bdf8a8dc8723a69105c1ee608f6f3cdf4b81509546d88b305068d77aca847`  
		Last Modified: Thu, 16 May 2019 02:44:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ccb6bb36d6b1afbd9b9eadd5b415da26281193fd3719d1d0a01e4e8f07fdb3`  
		Last Modified: Thu, 16 May 2019 02:44:55 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e54d07e84b8a6f01c001920006d5d1dd786d581fb3e5e55fe24153cc9ccbc4`  
		Last Modified: Thu, 16 May 2019 02:45:15 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290fbf63b847f333936c47c02fca7d22a7a6c1eba954ea10f804e07813708c8`  
		Last Modified: Thu, 16 May 2019 02:45:19 GMT  
		Size: 11.0 MB (11015127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:47c27645c66d973753df9f490fe7381c69426a62567c2220e6e61897f93a1c1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57117622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4bc259087a40ddf9be4e5f7add35d2ff800a64b9834290bfeffbf01b4f5b22f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:00:10 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Fri, 08 Mar 2019 06:00:10 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Fri, 08 Mar 2019 06:00:10 GMT
ENV OPENSSL_VERSION=1.1.1b
# Fri, 08 Mar 2019 06:00:10 GMT
ENV OPENSSL_SOURCE_SHA256=5c557b023230413dfb0756f3137a13e6d726838ccd1430888ad15bfb2b43ea4b
# Fri, 08 Mar 2019 06:00:11 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 16 May 2019 01:17:52 GMT
ENV OTP_VERSION=21.3.8.1
# Thu, 16 May 2019 01:17:53 GMT
ENV OTP_SOURCE_SHA256=2aac8e6e16eae2cf7ebee19b07ea7b5931a85763c4ff20186dd37125177f737f
# Thu, 16 May 2019 01:27:54 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	dpkgArch="$(dpkg --print-architecture)"; dpkgArch="${dpkgArch##*-}"; 	case "$dpkgArch" in 		amd64 | i386 | ppc64el) hipe='--enable-hipe' ;; 		*) hipe='--disable-hipe' ;; 	esac; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		$hipe 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 16 May 2019 01:27:54 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 16 May 2019 01:27:56 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 16 May 2019 01:33:30 GMT
ENV RABBITMQ_VERSION=3.7.14
# Thu, 16 May 2019 01:33:31 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 16 May 2019 01:33:31 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 16 May 2019 01:33:32 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 16 May 2019 01:33:52 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 16 May 2019 01:33:55 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 16 May 2019 01:33:55 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 16 May 2019 01:33:56 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 16 May 2019 01:33:56 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 16 May 2019 01:33:57 GMT
COPY file:60db628224112457b594b043354612e74ba34decda2c62249d21ca491215c98a in /usr/local/bin/ 
# Thu, 16 May 2019 01:33:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 01:33:58 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 16 May 2019 01:33:58 GMT
CMD ["rabbitmq-server"]
# Thu, 16 May 2019 01:34:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 16 May 2019 01:34:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 16 May 2019 01:34:30 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccda7a11a4e3b90082f718e6209319f34cf060cb6ce809506c8441295d00786`  
		Last Modified: Fri, 08 Mar 2019 06:06:03 GMT  
		Size: 1.5 MB (1461544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197c0b374b40e421bd2eb042bb1756e043e902e05ae3900f08941e869f326a62`  
		Last Modified: Thu, 16 May 2019 01:36:08 GMT  
		Size: 32.3 MB (32283258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6beba1d74d30c2c5ac57b3b635ba5612b3b798ead9e08681cbf6e1ab031011`  
		Last Modified: Thu, 16 May 2019 01:35:57 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4107ca74bb35b3b1213881c3ad5b6cf11be76410e4e406733832899b4ff5fdfd`  
		Last Modified: Thu, 16 May 2019 01:37:50 GMT  
		Size: 9.9 MB (9934845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4450056d4be9cf17d34cd51c97455ecd5a97088e19a19886ec9604b946cc4b49`  
		Last Modified: Thu, 16 May 2019 01:37:49 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227bed34e7530cbc816233785bbca509288698b4c55d0c99697ff3ff541e1074`  
		Last Modified: Thu, 16 May 2019 01:37:49 GMT  
		Size: 4.4 KB (4423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57d7431d016dc19affc6b6c81be8f7503c3192aaa7f6c3979a6ff24be0befcc`  
		Last Modified: Thu, 16 May 2019 01:38:00 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa0afaaba4d8209e85acd5e3ac4f0c8efbe3af9d7f267d5ba9a5c10cf6bde8f`  
		Last Modified: Thu, 16 May 2019 01:38:05 GMT  
		Size: 11.1 MB (11124174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
