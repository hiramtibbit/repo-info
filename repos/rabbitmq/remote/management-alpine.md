## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:b5e32c8a8c567df7f56acb975841992ef8ac49b1f2499230f0227bc2d8deae6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:bbb11fb59e6743100669314577d029e1d3e7dcfc5e9cb4f320232cef236752e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.2 MB (60228427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97eef04f4ffcf7e0aba670a22a8d7c3a6e311fd8865697e9a4947ce3b3d7b77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Sat, 09 Feb 2019 01:49:16 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Sat, 09 Feb 2019 01:49:16 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Sat, 09 Feb 2019 01:49:17 GMT
ENV OPENSSL_VERSION=1.1.1a
# Sat, 09 Feb 2019 01:49:17 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Sat, 09 Feb 2019 01:49:17 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Thu, 21 Feb 2019 22:40:09 GMT
ENV OTP_VERSION=21.2.6
# Thu, 21 Feb 2019 22:40:09 GMT
ENV OTP_SOURCE_SHA256=aa0b95031e7c01af8a7042a00974ab16ed8fec305a68d7dbaa4185e5d58ef4d5
# Thu, 21 Feb 2019 22:52:32 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Thu, 21 Feb 2019 22:52:33 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Thu, 21 Feb 2019 22:52:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Thu, 21 Feb 2019 22:54:17 GMT
ENV RABBITMQ_VERSION=3.7.12
# Thu, 21 Feb 2019 22:54:17 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Feb 2019 22:54:18 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 21 Feb 2019 22:54:18 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 21 Feb 2019 22:54:30 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Thu, 21 Feb 2019 22:54:31 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Thu, 21 Feb 2019 22:54:31 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Feb 2019 22:54:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Feb 2019 22:54:32 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Thu, 21 Feb 2019 22:54:32 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Thu, 21 Feb 2019 22:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:54:32 GMT
EXPOSE 25672 4369 5671 5672
# Thu, 21 Feb 2019 22:54:33 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Feb 2019 22:54:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Feb 2019 22:54:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Feb 2019 22:54:45 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edce78f67f135a8c4699c92200a3c5bf13346325ea9f601e4b0c7def00e37b8a`  
		Last Modified: Sat, 09 Feb 2019 02:06:08 GMT  
		Size: 1.4 MB (1402832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791012a4f931788229d34dcec3055c9df905a68d385b7da2a8169227b005e62c`  
		Last Modified: Thu, 21 Feb 2019 22:55:22 GMT  
		Size: 35.7 MB (35714337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f955e55317b0f1ba6f6cbaf776a2d67c05ccfa43fccd24fd5339aa9422d0945`  
		Last Modified: Thu, 21 Feb 2019 22:55:16 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e99e50dd6bd9abdae0a8c8dc93cbb6b6c49d7ed8650b88bc35a3fde5930e830`  
		Last Modified: Thu, 21 Feb 2019 22:55:50 GMT  
		Size: 9.9 MB (9888861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f325188cbff3e37a24011646f3d183109c06e6c79b8ed9f65baa3bef27d0b1b3`  
		Last Modified: Thu, 21 Feb 2019 22:55:49 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a8408f98494abff27ae1595d338eb54a00216799659e2a7dd363fb14e3d0b2`  
		Last Modified: Thu, 21 Feb 2019 22:55:49 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199cb806434eec3f84afa97c87811cecdc1dfb9df8976acbf1ae2f15eb480851`  
		Last Modified: Thu, 21 Feb 2019 22:55:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4076f2a8d6a411645ce9801f4013add5a35aa09a2b0f164ca60778466bdd8129`  
		Last Modified: Thu, 21 Feb 2019 22:55:57 GMT  
		Size: 11.0 MB (11009237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e110f26a6aca54aaae1ff237d9bf819ce33fc9778eba96115f4288674dbd0889
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56060807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5e31638b12f629c80a3da76c86364cd51879e3313d92b6e0ba23dcc030b1bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Sat, 09 Feb 2019 11:03:47 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Sat, 09 Feb 2019 11:03:48 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Sat, 09 Feb 2019 11:03:49 GMT
ENV OPENSSL_VERSION=1.1.1a
# Sat, 09 Feb 2019 11:03:50 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Sat, 09 Feb 2019 11:03:50 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Fri, 22 Feb 2019 11:53:49 GMT
ENV OTP_VERSION=21.2.6
# Fri, 22 Feb 2019 11:53:50 GMT
ENV OTP_SOURCE_SHA256=aa0b95031e7c01af8a7042a00974ab16ed8fec305a68d7dbaa4185e5d58ef4d5
# Fri, 22 Feb 2019 12:06:50 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Fri, 22 Feb 2019 12:06:51 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 22 Feb 2019 12:06:53 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Fri, 22 Feb 2019 12:50:55 GMT
ENV RABBITMQ_VERSION=3.7.12
# Fri, 22 Feb 2019 12:50:56 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Feb 2019 12:50:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 22 Feb 2019 12:50:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 22 Feb 2019 12:51:11 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Fri, 22 Feb 2019 12:51:13 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Fri, 22 Feb 2019 12:51:14 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Feb 2019 12:51:14 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Feb 2019 12:51:15 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 22 Feb 2019 12:51:16 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:51:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:51:17 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 22 Feb 2019 12:51:18 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Feb 2019 12:51:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Feb 2019 12:51:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Feb 2019 12:51:35 GMT
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
	-	`sha256:053c9d2b9f04dcb338ce19d874b7c351970f66ebb0b06da3be7bfd42f8f23735`  
		Last Modified: Sat, 09 Feb 2019 12:04:43 GMT  
		Size: 1.3 MB (1343308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f9c3a9aa30fa9394f4edf6b3430c6a52c531c127e7bcc2ac677529c906f643`  
		Last Modified: Fri, 22 Feb 2019 12:52:03 GMT  
		Size: 31.9 MB (31883485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af4a42d52158ef164417878931e213016b1eab4cfe4a4f812949197696a12bd`  
		Last Modified: Fri, 22 Feb 2019 12:51:53 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79cac8f9ec7ab5c1a5c97bc782493732fb58ad00c15fca12f3c4b357b491769`  
		Last Modified: Fri, 22 Feb 2019 12:52:27 GMT  
		Size: 9.9 MB (9888395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d948e1108a1ad65100e5bdd963983570643d4bd7c2eaba4a7f896becca33d4d8`  
		Last Modified: Fri, 22 Feb 2019 12:52:25 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aed4bf8d1a1b9637093a9178d3b9c91cc1ee542a19af37db67ed58fedb45b69`  
		Last Modified: Fri, 22 Feb 2019 12:52:25 GMT  
		Size: 4.4 KB (4424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649fccd46463693818e02d582628d3b866a01a0108edc6afdbfabeb30f59ad0b`  
		Last Modified: Fri, 22 Feb 2019 12:52:39 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c5204f0d07718cf30c6b8da8a299e121973d236273f062f334451f40ca3ce0`  
		Last Modified: Fri, 22 Feb 2019 12:52:44 GMT  
		Size: 10.8 MB (10839474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:ccd8ea242fbfa7f7e28517d7b8d3f35f21b0fba20c1a7621962e285d897c9bb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.5 MB (56524964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2d6e85768040bc8f016bddc398b24226262c0b82535a0aed7c100b26901d57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Sat, 09 Feb 2019 09:59:27 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Sat, 09 Feb 2019 09:59:30 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Sat, 09 Feb 2019 09:59:32 GMT
ENV OPENSSL_VERSION=1.1.1a
# Sat, 09 Feb 2019 09:59:35 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Sat, 09 Feb 2019 09:59:39 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Fri, 22 Feb 2019 10:42:58 GMT
ENV OTP_VERSION=21.2.6
# Fri, 22 Feb 2019 10:43:03 GMT
ENV OTP_SOURCE_SHA256=aa0b95031e7c01af8a7042a00974ab16ed8fec305a68d7dbaa4185e5d58ef4d5
# Fri, 22 Feb 2019 10:49:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Fri, 22 Feb 2019 10:49:23 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 22 Feb 2019 10:49:29 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Fri, 22 Feb 2019 10:52:46 GMT
ENV RABBITMQ_VERSION=3.7.12
# Fri, 22 Feb 2019 10:52:53 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Feb 2019 10:52:58 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 22 Feb 2019 10:53:02 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 22 Feb 2019 10:53:23 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Fri, 22 Feb 2019 10:53:35 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Fri, 22 Feb 2019 10:53:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Feb 2019 10:53:52 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Feb 2019 10:54:00 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 22 Feb 2019 10:54:02 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Fri, 22 Feb 2019 10:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 10:54:10 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 22 Feb 2019 10:54:14 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Feb 2019 10:54:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Feb 2019 10:54:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Feb 2019 10:54:46 GMT
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
	-	`sha256:4a13c67f42909bb1c51a29a1cf3a1b60663addc9b53c1e0708b770f7868076d3`  
		Last Modified: Sat, 09 Feb 2019 10:10:00 GMT  
		Size: 1.4 MB (1433698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07335491a716e73f69c3f9c5233630d4a663774bfa91ec47bec27e63cae8133c`  
		Last Modified: Fri, 22 Feb 2019 10:55:13 GMT  
		Size: 32.0 MB (31986233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688d68e2750231949c8d33ee764fdbbdc1f26708c9e9c32b6eb54137bdb0e566`  
		Last Modified: Fri, 22 Feb 2019 10:55:07 GMT  
		Size: 1.5 KB (1483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1835813e16807d27f761e6ed6b17eeb3fce09382e6c82b88fd09e7807d64e8ce`  
		Last Modified: Fri, 22 Feb 2019 10:55:40 GMT  
		Size: 9.9 MB (9888924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9009128dfcc61b0c4c4d1f24ccc0db352df878fd6658cf7947c4d1390582f2b3`  
		Last Modified: Fri, 22 Feb 2019 10:55:38 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1003b2112353cc1b2fc3d5217a781853cf5dc937d0eb1781ef048bc34017120`  
		Last Modified: Fri, 22 Feb 2019 10:55:38 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39cb06b346520b34915f3958dfce8f45682d7fc9009dcbf53a3a71b39a91edb`  
		Last Modified: Fri, 22 Feb 2019 10:56:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993734a88aa1481bd60caca940e53786269cdde4c1ec0b936f3b483a120489bd`  
		Last Modified: Fri, 22 Feb 2019 10:56:13 GMT  
		Size: 11.0 MB (11014960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d7a4af19d714d55d47e1da19addc8630741bde3b0de8610c4239fa1db9c342cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56982947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8c676cc492246bc0af81c150dbb0ef9fe4a6069958cc2c206cbe607aa2666b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Sat, 09 Feb 2019 13:16:00 GMT
RUN apk add --no-cache 		'su-exec>=0.2' 		bash 		procps
# Sat, 09 Feb 2019 13:16:01 GMT
ARG PGP_KEYSERVER=ha.pool.sks-keyservers.net
# Sat, 09 Feb 2019 13:16:01 GMT
ENV OPENSSL_VERSION=1.1.1a
# Sat, 09 Feb 2019 13:16:01 GMT
ENV OPENSSL_SOURCE_SHA256=fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
# Sat, 09 Feb 2019 13:16:01 GMT
ENV OPENSSL_PGP_KEY_ID=0x8657ABB260F056B1E5190839D9C4D26D0E604491
# Fri, 22 Feb 2019 12:51:37 GMT
ENV OTP_VERSION=21.2.6
# Fri, 22 Feb 2019 12:51:37 GMT
ENV OTP_SOURCE_SHA256=aa0b95031e7c01af8a7042a00974ab16ed8fec305a68d7dbaa4185e5d58ef4d5
# Fri, 22 Feb 2019 12:56:19 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		autoconf 		ca-certificates 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		linux-headers 		m4 		make 		ncurses-dev 		wget 	; 		OPENSSL_SOURCE_URL="https://www.openssl.org/source/openssl-$OPENSSL_VERSION.tar.gz"; 	OPENSSL_PATH="/usr/local/src/openssl-$OPENSSL_VERSION"; 	OPENSSL_CONFIG_DIR=/usr/local/etc/ssl; 		mkdir /usr/local/src; 		wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$OPENSSL_PATH.tar.gz" "$OPENSSL_SOURCE_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$OPENSSL_PGP_KEY_ID"; 	gpg --batch --verify "$OPENSSL_PATH.tar.gz.asc" "$OPENSSL_PATH.tar.gz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	echo "$OPENSSL_SOURCE_SHA256 *$OPENSSL_PATH.tar.gz" | sha256sum -c -; 	mkdir -p "$OPENSSL_PATH"; 	tar --extract --file "$OPENSSL_PATH.tar.gz" --directory "$OPENSSL_PATH" --strip-components 1; 		cd "$OPENSSL_PATH"; 	MACHINE="$(dpkg-architecture --query DEB_BUILD_GNU_CPU)" 	RELEASE="4.x.y-z" 	SYSTEM='Linux' 	BUILD='???' 	./config --openssldir="$OPENSSL_CONFIG_DIR"; 	make -j "$(getconf _NPROCESSORS_ONLN)"; 	make install_sw install_ssldirs; 	cd ..; 	rm -rf "$OPENSSL_PATH"*; 	rmdir "$OPENSSL_CONFIG_DIR/certs" "$OPENSSL_CONFIG_DIR/private"; 	ln -sf /etc/ssl/certs /etc/ssl/private "$OPENSSL_CONFIG_DIR"; 	openssl version; 		OTP_SOURCE_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz"; 	OTP_PATH="/usr/local/src/otp-$OTP_VERSION"; 		mkdir -p "$OTP_PATH"; 	wget --progress dot:giga --output-document "$OTP_PATH.tar.gz" "$OTP_SOURCE_URL"; 	echo "$OTP_SOURCE_SHA256 *$OTP_PATH.tar.gz" | sha256sum -c -; 	tar --extract --file "$OTP_PATH.tar.gz" --directory "$OTP_PATH" --strip-components 1; 		cd "$OTP_PATH"; 	export ERL_TOP="$OTP_PATH"; 	./otp_build autoconf; 	CFLAGS="$(dpkg-buildflags --get CFLAGS)"; export CFLAGS; 	hostArch="$(dpkg-architecture --query DEB_HOST_GNU_TYPE)"; 	buildArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--host="$hostArch" 		--build="$buildArch" 		--disable-dynamic-ssl-lib 		--disable-sctp 		--disable-silent-rules 		--enable-clock-gettime 		--enable-hipe 		--enable-hybrid-heap 		--enable-kernel-poll 		--enable-shared-zlib 		--enable-smp-support 		--enable-threads 		--with-microstate-accounting=extra 		--without-common_test 		--without-debugger 		--without-dialyzer 		--without-diameter 		--without-edoc 		--without-erl_docgen 		--without-erl_interface 		--without-et 		--without-eunit 		--without-ftp 		--without-jinterface 		--without-megaco 		--without-observer 		--without-odbc 		--without-reltool 		--without-ssh 		--without-tftp 		--without-wx 	; 	make -j "$(getconf _NPROCESSORS_ONLN)" GEN_OPT_FLGS="-O2 -fno-strict-aliasing"; 	make install; 	cd ..; 	rm -rf "$OTP_PATH"* /usr/local/lib/erlang/lib/*/src; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .otp-run-deps $runDeps; 	apk del --no-network .build-deps; 		openssl version; 	erl -noshell -eval 'io:format("~p~n~n~p~n~n", [crypto:supports(), ssl:versions()]), init:stop().'
# Fri, 22 Feb 2019 12:56:19 GMT
ENV RABBITMQ_DATA_DIR=/var/lib/rabbitmq
# Fri, 22 Feb 2019 12:56:20 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 	addgroup -g 101 -S rabbitmq; 	adduser -u 100 -S -h "$RABBITMQ_DATA_DIR" -G rabbitmq rabbitmq; 	mkdir -p "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chown -fR rabbitmq:rabbitmq "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	chmod 777 "$RABBITMQ_DATA_DIR" /etc/rabbitmq /tmp/rabbitmq-ssl /var/log/rabbitmq; 	ln -sf "$RABBITMQ_DATA_DIR/.erlang.cookie" /root/.erlang.cookie
# Fri, 22 Feb 2019 12:57:26 GMT
ENV RABBITMQ_VERSION=3.7.12
# Fri, 22 Feb 2019 12:57:26 GMT
ENV RABBITMQ_PGP_KEY_ID=0x0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Feb 2019 12:57:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 22 Feb 2019 12:57:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 22 Feb 2019 12:57:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		wget 		xz 	; 		RABBITMQ_SOURCE_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v$RABBITMQ_VERSION/rabbitmq-server-generic-unix-$RABBITMQ_VERSION.tar.xz"; 	RABBITMQ_PATH="/usr/local/src/rabbitmq-$RABBITMQ_VERSION"; 		wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_SOURCE_URL.asc"; 	wget --progress dot:giga --output-document "$RABBITMQ_PATH.tar.xz" "$RABBITMQ_SOURCE_URL"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver "$PGP_KEYSERVER" --recv-keys "$RABBITMQ_PGP_KEY_ID"; 	gpg --batch --verify "$RABBITMQ_PATH.tar.xz.asc" "$RABBITMQ_PATH.tar.xz"; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar --extract --file "$RABBITMQ_PATH.tar.xz" --directory "$RABBITMQ_HOME" --strip-components 1; 	rm -rf "$RABBITMQ_PATH"*; 	grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -i 's/^SYS_PREFIX=.*$/SYS_PREFIX=/' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	chown -R rabbitmq:rabbitmq "$RABBITMQ_HOME"; 		apk del .build-deps; 		[ ! -e "$RABBITMQ_DATA_DIR/.erlang.cookie" ]; 	su-exec rabbitmq rabbitmqctl help; 	su-exec rabbitmq rabbitmqctl list_ciphers; 	su-exec rabbitmq rabbitmq-plugins list; 	rm "$RABBITMQ_DATA_DIR/.erlang.cookie"
# Fri, 22 Feb 2019 12:57:34 GMT
# ARGS: PGP_KEYSERVER=ha.pool.sks-keyservers.net
RUN ln -sf /opt/rabbitmq/plugins /plugins
# Fri, 22 Feb 2019 12:57:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Feb 2019 12:57:35 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Feb 2019 12:57:35 GMT
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
# Fri, 22 Feb 2019 12:57:35 GMT
COPY file:1a6e998f951d64f2b99d0eaa6c654e682aa707002a3ea6bd747ed77244d34a53 in /usr/local/bin/ 
# Fri, 22 Feb 2019 12:57:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Feb 2019 12:57:36 GMT
EXPOSE 25672 4369 5671 5672
# Fri, 22 Feb 2019 12:57:36 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Feb 2019 12:57:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Feb 2019 12:57:44 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Feb 2019 12:57:45 GMT
EXPOSE 15671 15672
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff23172c0dc0866fc85959dd7e3122a624170229066ea9bfe8901b5225a52bdc`  
		Last Modified: Sat, 09 Feb 2019 13:23:29 GMT  
		Size: 1.5 MB (1461541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5726d4c29845569526691279afa56d541ed12c4fd831fcaf692a12b4119e514`  
		Last Modified: Fri, 22 Feb 2019 12:58:22 GMT  
		Size: 32.2 MB (32194708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba57696324550f6e20c894ed4cd772c3db3e07248b4ab83b976564b87122e1e`  
		Last Modified: Fri, 22 Feb 2019 12:58:17 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec2174bad538959d2724a78f031ee673593eec8441d923ff5e7514553511df7`  
		Last Modified: Fri, 22 Feb 2019 12:58:51 GMT  
		Size: 9.9 MB (9888427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219699dcdc66154b826be66b7a78c16d8d5af498ebd3a93b00b94661564df4ac`  
		Last Modified: Fri, 22 Feb 2019 12:58:50 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c12b746a25c6680eb118b1e1e433e69451dee698feaa3ef96ec45961d6cd4b3`  
		Last Modified: Fri, 22 Feb 2019 12:58:50 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36690b0db8d6266251f4400d84e749d15c17da03214e82b6c678ddd91d86e829`  
		Last Modified: Fri, 22 Feb 2019 12:58:58 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fb8381125085997e0d2e1a23fcdcb3e79eaf725c1f66fe8e65411dce851603`  
		Last Modified: Fri, 22 Feb 2019 12:59:00 GMT  
		Size: 11.1 MB (11124117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
